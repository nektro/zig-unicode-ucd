const std = @import("std");
const zfetch = @import("zfetch");
const fmtValueLiteral = @import("fmt-valueliteral").fmtValueLiteral;
const ansi = @import("ansi");

pub const version = "16.0.0";

pub fn Main(comptime T: type) type {
    comptime std.debug.assert(@hasDecl(T, "source_file"));
    comptime std.debug.assert(@hasDecl(T, "dest_file"));
    comptime std.debug.assert(@hasDecl(T, "dest_header"));
    comptime std.debug.assert(@hasDecl(T, "dest_footer"));
    comptime std.debug.assert(@hasDecl(T, "exec"));
    return struct {
        pub fn do() !void {
            var gpa = std.heap.GeneralPurposeAllocator(.{}){};
            const alloc = gpa.allocator();
            defer _ = gpa.deinit();

            const max_size = std.math.maxInt(usize);
            const source_url = "https://unicode.org/Public/" ++ version ++ "/ucd/" ++ T.source_file ++ ".txt";

            //
            std.log.info("{s}", .{T.dest_file});

            const file = try std.fs.cwd().createFile(T.dest_file, .{});
            defer file.close();
            var bufw = std.io.bufferedWriter(file.writer());
            const w = bufw.writer();

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

            const req = try zfetch.Request.init(alloc, source_url, null);
            defer req.deinit();
            try req.do(.GET, null, null);
            const r = req.reader();

            var line_num: usize = 1;
            std.debug.print("0", .{});

            var arena = std.heap.ArenaAllocator.init(alloc);
            defer arena.deinit();
            while (true) {
                const line = r.readUntilDelimiterAlloc(alloc, '\n', max_size) catch |err| switch (err) {
                    error.EndOfStream => break,
                    else => |e| return e,
                };
                defer alloc.free(line);

                if (line.len == 0) {
                    continue;
                }
                if (line[0] == '#') {
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
            try bufw.flush();
        }
    };
}

pub fn nullify(input: ?[]const u8) ?[]const u8 {
    if (input == null) return null;
    if (input.?.len == 0) return null;
    return input;
}

pub fn RangeEnum(comptime prop: []const u8) type {
    return struct {
        pub fn exec(alloc: std.mem.Allocator, line: []const u8, writer: anytype) !void {
            _ = alloc;
            var it = std.mem.tokenize(u8, line, "; ");

            const first = it.next().?;
            const next = std.mem.trimRight(u8, it.next().?, "#");

            if (std.mem.indexOf(u8, first, "..")) |index| {
                const start = first[0..index];
                const end = first[index + 2 ..];
                try writer.print("    .{{ .from = 0x{s}, .to = 0x{s}, .{s} = .{s} }},\n", .{ start, end, prop, next });
            } else {
                try writer.print("    .{{ .from = 0x{s}, .to = 0x{s}, .{s} = .{s} }},\n", .{ first, first, prop, next });
            }
        }
    };
}

pub fn printCodepoint(writer: anytype, input: []const u8) !void {
    try writer.print(" 0x{s},", .{input});
}

pub fn printSeq(writer: anytype, input: []const u8) !void {
    var jt = std.mem.tokenize(u8, input, " ");
    try writer.writeAll(" &.{");
    while (jt.next()) |jtem| {
        try printCodepoint(writer, jtem);
    }
    try writer.writeAll(" },");
}
