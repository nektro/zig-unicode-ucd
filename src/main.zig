const std = @import("std");

const ucd = @import("unicode-ucd");

pub fn main() !void {
    std.log.info("All your codebase are belong to us.", .{});

    const data = .{
        ucd.arabic_shaping,
        ucd.bidi_brackets,
        ucd.bidi_mirroring,
        ucd.blocks,
        ucd.cjk_radicals,
    };

    inline for (data) |b| {
        _ = b.data;
    }
}
