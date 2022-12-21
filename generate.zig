const std = @import("std");

const files = [_]type{
    @import("./scripts/Blocks.zig"),
    @import("./scripts/ArabicShaping.zig"),
    @import("./scripts/BidiBrackets.zig"),
    @import("./scripts/BidiMirroring.zig"),
    @import("./scripts/CJKRadicals.zig"),
    @import("./scripts/CaseFolding.zig"),
    @import("./scripts/CompositionExclusions.zig"),
};

pub fn main() !void {
    inline for (files) |f| {
        try f.do();
    }
}
