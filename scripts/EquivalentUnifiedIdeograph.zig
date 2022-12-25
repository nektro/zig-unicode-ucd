const std = @import("std");
const common = @import("./_common.zig");

pub usingnamespace common.Main(struct {
    pub const source_file = "EquivalentUnifiedIdeograph";

    pub const dest_file = "src/equivalent_unified_ideograph.zig";

    pub const dest_header =
        \\pub const data = [_][2]u21{
        \\
    ;

    pub const dest_footer =
        \\};
        \\
    ;

    pub fn exec(alloc: std.mem.Allocator, line: []const u8, writer: anytype) !void {
        _ = alloc;
        var it = std.mem.tokenize(u8, line, "; ");

        const first = it.next().?;
        const next = it.next().?;

        if (std.mem.indexOf(u8, first, "..")) |index| {
            const start = try std.fmt.parseInt(u21, first[0..index], 16);
            const end = try std.fmt.parseInt(u21, first[index + 2 ..], 16);
            var i = start;
            while (i <= end) : (i += 1) {
                try writer.print("    .{{ 0x{X}, 0x{s} }},\n", .{ i, next });
            }
        } else {
            try writer.print("    .{{ 0x{s}, 0x{s} }},\n", .{ first, next });
        }
    }
});
