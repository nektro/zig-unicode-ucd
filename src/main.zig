const std = @import("std");

const ucd = @import("unicode-ucd");

pub fn main() !void {
    std.log.info("All your codebase are belong to us.", .{});

    const data = .{
        ucd.blocks.blocks,
        ucd.arabic_shaping.arabic_shaping,
    };

    inline for (data) |b| {
        _ = b;
    }
}
