const std = @import("std");
const common = @import("./_common.zig");

pub usingnamespace common.Main(struct {
    pub const source_file = "Scripts";

    pub const dest_file = "src/scripts.zig";

    pub const dest_header =
        \\pub const Scripts = struct {
        \\    from: u21,
        \\    to: u21,
        \\    script: enum {
        \\        Common,
        \\        Latin,
        \\        Greek,
        \\        Cyrillic,
        \\        Armenian,
        \\        Hebrew,
        \\        Arabic,
        \\        Syriac,
        \\        Thaana,
        \\        Devanagari,
        \\        Bengali,
        \\        Gurmukhi,
        \\        Gujarati,
        \\        Oriya,
        \\        Tamil,
        \\        Telugu,
        \\        Kannada,
        \\        Malayalam,
        \\        Sinhala,
        \\        Thai,
        \\        Lao,
        \\        Tibetan,
        \\        Myanmar,
        \\        Georgian,
        \\        Hangul,
        \\        Ethiopic,
        \\        Cherokee,
        \\        Canadian_Aboriginal,
        \\        Ogham,
        \\        Runic,
        \\        Khmer,
        \\        Mongolian,
        \\        Hiragana,
        \\        Katakana,
        \\        Bopomofo,
        \\        Han,
        \\        Yi,
        \\        Old_Italic,
        \\        Gothic,
        \\        Deseret,
        \\        Inherited,
        \\        Tagalog,
        \\        Hanunoo,
        \\        Buhid,
        \\        Tagbanwa,
        \\        Limbu,
        \\        Tai_Le,
        \\        Linear_B,
        \\        Ugaritic,
        \\        Shavian,
        \\        Osmanya,
        \\        Cypriot,
        \\        Braille,
        \\        Buginese,
        \\        Coptic,
        \\        New_Tai_Lue,
        \\        Glagolitic,
        \\        Tifinagh,
        \\        Syloti_Nagri,
        \\        Old_Persian,
        \\        Kharoshthi,
        \\        Balinese,
        \\        Cuneiform,
        \\        Phoenician,
        \\        Phags_Pa,
        \\        Nko,
        \\        Sundanese,
        \\        Lepcha,
        \\        Ol_Chiki,
        \\        Vai,
        \\        Saurashtra,
        \\        Kayah_Li,
        \\        Rejang,
        \\        Lycian,
        \\        Carian,
        \\        Lydian,
        \\        Cham,
        \\        Tai_Tham,
        \\        Tai_Viet,
        \\        Avestan,
        \\        Egyptian_Hieroglyphs,
        \\        Samaritan,
        \\        Lisu,
        \\        Bamum,
        \\        Javanese,
        \\        Meetei_Mayek,
        \\        Imperial_Aramaic,
        \\        Old_South_Arabian,
        \\        Inscriptional_Parthian,
        \\        Inscriptional_Pahlavi,
        \\        Old_Turkic,
        \\        Kaithi,
        \\        Batak,
        \\        Brahmi,
        \\        Mandaic,
        \\        Chakma,
        \\        Meroitic_Cursive,
        \\        Meroitic_Hieroglyphs,
        \\        Miao,
        \\        Sharada,
        \\        Sora_Sompeng,
        \\        Takri,
        \\        Caucasian_Albanian,
        \\        Bassa_Vah,
        \\        Duployan,
        \\        Elbasan,
        \\        Grantha,
        \\        Pahawh_Hmong,
        \\        Khojki,
        \\        Linear_A,
        \\        Mahajani,
        \\        Manichaean,
        \\        Mende_Kikakui,
        \\        Modi,
        \\        Mro,
        \\        Old_North_Arabian,
        \\        Nabataean,
        \\        Palmyrene,
        \\        Pau_Cin_Hau,
        \\        Old_Permic,
        \\        Psalter_Pahlavi,
        \\        Siddham,
        \\        Khudawadi,
        \\        Tirhuta,
        \\        Warang_Citi,
        \\        Ahom,
        \\        Anatolian_Hieroglyphs,
        \\        Hatran,
        \\        Multani,
        \\        Old_Hungarian,
        \\        SignWriting,
        \\        Adlam,
        \\        Bhaiksuki,
        \\        Marchen,
        \\        Newa,
        \\        Osage,
        \\        Tangut,
        \\        Masaram_Gondi,
        \\        Nushu,
        \\        Soyombo,
        \\        Zanabazar_Square,
        \\        Dogra,
        \\        Gunjala_Gondi,
        \\        Makasar,
        \\        Medefaidrin,
        \\        Hanifi_Rohingya,
        \\        Sogdian,
        \\        Old_Sogdian,
        \\        Elymaic,
        \\        Nandinagari,
        \\        Nyiakeng_Puachue_Hmong,
        \\        Wancho,
        \\        Chorasmian,
        \\        Dives_Akuru,
        \\        Khitan_Small_Script,
        \\        Yezidi,
        \\    },
        \\};
        \\
        \\pub const data = [_]Scripts{
        \\
    ;

    pub const dest_footer =
        \\};
        \\
    ;

    pub fn exec(alloc: std.mem.Allocator, line: []const u8, writer: anytype) !bool {
        _ = alloc;
        var it = std.mem.tokenize(u8, line, "; ");

        const first = it.next().?;
        const next = it.next().?;

        if (std.mem.indexOf(u8, first, "..")) |index| {
            const start = first[0..index];
            const end = first[index + 2 ..];
            try writer.print("    .{{ .from = 0x{s}, .to = 0x{s}, .script = .{s} }},\n", .{ start, end, next });
        } else {
            try writer.print("    .{{ .from = 0x{s}, .to = 0x{s}, .script = .{s} }},\n", .{ first, first, next });
        }

        return true;
    }
});