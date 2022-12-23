const std = @import("std");
const common = @import("./_common.zig");

pub usingnamespace common.Main(struct {
    pub const source_file = "VerticalOrientation";

    pub const dest_file = "src/vertical_orientation.zig";

    pub const dest_header =
        \\pub const VerticalOrientation = struct {
        \\    from: u21,
        \\    to: u21,
        \\    orientation: enum {
        \\        R,
        \\        U,
        \\        Tr,
        \\        Tu,
        \\    },
        \\};
        \\
        \\pub const data = [_]VerticalOrientation{
        \\
    ;

    pub const dest_footer =
        \\};
        \\
    ;

    pub fn exec(alloc: std.mem.Allocator, line: []const u8, writer: anytype) !bool {
        _ = alloc;
        var it = std.mem.tokenize(u8, line, "; ");

        const first = it.next().?;
        const next = it.next().?;

        if (std.mem.indexOf(u8, first, "..")) |index| {
            const start = first[0..index];
            const end = first[index + 2 ..];
            try writer.print("    .{{ .from = 0x{s}, .to = 0x{s}, .orientation = .{s} }},\n", .{ start, end, next });
        } else {
            try writer.print("    .{{ .from = 0x{s}, .to = 0x{s}, .orientation = .{s} }},\n", .{ first, first, next });
        }

        return true;
    }
});
