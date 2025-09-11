const std = @import("std");
const common = @import("./_common.zig");

pub usingnamespace common.Main(struct {
    pub const source_file = "IndicPositionalCategory";

    pub const dest_file = "src/indic_positional_category.zig";

    pub const dest_header =
        \\const ucd = @import("./lib.zig");
        \\
        \\pub const IndicPositionalCategory = struct {
        \\    code: u21,
        \\    category: ucd.IndicPositionalCategory,
        \\};
        \\
        \\pub const data = [_]IndicPositionalCategory{
        \\
    ;

    pub const dest_footer =
        \\};
        \\
    ;

    pub fn exec(alloc: std.mem.Allocator, line: []const u8, writer: anytype) !void {
        _ = alloc;
        var it = std.mem.tokenizeAny(u8, line, "; ");

        const first = it.next().?;
        const next = it.next().?;

        if (std.mem.indexOf(u8, first, "..")) |index| {
            const start = try std.fmt.parseInt(u21, first[0..index], 16);
            const end = try std.fmt.parseInt(u21, first[index + 2 ..], 16);
            var i = start;
            while (i <= end) : (i += 1) {
                try writer.print("    .{{ .code = 0x{X}, .category = .{s} }},\n", .{ i, next });
            }
        } else {
            try writer.print("    .{{ .code = 0x{s}, .category = .{s} }},\n", .{ first, next });
        }
    }
});
