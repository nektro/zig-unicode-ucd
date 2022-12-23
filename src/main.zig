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
        ucd.case_folding,
        ucd.composition_exclusions,
        ucd.derived_age,
        ucd.derived_core_properties,
        ucd.east_asian_width,
        ucd.emoji_sources,
        ucd.equivalent_unified_ideograph,
        ucd.hangul_syllable_type,
        ucd.indic_positional_category,
        ucd.indic_syllabic_category,
        ucd.jamo,
        ucd.line_break,
        ucd.name_aliases,
        ucd.named_sequences,
        ucd.named_sequences_prov,
        ucd.prop_list,
        ucd.scripts,
    };

    inline for (data) |b| {
        _ = b.data;
    }
}
