const std = @import("std");

const files = &[_]type{
    @import("./scripts/blocks.zig"),
    @import("./scripts/arabic_shaping.zig"),
    @import("./scripts/bidi_brackets.zig"),
};

pub fn main() !void {
    inline for (files) |f| {
        try f.default.do();
    }
}
