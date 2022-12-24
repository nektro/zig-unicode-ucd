const std = @import("std");
const common = @import("./_common.zig");

pub usingnamespace common.Main(struct {
    pub const source_file = "PropList";

    pub const dest_file = "src/prop_list.zig";

    pub const dest_header =
        \\pub const PropList = struct {
        \\    from: u21,
        \\    to: u21,
        \\    property: enum {
        \\        White_Space,
        \\        Bidi_Control,
        \\        Join_Control,
        \\        Dash,
        \\        Hyphen,
        \\        Quotation_Mark,
        \\        Terminal_Punctuation,
        \\        Other_Math,
        \\        Hex_Digit,
        \\        ASCII_Hex_Digit,
        \\        Other_Alphabetic,
        \\        Ideographic,
        \\        Diacritic,
        \\        Extender,
        \\        Other_Lowercase,
        \\        Other_Uppercase,
        \\        Noncharacter_Code_Point,
        \\        Other_Grapheme_Extend,
        \\        IDS_Binary_Operator,
        \\        IDS_Trinary_Operator,
        \\        Radical,
        \\        Unified_Ideograph,
        \\        Other_Default_Ignorable_Code_Point,
        \\        Deprecated,
        \\        Soft_Dotted,
        \\        Logical_Order_Exception,
        \\        Other_ID_Start,
        \\        Other_ID_Continue,
        \\        Sentence_Terminal,
        \\        Variation_Selector,
        \\        Pattern_White_Space,
        \\        Pattern_Syntax,
        \\        Prepended_Concatenation_Mark,
        \\        Regional_Indicator,
        \\    },
        \\};
        \\
        \\pub const data = [_]PropList{
        \\
    ;

    pub const dest_footer =
        \\};
        \\
    ;

    pub usingnamespace common.RangeEnum("property");
});
