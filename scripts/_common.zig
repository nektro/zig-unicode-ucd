const std = @import("std");
const zfetch = @import("zfetch");
const fmtValueLiteral = @import("fmt-valueliteral").fmtValueLiteral;
const ansi = @import("ansi");

pub fn Main(comptime T: type) type {
    comptime std.debug.assert(@hasDecl(T, "source_url"));
    comptime std.debug.assert(@hasDecl(T, "dest_file"));
    comptime std.debug.assert(@hasDecl(T, "dest_header"));
    comptime std.debug.assert(@hasDecl(T, "dest_footer"));
    comptime std.debug.assert(@hasDecl(T, "exec"));
    return struct {
        pub fn do() !void {
            var gpa = std.heap.GeneralPurposeAllocator(.{}){};
            const alloc = &gpa.allocator;
            const max_size = std.math.maxInt(usize);

            //
            std.log.info("{s}", .{T.dest_file});

            const file = try std.fs.cwd().createFile(T.dest_file, .{});
            defer file.close();
            const w = file.writer();

            try w.writeAll(T.dest_header);

            const req = try zfetch.Request.init(alloc, T.source_url, null);
            defer req.deinit();
            try req.do(.GET, null, null);
            const r = req.reader();

            var line_num: usize = 1;
            std.debug.print("\n", .{});
            while (true) {
                const line = r.readUntilDelimiterAlloc(alloc, '\n', max_size) catch |e| if (e == error.EndOfStream) break else return e;
                if (line.len == 0) {
                    continue;
                }
                if (line[0] == '#') {
                    continue;
                }

                if (!(try T.exec(alloc, line, w))) {
                    break;
                }

                std.debug.print("{s}", .{comptime ansi.csi.CursorUp(1)});
                std.debug.print("{s}", .{comptime ansi.csi.EraseInLine(0)});
                std.debug.print("{d}\n", .{line_num});
                line_num += 1;
            }
            try w.writeAll(T.dest_footer);
        }
    };
}
