const std = @import("std");

const files = &[_]type{
    @import("scripts/blocks.zig"),
    @import("./scripts/arabic_shaping.zig"),
};

pub fn main() !void {
    inline for (files) |f| {
        try f.default.do();
    }
}
