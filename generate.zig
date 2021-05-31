const std = @import("std");

const common = @import("scripts/_common.zig");

pub fn main() !void {
    try common.Main(struct {
        pub const source_url = "https://unicode.org/Public/UCD/latest/ucd/Blocks.txt";

        pub const dest_file = "src/blocks.zig";

        pub const dest_header =
            \\// This file is part of the Unicode Character Database
            \\// See http://www.unicode.org/reports/tr44/ for more information.
            \\//
            \\
            \\pub const Block = struct {
            \\    from: u21,
            \\    to: u21,
            \\    name: []const u8,
            \\};
            \\
            \\pub const blocks: []Block = &.{
            \\
        ;

        pub const dest_footer =
            \\};
            \\
        ;

        pub fn exec(alloc: *std.mem.Allocator, line: []const u8, writer: anytype) !bool {
            var it1 = std.mem.split(line, "; ");
            var it2 = std.mem.split(it1.next().?, "..");
            const from = it2.next().?;
            const to = it2.next().?;
            const name = it1.next().?;

            try writer.print("    .{{ 0x{s}, 0x{s}, \"{s}\" }},\n", .{ from, to, name });
            return true;
        }
    }).do();
}
