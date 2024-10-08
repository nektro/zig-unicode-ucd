// This file is part of the Unicode Character Database
// For documentation, see http://www.unicode.org/reports/tr44/
//
// Based on the source file: https://unicode.org/Public/16.0.0/ucd/Blocks.txt
//
// zig fmt: off

pub const Block = struct {
    from: u21,
    to: u21,
    name: []const u8,
};

pub const data = [_]Block{
    .{ .from = 0x0000, .to = 0x007F, .name = "Basic Latin" },
    .{ .from = 0x0080, .to = 0x00FF, .name = "Latin-1 Supplement" },
    .{ .from = 0x0100, .to = 0x017F, .name = "Latin Extended-A" },
    .{ .from = 0x0180, .to = 0x024F, .name = "Latin Extended-B" },
    .{ .from = 0x0250, .to = 0x02AF, .name = "IPA Extensions" },
    .{ .from = 0x02B0, .to = 0x02FF, .name = "Spacing Modifier Letters" },
    .{ .from = 0x0300, .to = 0x036F, .name = "Combining Diacritical Marks" },
    .{ .from = 0x0370, .to = 0x03FF, .name = "Greek and Coptic" },
    .{ .from = 0x0400, .to = 0x04FF, .name = "Cyrillic" },
    .{ .from = 0x0500, .to = 0x052F, .name = "Cyrillic Supplement" },
    .{ .from = 0x0530, .to = 0x058F, .name = "Armenian" },
    .{ .from = 0x0590, .to = 0x05FF, .name = "Hebrew" },
    .{ .from = 0x0600, .to = 0x06FF, .name = "Arabic" },
    .{ .from = 0x0700, .to = 0x074F, .name = "Syriac" },
    .{ .from = 0x0750, .to = 0x077F, .name = "Arabic Supplement" },
    .{ .from = 0x0780, .to = 0x07BF, .name = "Thaana" },
    .{ .from = 0x07C0, .to = 0x07FF, .name = "NKo" },
    .{ .from = 0x0800, .to = 0x083F, .name = "Samaritan" },
    .{ .from = 0x0840, .to = 0x085F, .name = "Mandaic" },
    .{ .from = 0x0860, .to = 0x086F, .name = "Syriac Supplement" },
    .{ .from = 0x0870, .to = 0x089F, .name = "Arabic Extended-B" },
    .{ .from = 0x08A0, .to = 0x08FF, .name = "Arabic Extended-A" },
    .{ .from = 0x0900, .to = 0x097F, .name = "Devanagari" },
    .{ .from = 0x0980, .to = 0x09FF, .name = "Bengali" },
    .{ .from = 0x0A00, .to = 0x0A7F, .name = "Gurmukhi" },
    .{ .from = 0x0A80, .to = 0x0AFF, .name = "Gujarati" },
    .{ .from = 0x0B00, .to = 0x0B7F, .name = "Oriya" },
    .{ .from = 0x0B80, .to = 0x0BFF, .name = "Tamil" },
    .{ .from = 0x0C00, .to = 0x0C7F, .name = "Telugu" },
    .{ .from = 0x0C80, .to = 0x0CFF, .name = "Kannada" },
    .{ .from = 0x0D00, .to = 0x0D7F, .name = "Malayalam" },
    .{ .from = 0x0D80, .to = 0x0DFF, .name = "Sinhala" },
    .{ .from = 0x0E00, .to = 0x0E7F, .name = "Thai" },
    .{ .from = 0x0E80, .to = 0x0EFF, .name = "Lao" },
    .{ .from = 0x0F00, .to = 0x0FFF, .name = "Tibetan" },
    .{ .from = 0x1000, .to = 0x109F, .name = "Myanmar" },
    .{ .from = 0x10A0, .to = 0x10FF, .name = "Georgian" },
    .{ .from = 0x1100, .to = 0x11FF, .name = "Hangul Jamo" },
    .{ .from = 0x1200, .to = 0x137F, .name = "Ethiopic" },
    .{ .from = 0x1380, .to = 0x139F, .name = "Ethiopic Supplement" },
    .{ .from = 0x13A0, .to = 0x13FF, .name = "Cherokee" },
    .{ .from = 0x1400, .to = 0x167F, .name = "Unified Canadian Aboriginal Syllabics" },
    .{ .from = 0x1680, .to = 0x169F, .name = "Ogham" },
    .{ .from = 0x16A0, .to = 0x16FF, .name = "Runic" },
    .{ .from = 0x1700, .to = 0x171F, .name = "Tagalog" },
    .{ .from = 0x1720, .to = 0x173F, .name = "Hanunoo" },
    .{ .from = 0x1740, .to = 0x175F, .name = "Buhid" },
    .{ .from = 0x1760, .to = 0x177F, .name = "Tagbanwa" },
    .{ .from = 0x1780, .to = 0x17FF, .name = "Khmer" },
    .{ .from = 0x1800, .to = 0x18AF, .name = "Mongolian" },
    .{ .from = 0x18B0, .to = 0x18FF, .name = "Unified Canadian Aboriginal Syllabics Extended" },
    .{ .from = 0x1900, .to = 0x194F, .name = "Limbu" },
    .{ .from = 0x1950, .to = 0x197F, .name = "Tai Le" },
    .{ .from = 0x1980, .to = 0x19DF, .name = "New Tai Lue" },
    .{ .from = 0x19E0, .to = 0x19FF, .name = "Khmer Symbols" },
    .{ .from = 0x1A00, .to = 0x1A1F, .name = "Buginese" },
    .{ .from = 0x1A20, .to = 0x1AAF, .name = "Tai Tham" },
    .{ .from = 0x1AB0, .to = 0x1AFF, .name = "Combining Diacritical Marks Extended" },
    .{ .from = 0x1B00, .to = 0x1B7F, .name = "Balinese" },
    .{ .from = 0x1B80, .to = 0x1BBF, .name = "Sundanese" },
    .{ .from = 0x1BC0, .to = 0x1BFF, .name = "Batak" },
    .{ .from = 0x1C00, .to = 0x1C4F, .name = "Lepcha" },
    .{ .from = 0x1C50, .to = 0x1C7F, .name = "Ol Chiki" },
    .{ .from = 0x1C80, .to = 0x1C8F, .name = "Cyrillic Extended-C" },
    .{ .from = 0x1C90, .to = 0x1CBF, .name = "Georgian Extended" },
    .{ .from = 0x1CC0, .to = 0x1CCF, .name = "Sundanese Supplement" },
    .{ .from = 0x1CD0, .to = 0x1CFF, .name = "Vedic Extensions" },
    .{ .from = 0x1D00, .to = 0x1D7F, .name = "Phonetic Extensions" },
    .{ .from = 0x1D80, .to = 0x1DBF, .name = "Phonetic Extensions Supplement" },
    .{ .from = 0x1DC0, .to = 0x1DFF, .name = "Combining Diacritical Marks Supplement" },
    .{ .from = 0x1E00, .to = 0x1EFF, .name = "Latin Extended Additional" },
    .{ .from = 0x1F00, .to = 0x1FFF, .name = "Greek Extended" },
    .{ .from = 0x2000, .to = 0x206F, .name = "General Punctuation" },
    .{ .from = 0x2070, .to = 0x209F, .name = "Superscripts and Subscripts" },
    .{ .from = 0x20A0, .to = 0x20CF, .name = "Currency Symbols" },
    .{ .from = 0x20D0, .to = 0x20FF, .name = "Combining Diacritical Marks for Symbols" },
    .{ .from = 0x2100, .to = 0x214F, .name = "Letterlike Symbols" },
    .{ .from = 0x2150, .to = 0x218F, .name = "Number Forms" },
    .{ .from = 0x2190, .to = 0x21FF, .name = "Arrows" },
    .{ .from = 0x2200, .to = 0x22FF, .name = "Mathematical Operators" },
    .{ .from = 0x2300, .to = 0x23FF, .name = "Miscellaneous Technical" },
    .{ .from = 0x2400, .to = 0x243F, .name = "Control Pictures" },
    .{ .from = 0x2440, .to = 0x245F, .name = "Optical Character Recognition" },
    .{ .from = 0x2460, .to = 0x24FF, .name = "Enclosed Alphanumerics" },
    .{ .from = 0x2500, .to = 0x257F, .name = "Box Drawing" },
    .{ .from = 0x2580, .to = 0x259F, .name = "Block Elements" },
    .{ .from = 0x25A0, .to = 0x25FF, .name = "Geometric Shapes" },
    .{ .from = 0x2600, .to = 0x26FF, .name = "Miscellaneous Symbols" },
    .{ .from = 0x2700, .to = 0x27BF, .name = "Dingbats" },
    .{ .from = 0x27C0, .to = 0x27EF, .name = "Miscellaneous Mathematical Symbols-A" },
    .{ .from = 0x27F0, .to = 0x27FF, .name = "Supplemental Arrows-A" },
    .{ .from = 0x2800, .to = 0x28FF, .name = "Braille Patterns" },
    .{ .from = 0x2900, .to = 0x297F, .name = "Supplemental Arrows-B" },
    .{ .from = 0x2980, .to = 0x29FF, .name = "Miscellaneous Mathematical Symbols-B" },
    .{ .from = 0x2A00, .to = 0x2AFF, .name = "Supplemental Mathematical Operators" },
    .{ .from = 0x2B00, .to = 0x2BFF, .name = "Miscellaneous Symbols and Arrows" },
    .{ .from = 0x2C00, .to = 0x2C5F, .name = "Glagolitic" },
    .{ .from = 0x2C60, .to = 0x2C7F, .name = "Latin Extended-C" },
    .{ .from = 0x2C80, .to = 0x2CFF, .name = "Coptic" },
    .{ .from = 0x2D00, .to = 0x2D2F, .name = "Georgian Supplement" },
    .{ .from = 0x2D30, .to = 0x2D7F, .name = "Tifinagh" },
    .{ .from = 0x2D80, .to = 0x2DDF, .name = "Ethiopic Extended" },
    .{ .from = 0x2DE0, .to = 0x2DFF, .name = "Cyrillic Extended-A" },
    .{ .from = 0x2E00, .to = 0x2E7F, .name = "Supplemental Punctuation" },
    .{ .from = 0x2E80, .to = 0x2EFF, .name = "CJK Radicals Supplement" },
    .{ .from = 0x2F00, .to = 0x2FDF, .name = "Kangxi Radicals" },
    .{ .from = 0x2FF0, .to = 0x2FFF, .name = "Ideographic Description Characters" },
    .{ .from = 0x3000, .to = 0x303F, .name = "CJK Symbols and Punctuation" },
    .{ .from = 0x3040, .to = 0x309F, .name = "Hiragana" },
    .{ .from = 0x30A0, .to = 0x30FF, .name = "Katakana" },
    .{ .from = 0x3100, .to = 0x312F, .name = "Bopomofo" },
    .{ .from = 0x3130, .to = 0x318F, .name = "Hangul Compatibility Jamo" },
    .{ .from = 0x3190, .to = 0x319F, .name = "Kanbun" },
    .{ .from = 0x31A0, .to = 0x31BF, .name = "Bopomofo Extended" },
    .{ .from = 0x31C0, .to = 0x31EF, .name = "CJK Strokes" },
    .{ .from = 0x31F0, .to = 0x31FF, .name = "Katakana Phonetic Extensions" },
    .{ .from = 0x3200, .to = 0x32FF, .name = "Enclosed CJK Letters and Months" },
    .{ .from = 0x3300, .to = 0x33FF, .name = "CJK Compatibility" },
    .{ .from = 0x3400, .to = 0x4DBF, .name = "CJK Unified Ideographs Extension A" },
    .{ .from = 0x4DC0, .to = 0x4DFF, .name = "Yijing Hexagram Symbols" },
    .{ .from = 0x4E00, .to = 0x9FFF, .name = "CJK Unified Ideographs" },
    .{ .from = 0xA000, .to = 0xA48F, .name = "Yi Syllables" },
    .{ .from = 0xA490, .to = 0xA4CF, .name = "Yi Radicals" },
    .{ .from = 0xA4D0, .to = 0xA4FF, .name = "Lisu" },
    .{ .from = 0xA500, .to = 0xA63F, .name = "Vai" },
    .{ .from = 0xA640, .to = 0xA69F, .name = "Cyrillic Extended-B" },
    .{ .from = 0xA6A0, .to = 0xA6FF, .name = "Bamum" },
    .{ .from = 0xA700, .to = 0xA71F, .name = "Modifier Tone Letters" },
    .{ .from = 0xA720, .to = 0xA7FF, .name = "Latin Extended-D" },
    .{ .from = 0xA800, .to = 0xA82F, .name = "Syloti Nagri" },
    .{ .from = 0xA830, .to = 0xA83F, .name = "Common Indic Number Forms" },
    .{ .from = 0xA840, .to = 0xA87F, .name = "Phags-pa" },
    .{ .from = 0xA880, .to = 0xA8DF, .name = "Saurashtra" },
    .{ .from = 0xA8E0, .to = 0xA8FF, .name = "Devanagari Extended" },
    .{ .from = 0xA900, .to = 0xA92F, .name = "Kayah Li" },
    .{ .from = 0xA930, .to = 0xA95F, .name = "Rejang" },
    .{ .from = 0xA960, .to = 0xA97F, .name = "Hangul Jamo Extended-A" },
    .{ .from = 0xA980, .to = 0xA9DF, .name = "Javanese" },
    .{ .from = 0xA9E0, .to = 0xA9FF, .name = "Myanmar Extended-B" },
    .{ .from = 0xAA00, .to = 0xAA5F, .name = "Cham" },
    .{ .from = 0xAA60, .to = 0xAA7F, .name = "Myanmar Extended-A" },
    .{ .from = 0xAA80, .to = 0xAADF, .name = "Tai Viet" },
    .{ .from = 0xAAE0, .to = 0xAAFF, .name = "Meetei Mayek Extensions" },
    .{ .from = 0xAB00, .to = 0xAB2F, .name = "Ethiopic Extended-A" },
    .{ .from = 0xAB30, .to = 0xAB6F, .name = "Latin Extended-E" },
    .{ .from = 0xAB70, .to = 0xABBF, .name = "Cherokee Supplement" },
    .{ .from = 0xABC0, .to = 0xABFF, .name = "Meetei Mayek" },
    .{ .from = 0xAC00, .to = 0xD7AF, .name = "Hangul Syllables" },
    .{ .from = 0xD7B0, .to = 0xD7FF, .name = "Hangul Jamo Extended-B" },
    .{ .from = 0xD800, .to = 0xDB7F, .name = "High Surrogates" },
    .{ .from = 0xDB80, .to = 0xDBFF, .name = "High Private Use Surrogates" },
    .{ .from = 0xDC00, .to = 0xDFFF, .name = "Low Surrogates" },
    .{ .from = 0xE000, .to = 0xF8FF, .name = "Private Use Area" },
    .{ .from = 0xF900, .to = 0xFAFF, .name = "CJK Compatibility Ideographs" },
    .{ .from = 0xFB00, .to = 0xFB4F, .name = "Alphabetic Presentation Forms" },
    .{ .from = 0xFB50, .to = 0xFDFF, .name = "Arabic Presentation Forms-A" },
    .{ .from = 0xFE00, .to = 0xFE0F, .name = "Variation Selectors" },
    .{ .from = 0xFE10, .to = 0xFE1F, .name = "Vertical Forms" },
    .{ .from = 0xFE20, .to = 0xFE2F, .name = "Combining Half Marks" },
    .{ .from = 0xFE30, .to = 0xFE4F, .name = "CJK Compatibility Forms" },
    .{ .from = 0xFE50, .to = 0xFE6F, .name = "Small Form Variants" },
    .{ .from = 0xFE70, .to = 0xFEFF, .name = "Arabic Presentation Forms-B" },
    .{ .from = 0xFF00, .to = 0xFFEF, .name = "Halfwidth and Fullwidth Forms" },
    .{ .from = 0xFFF0, .to = 0xFFFF, .name = "Specials" },
    .{ .from = 0x10000, .to = 0x1007F, .name = "Linear B Syllabary" },
    .{ .from = 0x10080, .to = 0x100FF, .name = "Linear B Ideograms" },
    .{ .from = 0x10100, .to = 0x1013F, .name = "Aegean Numbers" },
    .{ .from = 0x10140, .to = 0x1018F, .name = "Ancient Greek Numbers" },
    .{ .from = 0x10190, .to = 0x101CF, .name = "Ancient Symbols" },
    .{ .from = 0x101D0, .to = 0x101FF, .name = "Phaistos Disc" },
    .{ .from = 0x10280, .to = 0x1029F, .name = "Lycian" },
    .{ .from = 0x102A0, .to = 0x102DF, .name = "Carian" },
    .{ .from = 0x102E0, .to = 0x102FF, .name = "Coptic Epact Numbers" },
    .{ .from = 0x10300, .to = 0x1032F, .name = "Old Italic" },
    .{ .from = 0x10330, .to = 0x1034F, .name = "Gothic" },
    .{ .from = 0x10350, .to = 0x1037F, .name = "Old Permic" },
    .{ .from = 0x10380, .to = 0x1039F, .name = "Ugaritic" },
    .{ .from = 0x103A0, .to = 0x103DF, .name = "Old Persian" },
    .{ .from = 0x10400, .to = 0x1044F, .name = "Deseret" },
    .{ .from = 0x10450, .to = 0x1047F, .name = "Shavian" },
    .{ .from = 0x10480, .to = 0x104AF, .name = "Osmanya" },
    .{ .from = 0x104B0, .to = 0x104FF, .name = "Osage" },
    .{ .from = 0x10500, .to = 0x1052F, .name = "Elbasan" },
    .{ .from = 0x10530, .to = 0x1056F, .name = "Caucasian Albanian" },
    .{ .from = 0x10570, .to = 0x105BF, .name = "Vithkuqi" },
    .{ .from = 0x105C0, .to = 0x105FF, .name = "Todhri" },
    .{ .from = 0x10600, .to = 0x1077F, .name = "Linear A" },
    .{ .from = 0x10780, .to = 0x107BF, .name = "Latin Extended-F" },
    .{ .from = 0x10800, .to = 0x1083F, .name = "Cypriot Syllabary" },
    .{ .from = 0x10840, .to = 0x1085F, .name = "Imperial Aramaic" },
    .{ .from = 0x10860, .to = 0x1087F, .name = "Palmyrene" },
    .{ .from = 0x10880, .to = 0x108AF, .name = "Nabataean" },
    .{ .from = 0x108E0, .to = 0x108FF, .name = "Hatran" },
    .{ .from = 0x10900, .to = 0x1091F, .name = "Phoenician" },
    .{ .from = 0x10920, .to = 0x1093F, .name = "Lydian" },
    .{ .from = 0x10980, .to = 0x1099F, .name = "Meroitic Hieroglyphs" },
    .{ .from = 0x109A0, .to = 0x109FF, .name = "Meroitic Cursive" },
    .{ .from = 0x10A00, .to = 0x10A5F, .name = "Kharoshthi" },
    .{ .from = 0x10A60, .to = 0x10A7F, .name = "Old South Arabian" },
    .{ .from = 0x10A80, .to = 0x10A9F, .name = "Old North Arabian" },
    .{ .from = 0x10AC0, .to = 0x10AFF, .name = "Manichaean" },
    .{ .from = 0x10B00, .to = 0x10B3F, .name = "Avestan" },
    .{ .from = 0x10B40, .to = 0x10B5F, .name = "Inscriptional Parthian" },
    .{ .from = 0x10B60, .to = 0x10B7F, .name = "Inscriptional Pahlavi" },
    .{ .from = 0x10B80, .to = 0x10BAF, .name = "Psalter Pahlavi" },
    .{ .from = 0x10C00, .to = 0x10C4F, .name = "Old Turkic" },
    .{ .from = 0x10C80, .to = 0x10CFF, .name = "Old Hungarian" },
    .{ .from = 0x10D00, .to = 0x10D3F, .name = "Hanifi Rohingya" },
    .{ .from = 0x10D40, .to = 0x10D8F, .name = "Garay" },
    .{ .from = 0x10E60, .to = 0x10E7F, .name = "Rumi Numeral Symbols" },
    .{ .from = 0x10E80, .to = 0x10EBF, .name = "Yezidi" },
    .{ .from = 0x10EC0, .to = 0x10EFF, .name = "Arabic Extended-C" },
    .{ .from = 0x10F00, .to = 0x10F2F, .name = "Old Sogdian" },
    .{ .from = 0x10F30, .to = 0x10F6F, .name = "Sogdian" },
    .{ .from = 0x10F70, .to = 0x10FAF, .name = "Old Uyghur" },
    .{ .from = 0x10FB0, .to = 0x10FDF, .name = "Chorasmian" },
    .{ .from = 0x10FE0, .to = 0x10FFF, .name = "Elymaic" },
    .{ .from = 0x11000, .to = 0x1107F, .name = "Brahmi" },
    .{ .from = 0x11080, .to = 0x110CF, .name = "Kaithi" },
    .{ .from = 0x110D0, .to = 0x110FF, .name = "Sora Sompeng" },
    .{ .from = 0x11100, .to = 0x1114F, .name = "Chakma" },
    .{ .from = 0x11150, .to = 0x1117F, .name = "Mahajani" },
    .{ .from = 0x11180, .to = 0x111DF, .name = "Sharada" },
    .{ .from = 0x111E0, .to = 0x111FF, .name = "Sinhala Archaic Numbers" },
    .{ .from = 0x11200, .to = 0x1124F, .name = "Khojki" },
    .{ .from = 0x11280, .to = 0x112AF, .name = "Multani" },
    .{ .from = 0x112B0, .to = 0x112FF, .name = "Khudawadi" },
    .{ .from = 0x11300, .to = 0x1137F, .name = "Grantha" },
    .{ .from = 0x11380, .to = 0x113FF, .name = "Tulu-Tigalari" },
    .{ .from = 0x11400, .to = 0x1147F, .name = "Newa" },
    .{ .from = 0x11480, .to = 0x114DF, .name = "Tirhuta" },
    .{ .from = 0x11580, .to = 0x115FF, .name = "Siddham" },
    .{ .from = 0x11600, .to = 0x1165F, .name = "Modi" },
    .{ .from = 0x11660, .to = 0x1167F, .name = "Mongolian Supplement" },
    .{ .from = 0x11680, .to = 0x116CF, .name = "Takri" },
    .{ .from = 0x116D0, .to = 0x116FF, .name = "Myanmar Extended-C" },
    .{ .from = 0x11700, .to = 0x1174F, .name = "Ahom" },
    .{ .from = 0x11800, .to = 0x1184F, .name = "Dogra" },
    .{ .from = 0x118A0, .to = 0x118FF, .name = "Warang Citi" },
    .{ .from = 0x11900, .to = 0x1195F, .name = "Dives Akuru" },
    .{ .from = 0x119A0, .to = 0x119FF, .name = "Nandinagari" },
    .{ .from = 0x11A00, .to = 0x11A4F, .name = "Zanabazar Square" },
    .{ .from = 0x11A50, .to = 0x11AAF, .name = "Soyombo" },
    .{ .from = 0x11AB0, .to = 0x11ABF, .name = "Unified Canadian Aboriginal Syllabics Extended-A" },
    .{ .from = 0x11AC0, .to = 0x11AFF, .name = "Pau Cin Hau" },
    .{ .from = 0x11B00, .to = 0x11B5F, .name = "Devanagari Extended-A" },
    .{ .from = 0x11BC0, .to = 0x11BFF, .name = "Sunuwar" },
    .{ .from = 0x11C00, .to = 0x11C6F, .name = "Bhaiksuki" },
    .{ .from = 0x11C70, .to = 0x11CBF, .name = "Marchen" },
    .{ .from = 0x11D00, .to = 0x11D5F, .name = "Masaram Gondi" },
    .{ .from = 0x11D60, .to = 0x11DAF, .name = "Gunjala Gondi" },
    .{ .from = 0x11EE0, .to = 0x11EFF, .name = "Makasar" },
    .{ .from = 0x11F00, .to = 0x11F5F, .name = "Kawi" },
    .{ .from = 0x11FB0, .to = 0x11FBF, .name = "Lisu Supplement" },
    .{ .from = 0x11FC0, .to = 0x11FFF, .name = "Tamil Supplement" },
    .{ .from = 0x12000, .to = 0x123FF, .name = "Cuneiform" },
    .{ .from = 0x12400, .to = 0x1247F, .name = "Cuneiform Numbers and Punctuation" },
    .{ .from = 0x12480, .to = 0x1254F, .name = "Early Dynastic Cuneiform" },
    .{ .from = 0x12F90, .to = 0x12FFF, .name = "Cypro-Minoan" },
    .{ .from = 0x13000, .to = 0x1342F, .name = "Egyptian Hieroglyphs" },
    .{ .from = 0x13430, .to = 0x1345F, .name = "Egyptian Hieroglyph Format Controls" },
    .{ .from = 0x13460, .to = 0x143FF, .name = "Egyptian Hieroglyphs Extended-A" },
    .{ .from = 0x14400, .to = 0x1467F, .name = "Anatolian Hieroglyphs" },
    .{ .from = 0x16100, .to = 0x1613F, .name = "Gurung Khema" },
    .{ .from = 0x16800, .to = 0x16A3F, .name = "Bamum Supplement" },
    .{ .from = 0x16A40, .to = 0x16A6F, .name = "Mro" },
    .{ .from = 0x16A70, .to = 0x16ACF, .name = "Tangsa" },
    .{ .from = 0x16AD0, .to = 0x16AFF, .name = "Bassa Vah" },
    .{ .from = 0x16B00, .to = 0x16B8F, .name = "Pahawh Hmong" },
    .{ .from = 0x16D40, .to = 0x16D7F, .name = "Kirat Rai" },
    .{ .from = 0x16E40, .to = 0x16E9F, .name = "Medefaidrin" },
    .{ .from = 0x16F00, .to = 0x16F9F, .name = "Miao" },
    .{ .from = 0x16FE0, .to = 0x16FFF, .name = "Ideographic Symbols and Punctuation" },
    .{ .from = 0x17000, .to = 0x187FF, .name = "Tangut" },
    .{ .from = 0x18800, .to = 0x18AFF, .name = "Tangut Components" },
    .{ .from = 0x18B00, .to = 0x18CFF, .name = "Khitan Small Script" },
    .{ .from = 0x18D00, .to = 0x18D7F, .name = "Tangut Supplement" },
    .{ .from = 0x1AFF0, .to = 0x1AFFF, .name = "Kana Extended-B" },
    .{ .from = 0x1B000, .to = 0x1B0FF, .name = "Kana Supplement" },
    .{ .from = 0x1B100, .to = 0x1B12F, .name = "Kana Extended-A" },
    .{ .from = 0x1B130, .to = 0x1B16F, .name = "Small Kana Extension" },
    .{ .from = 0x1B170, .to = 0x1B2FF, .name = "Nushu" },
    .{ .from = 0x1BC00, .to = 0x1BC9F, .name = "Duployan" },
    .{ .from = 0x1BCA0, .to = 0x1BCAF, .name = "Shorthand Format Controls" },
    .{ .from = 0x1CC00, .to = 0x1CEBF, .name = "Symbols for Legacy Computing Supplement" },
    .{ .from = 0x1CF00, .to = 0x1CFCF, .name = "Znamenny Musical Notation" },
    .{ .from = 0x1D000, .to = 0x1D0FF, .name = "Byzantine Musical Symbols" },
    .{ .from = 0x1D100, .to = 0x1D1FF, .name = "Musical Symbols" },
    .{ .from = 0x1D200, .to = 0x1D24F, .name = "Ancient Greek Musical Notation" },
    .{ .from = 0x1D2C0, .to = 0x1D2DF, .name = "Kaktovik Numerals" },
    .{ .from = 0x1D2E0, .to = 0x1D2FF, .name = "Mayan Numerals" },
    .{ .from = 0x1D300, .to = 0x1D35F, .name = "Tai Xuan Jing Symbols" },
    .{ .from = 0x1D360, .to = 0x1D37F, .name = "Counting Rod Numerals" },
    .{ .from = 0x1D400, .to = 0x1D7FF, .name = "Mathematical Alphanumeric Symbols" },
    .{ .from = 0x1D800, .to = 0x1DAAF, .name = "Sutton SignWriting" },
    .{ .from = 0x1DF00, .to = 0x1DFFF, .name = "Latin Extended-G" },
    .{ .from = 0x1E000, .to = 0x1E02F, .name = "Glagolitic Supplement" },
    .{ .from = 0x1E030, .to = 0x1E08F, .name = "Cyrillic Extended-D" },
    .{ .from = 0x1E100, .to = 0x1E14F, .name = "Nyiakeng Puachue Hmong" },
    .{ .from = 0x1E290, .to = 0x1E2BF, .name = "Toto" },
    .{ .from = 0x1E2C0, .to = 0x1E2FF, .name = "Wancho" },
    .{ .from = 0x1E4D0, .to = 0x1E4FF, .name = "Nag Mundari" },
    .{ .from = 0x1E5D0, .to = 0x1E5FF, .name = "Ol Onal" },
    .{ .from = 0x1E7E0, .to = 0x1E7FF, .name = "Ethiopic Extended-B" },
    .{ .from = 0x1E800, .to = 0x1E8DF, .name = "Mende Kikakui" },
    .{ .from = 0x1E900, .to = 0x1E95F, .name = "Adlam" },
    .{ .from = 0x1EC70, .to = 0x1ECBF, .name = "Indic Siyaq Numbers" },
    .{ .from = 0x1ED00, .to = 0x1ED4F, .name = "Ottoman Siyaq Numbers" },
    .{ .from = 0x1EE00, .to = 0x1EEFF, .name = "Arabic Mathematical Alphabetic Symbols" },
    .{ .from = 0x1F000, .to = 0x1F02F, .name = "Mahjong Tiles" },
    .{ .from = 0x1F030, .to = 0x1F09F, .name = "Domino Tiles" },
    .{ .from = 0x1F0A0, .to = 0x1F0FF, .name = "Playing Cards" },
    .{ .from = 0x1F100, .to = 0x1F1FF, .name = "Enclosed Alphanumeric Supplement" },
    .{ .from = 0x1F200, .to = 0x1F2FF, .name = "Enclosed Ideographic Supplement" },
    .{ .from = 0x1F300, .to = 0x1F5FF, .name = "Miscellaneous Symbols and Pictographs" },
    .{ .from = 0x1F600, .to = 0x1F64F, .name = "Emoticons" },
    .{ .from = 0x1F650, .to = 0x1F67F, .name = "Ornamental Dingbats" },
    .{ .from = 0x1F680, .to = 0x1F6FF, .name = "Transport and Map Symbols" },
    .{ .from = 0x1F700, .to = 0x1F77F, .name = "Alchemical Symbols" },
    .{ .from = 0x1F780, .to = 0x1F7FF, .name = "Geometric Shapes Extended" },
    .{ .from = 0x1F800, .to = 0x1F8FF, .name = "Supplemental Arrows-C" },
    .{ .from = 0x1F900, .to = 0x1F9FF, .name = "Supplemental Symbols and Pictographs" },
    .{ .from = 0x1FA00, .to = 0x1FA6F, .name = "Chess Symbols" },
    .{ .from = 0x1FA70, .to = 0x1FAFF, .name = "Symbols and Pictographs Extended-A" },
    .{ .from = 0x1FB00, .to = 0x1FBFF, .name = "Symbols for Legacy Computing" },
    .{ .from = 0x20000, .to = 0x2A6DF, .name = "CJK Unified Ideographs Extension B" },
    .{ .from = 0x2A700, .to = 0x2B73F, .name = "CJK Unified Ideographs Extension C" },
    .{ .from = 0x2B740, .to = 0x2B81F, .name = "CJK Unified Ideographs Extension D" },
    .{ .from = 0x2B820, .to = 0x2CEAF, .name = "CJK Unified Ideographs Extension E" },
    .{ .from = 0x2CEB0, .to = 0x2EBEF, .name = "CJK Unified Ideographs Extension F" },
    .{ .from = 0x2EBF0, .to = 0x2EE5F, .name = "CJK Unified Ideographs Extension I" },
    .{ .from = 0x2F800, .to = 0x2FA1F, .name = "CJK Compatibility Ideographs Supplement" },
    .{ .from = 0x30000, .to = 0x3134F, .name = "CJK Unified Ideographs Extension G" },
    .{ .from = 0x31350, .to = 0x323AF, .name = "CJK Unified Ideographs Extension H" },
    .{ .from = 0xE0000, .to = 0xE007F, .name = "Tags" },
    .{ .from = 0xE0100, .to = 0xE01EF, .name = "Variation Selectors Supplement" },
    .{ .from = 0xF0000, .to = 0xFFFFF, .name = "Supplementary Private Use Area-A" },
    .{ .from = 0x100000, .to = 0x10FFFF, .name = "Supplementary Private Use Area-B" },
};
