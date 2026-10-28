const std = @import("std");
const fmtValueLiteral = @import("fmt-valueliteral").fmtValueLiteral;
const ansi = @import("ansi");
const nfs = @import("nfs");
const nio = @import("nio");

pub const version = "17.0.0";

pub fn Main(comptime T: type) fn (std.Io) anyerror!void {
    comptime std.debug.assert(@hasDecl(T, "source_file"));
    comptime std.debug.assert(@hasDecl(T, "dest_file"));
    comptime std.debug.assert(@hasDecl(T, "dest_header"));
    comptime std.debug.assert(@hasDecl(T, "dest_footer"));
    comptime std.debug.assert(@hasDecl(T, "exec"));
    const S = struct {
        pub fn do(io: std.Io) !void {
            var gpa = std.heap.DebugAllocator(.{}){};
            const alloc = gpa.allocator();
            defer _ = gpa.deinit();

            const source_url = "https://unicode.org/Public/" ++ version ++ "/ucd/" ++ T.source_file ++ ".txt";

            //
            std.log.info("{s}", .{T.dest_file});

            const file = try nfs.cwd().createFile(T.dest_file, .{});
            defer file.close();
            var bufw = nio.BufferedWriter(4096, nfs.File).init(file);
            const w = &bufw;

            try w.writeAll(
                \\// This file is part of the Unicode Character Database
                \\// For documentation, see http://www.unicode.org/reports/tr44/
                \\//
                \\
            );
            try w.print(
                \\// Based on the source file: {s}
                \\//
                \\// zig fmt: off
                \\
                \\
            , .{source_url});
            try w.writeAll(T.dest_header);

            var buf: [4096]u8 = @splat(0);
            var http_client: std.http.Client = .{ .allocator = alloc, .io = io };
            defer http_client.deinit();

            var req = try http_client.request(.GET, try std.Uri.parse(source_url), .{
                .headers = .{ .accept_encoding = .{ .override = "identity" } },
                .redirect_behavior = .not_allowed,
            });
            defer req.deinit();
            try req.sendBodiless();
            var resp = try req.receiveHead(&.{});
            const body_content = try resp.reader(&buf).allocRemaining(alloc, .limited(1024 * 1024 * 5));
            defer alloc.free(body_content);

            var line_num: usize = 1;
            std.debug.print("0", .{});
            var iter = std.mem.splitScalar(u8, body_content, '\n');

            var arena = std.heap.ArenaAllocator.init(alloc);
            defer arena.deinit();
            while (iter.next()) |line_raw| {
                var real = std.mem.splitScalar(u8, line_raw, '#');
                const line = real.first();

                if (line.len == 0) {
                    continue;
                }

                try T.exec(arena.allocator(), line, w);

                std.debug.print("{s}", .{ansi.csi.CursorHorzAbs(1)});
                std.debug.print("{s}", .{ansi.csi.EraseInLine(0)});
                std.debug.print("{d}", .{line_num});
                line_num += 1;
            }
            std.debug.print("\n", .{});
            try w.writeAll(T.dest_footer);
            if (@hasDecl(T, "after")) try T.after(arena.allocator(), w);
            try bufw.flush();
        }
    };
    return S.do;
}

pub fn nullify(input: ?[]const u8) ?[]const u8 {
    if (input == null) return null;
    if (input.?.len == 0) return null;
    return input;
}

pub fn RangeEnum(comptime prop: []const u8) fn (std.mem.Allocator, []const u8, anytype) anyerror!void {
    const S = struct {
        pub fn exec(alloc: std.mem.Allocator, line: []const u8, writer: anytype) !void {
            _ = alloc;
            var it = std.mem.tokenizeAny(u8, line, "; ");

            const first = it.next().?;
            const next = std.mem.trimEnd(u8, it.next().?, "#");

            if (std.mem.indexOf(u8, first, "..")) |index| {
                const start = first[0..index];
                const end = first[index + 2 ..];
                try writer.print("    .{{ .from = 0x{s}, .to = 0x{s}, .{s} = .{s} }},\n", .{ start, end, prop, next });
            } else {
                try writer.print("    .{{ .from = 0x{s}, .to = 0x{s}, .{s} = .{s} }},\n", .{ first, first, prop, next });
            }
        }
    };
    return S.exec;
}

pub fn printCodepoint(writer: anytype, input: []const u8) !void {
    try writer.print(" 0x{s},", .{input});
}

pub fn printSeq(writer: anytype, input: []const u8) !void {
    var jt = std.mem.tokenizeScalar(u8, input, ' ');
    try writer.writeAll(" &.{");
    while (jt.next()) |jtem| {
        try printCodepoint(writer, jtem);
    }
    try writer.writeAll(" },");
}
