const std = @import("std");
const common = @import("./_common.zig");
const extras = @import("extras");

pub usingnamespace common.Main(struct {
    pub const source_file = "CompositionExclusions";

    pub const dest_file = "src/composition_exclusions.zig";

    pub const dest_header =
        \\pub const data = [_]u21{
        \\
    ;

    pub const dest_footer =
        \\};
        \\
    ;

    pub fn exec(alloc: std.mem.Allocator, line: []const u8, writer: anytype) !void {
        _ = alloc;
        var it = std.mem.splitScalar(u8, line, ' ');
        try writer.print("    0x{s},\n", .{it.next().?});
    }
});
