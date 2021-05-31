const std = @import("std");

const ucd = @import("unicode-ucd");

pub fn main() !void {
    std.log.info("All your codebase are belong to us.", .{});

    for (ucd.blocks.blocks) |b| {
        std.debug.print("{}\n", .{b});
    }
}
