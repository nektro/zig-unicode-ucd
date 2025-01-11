const std = @import("std");
const ucd = @import("unicode-ucd");

test {
    _ = &ucd.arabic_shaping.data;
    _ = &ucd.bidi_brackets.data;
    _ = &ucd.bidi_mirroring.data;
    _ = &ucd.blocks.data;
    _ = &ucd.cjk_radicals.data;
    _ = &ucd.case_folding.data;
    _ = &ucd.composition_exclusions.data;
    _ = &ucd.derived_age.data;
    _ = &ucd.derived_core_properties.data;
    _ = &ucd.east_asian_width.data;
    _ = &ucd.emoji_sources.data;
    _ = &ucd.equivalent_unified_ideograph.data;
    _ = &ucd.hangul_syllable_type.data;
    _ = &ucd.indic_positional_category.data;
    _ = &ucd.indic_syllabic_category.data;
    _ = &ucd.jamo.data;
    _ = &ucd.line_break.data;
    _ = &ucd.name_aliases.data;
    _ = &ucd.named_sequences.data;
    _ = &ucd.named_sequences_prov.data;
    _ = &ucd.prop_list.data;
    _ = &ucd.scripts.data;
    _ = &ucd.vertical_orientation.data;
    _ = &ucd.emoji.data;
    _ = &ucd.script_extensions.data;
    _ = &ucd.property_aliases.data;
    _ = &ucd.property_value_aliases.data;
    _ = &ucd.unicode_data.data;
    _ = &ucd.special_casing.data;
}
