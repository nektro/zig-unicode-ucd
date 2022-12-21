const std = @import("std");
const zfetch = @import("zfetch");
const fmtValueLiteral = @import("fmt-valueliteral").fmtValueLiteral;
const ansi = @import("ansi");

pub const version = "13.0.0";

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
            std.debug.print("\n", .{});

            var arena = std.heap.ArenaAllocator.init(alloc);
            defer arena.deinit();
            while (true) {
                const line = r.readUntilDelimiterAlloc(alloc, '\n', max_size) catch |e| if (e == error.EndOfStream) break else return e;
                defer alloc.free(line);

                if (line.len == 0) {
                    continue;
                }
                if (line[0] == '#') {
                    continue;
                }

                if (!(try T.exec(arena.allocator(), line, w))) {
                    break;
                }

                std.debug.print("{s}", .{ansi.csi.CursorUp(1)});
                std.debug.print("{s}", .{ansi.csi.EraseInLine(0)});
                std.debug.print("{d}\n", .{line_num});
                line_num += 1;
            }
            try w.writeAll(T.dest_footer);
            try bufw.flush();
        }
    };
}

pub fn stringToEnum(comptime T: type, str: []const u8) !void {
    if (std.meta.stringToEnum(T, str)) |_| {} else {
        std.log.warn("{s} is not part of the type {s}", .{ str, @typeName(T) });
    }
}
