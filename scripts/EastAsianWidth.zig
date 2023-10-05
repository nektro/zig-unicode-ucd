const std = @import("std");
const common = @import("./_common.zig");

pub usingnamespace common.Main(struct {
    pub const source_file = "EastAsianWidth";

    pub const dest_file = "src/east_asian_width.zig";

    pub const dest_header =
        \\const ucd = @import("./lib.zig");
        \\
        \\pub const EastAsianWidth = struct {
        \\    from: u21,
        \\    to: u21,
        \\    prop: ucd.EastAsianWidth,
        \\};
        \\
        \\pub const data = [_]EastAsianWidth{
        \\
    ;

    pub const dest_footer =
        \\};
        \\
    ;

    pub fn exec(alloc: std.mem.Allocator, line: []const u8, writer: anytype) !void {
        _ = alloc;
        var it = std.mem.tokenize(u8, line, "; ");

        {
            const range = it.next().?;
            if (std.mem.indexOf(u8, range, "..")) |index| {
                try writer.print("    .{{ .from = 0x{s}, .to = 0x{s},", .{ range[0..index], range[index + 2 ..] });
            } else {
                try writer.print("    .{{ .from = 0x{s}, .to = 0x{s},", .{ range, range });
            }
        }
        {
            const prop = it.next().?;
            try writer.print(" .prop = .{s} }},\n", .{prop});
        }
    }
});
