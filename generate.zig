const std = @import("std");

const files = [_]type{
    @import("./scripts/emoji.zig"),
    @import("./scripts/Blocks.zig"),
    @import("./scripts/ArabicShaping.zig"),
    @import("./scripts/BidiBrackets.zig"),
    @import("./scripts/BidiMirroring.zig"),
    @import("./scripts/CJKRadicals.zig"),
    @import("./scripts/CaseFolding.zig"),
    @import("./scripts/CompositionExclusions.zig"),
    @import("./scripts/DerivedAge.zig"),
    @import("./scripts/DerivedCoreProperties.zig"),
    @import("./scripts/EastAsianWidth.zig"),
    @import("./scripts/EmojiSources.zig"),
    @import("./scripts/EquivalentUnifiedIdeograph.zig"),
    @import("./scripts/HangulSyllableType.zig"),
    @import("./scripts/IndicPositionalCategory.zig"),
    @import("./scripts/IndicSyllabicCategory.zig"),
    @import("./scripts/Jamo.zig"),
    @import("./scripts/LineBreak.zig"),
    @import("./scripts/NameAliases.zig"),
    @import("./scripts/NamedSequences.zig"),
    @import("./scripts/NamedSequencesProv.zig"),
    @import("./scripts/PropList.zig"),
    @import("./scripts/Scripts.zig"),
    @import("./scripts/VerticalOrientation.zig"),
};

pub fn main() !void {
    inline for (files) |f| {
        try f.do();
    }
}
