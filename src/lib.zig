const std = @import("std");

pub const arabic_shaping = @import("./arabic_shaping.zig");
pub const bidi_brackets = @import("./bidi_brackets.zig");
pub const bidi_mirroring = @import("./bidi_mirroring.zig");
pub const blocks = @import("./blocks.zig");
pub const cjk_radicals = @import("./cjk_radicals.zig");
pub const case_folding = @import("./case_folding.zig");
pub const composition_exclusions = @import("./composition_exclusions.zig");
pub const derived_age = @import("./derived_age.zig");
pub const derived_core_properties = @import("./derived_core_properties.zig");
pub const derived_normalization_props = @import("./derived_normalization_props.zig");
pub const east_asian_width = @import("./east_asian_width.zig");
pub const emoji_sources = @import("./emoji_sources.zig");
pub const equivalent_unified_ideograph = @import("./equivalent_unified_ideograph.zig");
pub const hangul_syllable_type = @import("./hangul_syllable_type.zig");
// Index.txt                           // not likely very useful for us
pub const indic_positional_category = @import("./indic_positional_category.zig");
pub const indic_syllabic_category = @import("./indic_syllabic_category.zig");
pub const jamo = @import("./jamo.zig");
pub const line_break = @import("./line_break.zig");
pub const name_aliases = @import("./name_aliases.zig");
pub const named_sequences = @import("./named_sequences.zig");
pub const named_sequences_prov = @import("./named_sequences_prov.zig");
pub const prop_list = @import("./prop_list.zig");
pub const property_aliases = @import("./property_aliases.zig");
pub const property_value_aliases = @import("./property_value_aliases.zig");
pub const script_extensions = @import("./script_extensions.zig");
pub const scripts = @import("./scripts.zig");
pub const special_casing = @import("./special_casing.zig");
// StandardizedVariants.txt
// USourceData.txt
pub const unicode_data = @import("./unicode_data.zig");
pub const vertical_orientation = @import("./vertical_orientation.zig");
pub const emoji = @import("./emoji.zig");

/// https://www.unicode.org/reports/tr44/#General_Category_Values
pub const GeneralCategory = DerivedPropertyEnum("gc");

/// https://www.unicode.org/reports/tr44/#Bidi_Class_Values
pub const BidiClass = DerivedPropertyEnum("bc");

pub const Script = DerivedPropertyEnum("sc");
pub const ScriptLong = DerivedPropertyLongEnum("sc");
pub const IndicSyllabicCategory = DerivedPropertyEnum("InSC");
pub const HangulSyllableType = DerivedPropertyEnum("hst");
pub const EastAsianWidth = DerivedPropertyEnum("ea");
pub const VerticalOrientation = DerivedPropertyEnum("vo");
pub const LineBreak = DerivedPropertyEnum("lb");
pub const IndicPositionalCategory = DerivedPropertyEnum("InPC");

fn DerivedPropertyEnum(comptime prop: []const u8) type {
    var len: usize = 0;
    var names: []const []const u8 = &.{};
    @setEvalBranchQuota(10_000);
    for (property_value_aliases.data) |item| {
        if (std.mem.eql(u8, item[0], prop)) {
            len += 1;
            names = names ++ &[_][]const u8{item[1]};
        }
    }
    const Tag = std.math.IntFittingRange(0, names.len - 1);
    return @Enum(Tag, .exhaustive, names, &std.simd.iota(Tag, names.len));
}

fn DerivedPropertyLongEnum(comptime prop: []const u8) type {
    var len: usize = 0;
    var names: []const []const u8 = &.{};
    @setEvalBranchQuota(10_000);
    for (property_value_aliases.data) |item| {
        if (!std.mem.eql(u8, item[0], prop)) continue;
        if (len > 0 and std.mem.eql(u8, names[len - 1], item[2])) continue;
        len += 1;
        names = names ++ &[_][]const u8{item[2]};
    }
    const Tag = std.math.IntFittingRange(0, names.len - 1);
    return @Enum(Tag, .exhaustive, names, &std.simd.iota(Tag, names.len));
}
