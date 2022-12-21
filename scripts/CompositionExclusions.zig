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

    pub fn exec(alloc: std.mem.Allocator, line: []const u8, writer: anytype) !bool {
        _ = alloc;
        var it = std.mem.split(u8, line, " ");
        try writer.print("    0x{s}, // ", .{it.next().?});

        while (it.next()) |item| {
            if (item.len == 0) continue;
            if (std.mem.eql(u8, item, "#")) {
                try writer.writeAll(std.mem.trimLeft(u8, it.rest(), " "));
                try writer.writeAll("\n");
                break;
            }
        }
        return true;
    }
});
