// This file is part of the Unicode Character Database
// For documentation, see http://www.unicode.org/reports/tr44/
//
// Based on the source file: https://unicode.org/Public/13.0.0/ucd/CaseFolding.txt
//
// zig fmt: off

pub const CaseFolding = struct {
    code: u21,
    status: Status,
    mapping: Mapping,

    pub const Status = enum {
        C,
        F,
        S,
        T,
    };

    pub const Mapping = union(Status) {
        C: u21,
        F: []const u21,
        S: u21,
        T: u21,
    };
};

pub const data = [_]CaseFolding{
    .{ .code = 0x0041, .status = .C, .mapping = .{ .C = 0x0061 } }, // # LATIN CAPITAL LETTER A
    .{ .code = 0x0042, .status = .C, .mapping = .{ .C = 0x0062 } }, // # LATIN CAPITAL LETTER B
    .{ .code = 0x0043, .status = .C, .mapping = .{ .C = 0x0063 } }, // # LATIN CAPITAL LETTER C
    .{ .code = 0x0044, .status = .C, .mapping = .{ .C = 0x0064 } }, // # LATIN CAPITAL LETTER D
    .{ .code = 0x0045, .status = .C, .mapping = .{ .C = 0x0065 } }, // # LATIN CAPITAL LETTER E
    .{ .code = 0x0046, .status = .C, .mapping = .{ .C = 0x0066 } }, // # LATIN CAPITAL LETTER F
    .{ .code = 0x0047, .status = .C, .mapping = .{ .C = 0x0067 } }, // # LATIN CAPITAL LETTER G
    .{ .code = 0x0048, .status = .C, .mapping = .{ .C = 0x0068 } }, // # LATIN CAPITAL LETTER H
    .{ .code = 0x0049, .status = .C, .mapping = .{ .C = 0x0069 } }, // # LATIN CAPITAL LETTER I
    .{ .code = 0x0049, .status = .T, .mapping = .{ .T = 0x0131 } }, // # LATIN CAPITAL LETTER I
    .{ .code = 0x004A, .status = .C, .mapping = .{ .C = 0x006A } }, // # LATIN CAPITAL LETTER J
    .{ .code = 0x004B, .status = .C, .mapping = .{ .C = 0x006B } }, // # LATIN CAPITAL LETTER K
    .{ .code = 0x004C, .status = .C, .mapping = .{ .C = 0x006C } }, // # LATIN CAPITAL LETTER L
    .{ .code = 0x004D, .status = .C, .mapping = .{ .C = 0x006D } }, // # LATIN CAPITAL LETTER M
    .{ .code = 0x004E, .status = .C, .mapping = .{ .C = 0x006E } }, // # LATIN CAPITAL LETTER N
    .{ .code = 0x004F, .status = .C, .mapping = .{ .C = 0x006F } }, // # LATIN CAPITAL LETTER O
    .{ .code = 0x0050, .status = .C, .mapping = .{ .C = 0x0070 } }, // # LATIN CAPITAL LETTER P
    .{ .code = 0x0051, .status = .C, .mapping = .{ .C = 0x0071 } }, // # LATIN CAPITAL LETTER Q
    .{ .code = 0x0052, .status = .C, .mapping = .{ .C = 0x0072 } }, // # LATIN CAPITAL LETTER R
    .{ .code = 0x0053, .status = .C, .mapping = .{ .C = 0x0073 } }, // # LATIN CAPITAL LETTER S
    .{ .code = 0x0054, .status = .C, .mapping = .{ .C = 0x0074 } }, // # LATIN CAPITAL LETTER T
    .{ .code = 0x0055, .status = .C, .mapping = .{ .C = 0x0075 } }, // # LATIN CAPITAL LETTER U
    .{ .code = 0x0056, .status = .C, .mapping = .{ .C = 0x0076 } }, // # LATIN CAPITAL LETTER V
    .{ .code = 0x0057, .status = .C, .mapping = .{ .C = 0x0077 } }, // # LATIN CAPITAL LETTER W
    .{ .code = 0x0058, .status = .C, .mapping = .{ .C = 0x0078 } }, // # LATIN CAPITAL LETTER X
    .{ .code = 0x0059, .status = .C, .mapping = .{ .C = 0x0079 } }, // # LATIN CAPITAL LETTER Y
    .{ .code = 0x005A, .status = .C, .mapping = .{ .C = 0x007A } }, // # LATIN CAPITAL LETTER Z
    .{ .code = 0x00B5, .status = .C, .mapping = .{ .C = 0x03BC } }, // # MICRO SIGN
    .{ .code = 0x00C0, .status = .C, .mapping = .{ .C = 0x00E0 } }, // # LATIN CAPITAL LETTER A WITH GRAVE
    .{ .code = 0x00C1, .status = .C, .mapping = .{ .C = 0x00E1 } }, // # LATIN CAPITAL LETTER A WITH ACUTE
    .{ .code = 0x00C2, .status = .C, .mapping = .{ .C = 0x00E2 } }, // # LATIN CAPITAL LETTER A WITH CIRCUMFLEX
    .{ .code = 0x00C3, .status = .C, .mapping = .{ .C = 0x00E3 } }, // # LATIN CAPITAL LETTER A WITH TILDE
    .{ .code = 0x00C4, .status = .C, .mapping = .{ .C = 0x00E4 } }, // # LATIN CAPITAL LETTER A WITH DIAERESIS
    .{ .code = 0x00C5, .status = .C, .mapping = .{ .C = 0x00E5 } }, // # LATIN CAPITAL LETTER A WITH RING ABOVE
    .{ .code = 0x00C6, .status = .C, .mapping = .{ .C = 0x00E6 } }, // # LATIN CAPITAL LETTER AE
    .{ .code = 0x00C7, .status = .C, .mapping = .{ .C = 0x00E7 } }, // # LATIN CAPITAL LETTER C WITH CEDILLA
    .{ .code = 0x00C8, .status = .C, .mapping = .{ .C = 0x00E8 } }, // # LATIN CAPITAL LETTER E WITH GRAVE
    .{ .code = 0x00C9, .status = .C, .mapping = .{ .C = 0x00E9 } }, // # LATIN CAPITAL LETTER E WITH ACUTE
    .{ .code = 0x00CA, .status = .C, .mapping = .{ .C = 0x00EA } }, // # LATIN CAPITAL LETTER E WITH CIRCUMFLEX
    .{ .code = 0x00CB, .status = .C, .mapping = .{ .C = 0x00EB } }, // # LATIN CAPITAL LETTER E WITH DIAERESIS
    .{ .code = 0x00CC, .status = .C, .mapping = .{ .C = 0x00EC } }, // # LATIN CAPITAL LETTER I WITH GRAVE
    .{ .code = 0x00CD, .status = .C, .mapping = .{ .C = 0x00ED } }, // # LATIN CAPITAL LETTER I WITH ACUTE
    .{ .code = 0x00CE, .status = .C, .mapping = .{ .C = 0x00EE } }, // # LATIN CAPITAL LETTER I WITH CIRCUMFLEX
    .{ .code = 0x00CF, .status = .C, .mapping = .{ .C = 0x00EF } }, // # LATIN CAPITAL LETTER I WITH DIAERESIS
    .{ .code = 0x00D0, .status = .C, .mapping = .{ .C = 0x00F0 } }, // # LATIN CAPITAL LETTER ETH
    .{ .code = 0x00D1, .status = .C, .mapping = .{ .C = 0x00F1 } }, // # LATIN CAPITAL LETTER N WITH TILDE
    .{ .code = 0x00D2, .status = .C, .mapping = .{ .C = 0x00F2 } }, // # LATIN CAPITAL LETTER O WITH GRAVE
    .{ .code = 0x00D3, .status = .C, .mapping = .{ .C = 0x00F3 } }, // # LATIN CAPITAL LETTER O WITH ACUTE
    .{ .code = 0x00D4, .status = .C, .mapping = .{ .C = 0x00F4 } }, // # LATIN CAPITAL LETTER O WITH CIRCUMFLEX
    .{ .code = 0x00D5, .status = .C, .mapping = .{ .C = 0x00F5 } }, // # LATIN CAPITAL LETTER O WITH TILDE
    .{ .code = 0x00D6, .status = .C, .mapping = .{ .C = 0x00F6 } }, // # LATIN CAPITAL LETTER O WITH DIAERESIS
    .{ .code = 0x00D8, .status = .C, .mapping = .{ .C = 0x00F8 } }, // # LATIN CAPITAL LETTER O WITH STROKE
    .{ .code = 0x00D9, .status = .C, .mapping = .{ .C = 0x00F9 } }, // # LATIN CAPITAL LETTER U WITH GRAVE
    .{ .code = 0x00DA, .status = .C, .mapping = .{ .C = 0x00FA } }, // # LATIN CAPITAL LETTER U WITH ACUTE
    .{ .code = 0x00DB, .status = .C, .mapping = .{ .C = 0x00FB } }, // # LATIN CAPITAL LETTER U WITH CIRCUMFLEX
    .{ .code = 0x00DC, .status = .C, .mapping = .{ .C = 0x00FC } }, // # LATIN CAPITAL LETTER U WITH DIAERESIS
    .{ .code = 0x00DD, .status = .C, .mapping = .{ .C = 0x00FD } }, // # LATIN CAPITAL LETTER Y WITH ACUTE
    .{ .code = 0x00DE, .status = .C, .mapping = .{ .C = 0x00FE } }, // # LATIN CAPITAL LETTER THORN
    .{ .code = 0x00DF, .status = .F, .mapping = .{ .F = &[_]u21{0x0073,0x0073,} } }, // # LATIN SMALL LETTER SHARP S
    .{ .code = 0x0100, .status = .C, .mapping = .{ .C = 0x0101 } }, // # LATIN CAPITAL LETTER A WITH MACRON
    .{ .code = 0x0102, .status = .C, .mapping = .{ .C = 0x0103 } }, // # LATIN CAPITAL LETTER A WITH BREVE
    .{ .code = 0x0104, .status = .C, .mapping = .{ .C = 0x0105 } }, // # LATIN CAPITAL LETTER A WITH OGONEK
    .{ .code = 0x0106, .status = .C, .mapping = .{ .C = 0x0107 } }, // # LATIN CAPITAL LETTER C WITH ACUTE
    .{ .code = 0x0108, .status = .C, .mapping = .{ .C = 0x0109 } }, // # LATIN CAPITAL LETTER C WITH CIRCUMFLEX
    .{ .code = 0x010A, .status = .C, .mapping = .{ .C = 0x010B } }, // # LATIN CAPITAL LETTER C WITH DOT ABOVE
    .{ .code = 0x010C, .status = .C, .mapping = .{ .C = 0x010D } }, // # LATIN CAPITAL LETTER C WITH CARON
    .{ .code = 0x010E, .status = .C, .mapping = .{ .C = 0x010F } }, // # LATIN CAPITAL LETTER D WITH CARON
    .{ .code = 0x0110, .status = .C, .mapping = .{ .C = 0x0111 } }, // # LATIN CAPITAL LETTER D WITH STROKE
    .{ .code = 0x0112, .status = .C, .mapping = .{ .C = 0x0113 } }, // # LATIN CAPITAL LETTER E WITH MACRON
    .{ .code = 0x0114, .status = .C, .mapping = .{ .C = 0x0115 } }, // # LATIN CAPITAL LETTER E WITH BREVE
    .{ .code = 0x0116, .status = .C, .mapping = .{ .C = 0x0117 } }, // # LATIN CAPITAL LETTER E WITH DOT ABOVE
    .{ .code = 0x0118, .status = .C, .mapping = .{ .C = 0x0119 } }, // # LATIN CAPITAL LETTER E WITH OGONEK
    .{ .code = 0x011A, .status = .C, .mapping = .{ .C = 0x011B } }, // # LATIN CAPITAL LETTER E WITH CARON
    .{ .code = 0x011C, .status = .C, .mapping = .{ .C = 0x011D } }, // # LATIN CAPITAL LETTER G WITH CIRCUMFLEX
    .{ .code = 0x011E, .status = .C, .mapping = .{ .C = 0x011F } }, // # LATIN CAPITAL LETTER G WITH BREVE
    .{ .code = 0x0120, .status = .C, .mapping = .{ .C = 0x0121 } }, // # LATIN CAPITAL LETTER G WITH DOT ABOVE
    .{ .code = 0x0122, .status = .C, .mapping = .{ .C = 0x0123 } }, // # LATIN CAPITAL LETTER G WITH CEDILLA
    .{ .code = 0x0124, .status = .C, .mapping = .{ .C = 0x0125 } }, // # LATIN CAPITAL LETTER H WITH CIRCUMFLEX
    .{ .code = 0x0126, .status = .C, .mapping = .{ .C = 0x0127 } }, // # LATIN CAPITAL LETTER H WITH STROKE
    .{ .code = 0x0128, .status = .C, .mapping = .{ .C = 0x0129 } }, // # LATIN CAPITAL LETTER I WITH TILDE
    .{ .code = 0x012A, .status = .C, .mapping = .{ .C = 0x012B } }, // # LATIN CAPITAL LETTER I WITH MACRON
    .{ .code = 0x012C, .status = .C, .mapping = .{ .C = 0x012D } }, // # LATIN CAPITAL LETTER I WITH BREVE
    .{ .code = 0x012E, .status = .C, .mapping = .{ .C = 0x012F } }, // # LATIN CAPITAL LETTER I WITH OGONEK
    .{ .code = 0x0130, .status = .F, .mapping = .{ .F = &[_]u21{0x0069,0x0307,} } }, // # LATIN CAPITAL LETTER I WITH DOT ABOVE
    .{ .code = 0x0130, .status = .T, .mapping = .{ .T = 0x0069 } }, // # LATIN CAPITAL LETTER I WITH DOT ABOVE
    .{ .code = 0x0132, .status = .C, .mapping = .{ .C = 0x0133 } }, // # LATIN CAPITAL LIGATURE IJ
    .{ .code = 0x0134, .status = .C, .mapping = .{ .C = 0x0135 } }, // # LATIN CAPITAL LETTER J WITH CIRCUMFLEX
    .{ .code = 0x0136, .status = .C, .mapping = .{ .C = 0x0137 } }, // # LATIN CAPITAL LETTER K WITH CEDILLA
    .{ .code = 0x0139, .status = .C, .mapping = .{ .C = 0x013A } }, // # LATIN CAPITAL LETTER L WITH ACUTE
    .{ .code = 0x013B, .status = .C, .mapping = .{ .C = 0x013C } }, // # LATIN CAPITAL LETTER L WITH CEDILLA
    .{ .code = 0x013D, .status = .C, .mapping = .{ .C = 0x013E } }, // # LATIN CAPITAL LETTER L WITH CARON
    .{ .code = 0x013F, .status = .C, .mapping = .{ .C = 0x0140 } }, // # LATIN CAPITAL LETTER L WITH MIDDLE DOT
    .{ .code = 0x0141, .status = .C, .mapping = .{ .C = 0x0142 } }, // # LATIN CAPITAL LETTER L WITH STROKE
    .{ .code = 0x0143, .status = .C, .mapping = .{ .C = 0x0144 } }, // # LATIN CAPITAL LETTER N WITH ACUTE
    .{ .code = 0x0145, .status = .C, .mapping = .{ .C = 0x0146 } }, // # LATIN CAPITAL LETTER N WITH CEDILLA
    .{ .code = 0x0147, .status = .C, .mapping = .{ .C = 0x0148 } }, // # LATIN CAPITAL LETTER N WITH CARON
    .{ .code = 0x0149, .status = .F, .mapping = .{ .F = &[_]u21{0x02BC,0x006E,} } }, // # LATIN SMALL LETTER N PRECEDED BY APOSTROPHE
    .{ .code = 0x014A, .status = .C, .mapping = .{ .C = 0x014B } }, // # LATIN CAPITAL LETTER ENG
    .{ .code = 0x014C, .status = .C, .mapping = .{ .C = 0x014D } }, // # LATIN CAPITAL LETTER O WITH MACRON
    .{ .code = 0x014E, .status = .C, .mapping = .{ .C = 0x014F } }, // # LATIN CAPITAL LETTER O WITH BREVE
    .{ .code = 0x0150, .status = .C, .mapping = .{ .C = 0x0151 } }, // # LATIN CAPITAL LETTER O WITH DOUBLE ACUTE
    .{ .code = 0x0152, .status = .C, .mapping = .{ .C = 0x0153 } }, // # LATIN CAPITAL LIGATURE OE
    .{ .code = 0x0154, .status = .C, .mapping = .{ .C = 0x0155 } }, // # LATIN CAPITAL LETTER R WITH ACUTE
    .{ .code = 0x0156, .status = .C, .mapping = .{ .C = 0x0157 } }, // # LATIN CAPITAL LETTER R WITH CEDILLA
    .{ .code = 0x0158, .status = .C, .mapping = .{ .C = 0x0159 } }, // # LATIN CAPITAL LETTER R WITH CARON
    .{ .code = 0x015A, .status = .C, .mapping = .{ .C = 0x015B } }, // # LATIN CAPITAL LETTER S WITH ACUTE
    .{ .code = 0x015C, .status = .C, .mapping = .{ .C = 0x015D } }, // # LATIN CAPITAL LETTER S WITH CIRCUMFLEX
    .{ .code = 0x015E, .status = .C, .mapping = .{ .C = 0x015F } }, // # LATIN CAPITAL LETTER S WITH CEDILLA
    .{ .code = 0x0160, .status = .C, .mapping = .{ .C = 0x0161 } }, // # LATIN CAPITAL LETTER S WITH CARON
    .{ .code = 0x0162, .status = .C, .mapping = .{ .C = 0x0163 } }, // # LATIN CAPITAL LETTER T WITH CEDILLA
    .{ .code = 0x0164, .status = .C, .mapping = .{ .C = 0x0165 } }, // # LATIN CAPITAL LETTER T WITH CARON
    .{ .code = 0x0166, .status = .C, .mapping = .{ .C = 0x0167 } }, // # LATIN CAPITAL LETTER T WITH STROKE
    .{ .code = 0x0168, .status = .C, .mapping = .{ .C = 0x0169 } }, // # LATIN CAPITAL LETTER U WITH TILDE
    .{ .code = 0x016A, .status = .C, .mapping = .{ .C = 0x016B } }, // # LATIN CAPITAL LETTER U WITH MACRON
    .{ .code = 0x016C, .status = .C, .mapping = .{ .C = 0x016D } }, // # LATIN CAPITAL LETTER U WITH BREVE
    .{ .code = 0x016E, .status = .C, .mapping = .{ .C = 0x016F } }, // # LATIN CAPITAL LETTER U WITH RING ABOVE
    .{ .code = 0x0170, .status = .C, .mapping = .{ .C = 0x0171 } }, // # LATIN CAPITAL LETTER U WITH DOUBLE ACUTE
    .{ .code = 0x0172, .status = .C, .mapping = .{ .C = 0x0173 } }, // # LATIN CAPITAL LETTER U WITH OGONEK
    .{ .code = 0x0174, .status = .C, .mapping = .{ .C = 0x0175 } }, // # LATIN CAPITAL LETTER W WITH CIRCUMFLEX
    .{ .code = 0x0176, .status = .C, .mapping = .{ .C = 0x0177 } }, // # LATIN CAPITAL LETTER Y WITH CIRCUMFLEX
    .{ .code = 0x0178, .status = .C, .mapping = .{ .C = 0x00FF } }, // # LATIN CAPITAL LETTER Y WITH DIAERESIS
    .{ .code = 0x0179, .status = .C, .mapping = .{ .C = 0x017A } }, // # LATIN CAPITAL LETTER Z WITH ACUTE
    .{ .code = 0x017B, .status = .C, .mapping = .{ .C = 0x017C } }, // # LATIN CAPITAL LETTER Z WITH DOT ABOVE
    .{ .code = 0x017D, .status = .C, .mapping = .{ .C = 0x017E } }, // # LATIN CAPITAL LETTER Z WITH CARON
    .{ .code = 0x017F, .status = .C, .mapping = .{ .C = 0x0073 } }, // # LATIN SMALL LETTER LONG S
    .{ .code = 0x0181, .status = .C, .mapping = .{ .C = 0x0253 } }, // # LATIN CAPITAL LETTER B WITH HOOK
    .{ .code = 0x0182, .status = .C, .mapping = .{ .C = 0x0183 } }, // # LATIN CAPITAL LETTER B WITH TOPBAR
    .{ .code = 0x0184, .status = .C, .mapping = .{ .C = 0x0185 } }, // # LATIN CAPITAL LETTER TONE SIX
    .{ .code = 0x0186, .status = .C, .mapping = .{ .C = 0x0254 } }, // # LATIN CAPITAL LETTER OPEN O
    .{ .code = 0x0187, .status = .C, .mapping = .{ .C = 0x0188 } }, // # LATIN CAPITAL LETTER C WITH HOOK
    .{ .code = 0x0189, .status = .C, .mapping = .{ .C = 0x0256 } }, // # LATIN CAPITAL LETTER AFRICAN D
    .{ .code = 0x018A, .status = .C, .mapping = .{ .C = 0x0257 } }, // # LATIN CAPITAL LETTER D WITH HOOK
    .{ .code = 0x018B, .status = .C, .mapping = .{ .C = 0x018C } }, // # LATIN CAPITAL LETTER D WITH TOPBAR
    .{ .code = 0x018E, .status = .C, .mapping = .{ .C = 0x01DD } }, // # LATIN CAPITAL LETTER REVERSED E
    .{ .code = 0x018F, .status = .C, .mapping = .{ .C = 0x0259 } }, // # LATIN CAPITAL LETTER SCHWA
    .{ .code = 0x0190, .status = .C, .mapping = .{ .C = 0x025B } }, // # LATIN CAPITAL LETTER OPEN E
    .{ .code = 0x0191, .status = .C, .mapping = .{ .C = 0x0192 } }, // # LATIN CAPITAL LETTER F WITH HOOK
    .{ .code = 0x0193, .status = .C, .mapping = .{ .C = 0x0260 } }, // # LATIN CAPITAL LETTER G WITH HOOK
    .{ .code = 0x0194, .status = .C, .mapping = .{ .C = 0x0263 } }, // # LATIN CAPITAL LETTER GAMMA
    .{ .code = 0x0196, .status = .C, .mapping = .{ .C = 0x0269 } }, // # LATIN CAPITAL LETTER IOTA
    .{ .code = 0x0197, .status = .C, .mapping = .{ .C = 0x0268 } }, // # LATIN CAPITAL LETTER I WITH STROKE
    .{ .code = 0x0198, .status = .C, .mapping = .{ .C = 0x0199 } }, // # LATIN CAPITAL LETTER K WITH HOOK
    .{ .code = 0x019C, .status = .C, .mapping = .{ .C = 0x026F } }, // # LATIN CAPITAL LETTER TURNED M
    .{ .code = 0x019D, .status = .C, .mapping = .{ .C = 0x0272 } }, // # LATIN CAPITAL LETTER N WITH LEFT HOOK
    .{ .code = 0x019F, .status = .C, .mapping = .{ .C = 0x0275 } }, // # LATIN CAPITAL LETTER O WITH MIDDLE TILDE
    .{ .code = 0x01A0, .status = .C, .mapping = .{ .C = 0x01A1 } }, // # LATIN CAPITAL LETTER O WITH HORN
    .{ .code = 0x01A2, .status = .C, .mapping = .{ .C = 0x01A3 } }, // # LATIN CAPITAL LETTER OI
    .{ .code = 0x01A4, .status = .C, .mapping = .{ .C = 0x01A5 } }, // # LATIN CAPITAL LETTER P WITH HOOK
    .{ .code = 0x01A6, .status = .C, .mapping = .{ .C = 0x0280 } }, // # LATIN LETTER YR
    .{ .code = 0x01A7, .status = .C, .mapping = .{ .C = 0x01A8 } }, // # LATIN CAPITAL LETTER TONE TWO
    .{ .code = 0x01A9, .status = .C, .mapping = .{ .C = 0x0283 } }, // # LATIN CAPITAL LETTER ESH
    .{ .code = 0x01AC, .status = .C, .mapping = .{ .C = 0x01AD } }, // # LATIN CAPITAL LETTER T WITH HOOK
    .{ .code = 0x01AE, .status = .C, .mapping = .{ .C = 0x0288 } }, // # LATIN CAPITAL LETTER T WITH RETROFLEX HOOK
    .{ .code = 0x01AF, .status = .C, .mapping = .{ .C = 0x01B0 } }, // # LATIN CAPITAL LETTER U WITH HORN
    .{ .code = 0x01B1, .status = .C, .mapping = .{ .C = 0x028A } }, // # LATIN CAPITAL LETTER UPSILON
    .{ .code = 0x01B2, .status = .C, .mapping = .{ .C = 0x028B } }, // # LATIN CAPITAL LETTER V WITH HOOK
    .{ .code = 0x01B3, .status = .C, .mapping = .{ .C = 0x01B4 } }, // # LATIN CAPITAL LETTER Y WITH HOOK
    .{ .code = 0x01B5, .status = .C, .mapping = .{ .C = 0x01B6 } }, // # LATIN CAPITAL LETTER Z WITH STROKE
    .{ .code = 0x01B7, .status = .C, .mapping = .{ .C = 0x0292 } }, // # LATIN CAPITAL LETTER EZH
    .{ .code = 0x01B8, .status = .C, .mapping = .{ .C = 0x01B9 } }, // # LATIN CAPITAL LETTER EZH REVERSED
    .{ .code = 0x01BC, .status = .C, .mapping = .{ .C = 0x01BD } }, // # LATIN CAPITAL LETTER TONE FIVE
    .{ .code = 0x01C4, .status = .C, .mapping = .{ .C = 0x01C6 } }, // # LATIN CAPITAL LETTER DZ WITH CARON
    .{ .code = 0x01C5, .status = .C, .mapping = .{ .C = 0x01C6 } }, // # LATIN CAPITAL LETTER D WITH SMALL LETTER Z WITH CARON
    .{ .code = 0x01C7, .status = .C, .mapping = .{ .C = 0x01C9 } }, // # LATIN CAPITAL LETTER LJ
    .{ .code = 0x01C8, .status = .C, .mapping = .{ .C = 0x01C9 } }, // # LATIN CAPITAL LETTER L WITH SMALL LETTER J
    .{ .code = 0x01CA, .status = .C, .mapping = .{ .C = 0x01CC } }, // # LATIN CAPITAL LETTER NJ
    .{ .code = 0x01CB, .status = .C, .mapping = .{ .C = 0x01CC } }, // # LATIN CAPITAL LETTER N WITH SMALL LETTER J
    .{ .code = 0x01CD, .status = .C, .mapping = .{ .C = 0x01CE } }, // # LATIN CAPITAL LETTER A WITH CARON
    .{ .code = 0x01CF, .status = .C, .mapping = .{ .C = 0x01D0 } }, // # LATIN CAPITAL LETTER I WITH CARON
    .{ .code = 0x01D1, .status = .C, .mapping = .{ .C = 0x01D2 } }, // # LATIN CAPITAL LETTER O WITH CARON
    .{ .code = 0x01D3, .status = .C, .mapping = .{ .C = 0x01D4 } }, // # LATIN CAPITAL LETTER U WITH CARON
    .{ .code = 0x01D5, .status = .C, .mapping = .{ .C = 0x01D6 } }, // # LATIN CAPITAL LETTER U WITH DIAERESIS AND MACRON
    .{ .code = 0x01D7, .status = .C, .mapping = .{ .C = 0x01D8 } }, // # LATIN CAPITAL LETTER U WITH DIAERESIS AND ACUTE
    .{ .code = 0x01D9, .status = .C, .mapping = .{ .C = 0x01DA } }, // # LATIN CAPITAL LETTER U WITH DIAERESIS AND CARON
    .{ .code = 0x01DB, .status = .C, .mapping = .{ .C = 0x01DC } }, // # LATIN CAPITAL LETTER U WITH DIAERESIS AND GRAVE
    .{ .code = 0x01DE, .status = .C, .mapping = .{ .C = 0x01DF } }, // # LATIN CAPITAL LETTER A WITH DIAERESIS AND MACRON
    .{ .code = 0x01E0, .status = .C, .mapping = .{ .C = 0x01E1 } }, // # LATIN CAPITAL LETTER A WITH DOT ABOVE AND MACRON
    .{ .code = 0x01E2, .status = .C, .mapping = .{ .C = 0x01E3 } }, // # LATIN CAPITAL LETTER AE WITH MACRON
    .{ .code = 0x01E4, .status = .C, .mapping = .{ .C = 0x01E5 } }, // # LATIN CAPITAL LETTER G WITH STROKE
    .{ .code = 0x01E6, .status = .C, .mapping = .{ .C = 0x01E7 } }, // # LATIN CAPITAL LETTER G WITH CARON
    .{ .code = 0x01E8, .status = .C, .mapping = .{ .C = 0x01E9 } }, // # LATIN CAPITAL LETTER K WITH CARON
    .{ .code = 0x01EA, .status = .C, .mapping = .{ .C = 0x01EB } }, // # LATIN CAPITAL LETTER O WITH OGONEK
    .{ .code = 0x01EC, .status = .C, .mapping = .{ .C = 0x01ED } }, // # LATIN CAPITAL LETTER O WITH OGONEK AND MACRON
    .{ .code = 0x01EE, .status = .C, .mapping = .{ .C = 0x01EF } }, // # LATIN CAPITAL LETTER EZH WITH CARON
    .{ .code = 0x01F0, .status = .F, .mapping = .{ .F = &[_]u21{0x006A,0x030C,} } }, // # LATIN SMALL LETTER J WITH CARON
    .{ .code = 0x01F1, .status = .C, .mapping = .{ .C = 0x01F3 } }, // # LATIN CAPITAL LETTER DZ
    .{ .code = 0x01F2, .status = .C, .mapping = .{ .C = 0x01F3 } }, // # LATIN CAPITAL LETTER D WITH SMALL LETTER Z
    .{ .code = 0x01F4, .status = .C, .mapping = .{ .C = 0x01F5 } }, // # LATIN CAPITAL LETTER G WITH ACUTE
    .{ .code = 0x01F6, .status = .C, .mapping = .{ .C = 0x0195 } }, // # LATIN CAPITAL LETTER HWAIR
    .{ .code = 0x01F7, .status = .C, .mapping = .{ .C = 0x01BF } }, // # LATIN CAPITAL LETTER WYNN
    .{ .code = 0x01F8, .status = .C, .mapping = .{ .C = 0x01F9 } }, // # LATIN CAPITAL LETTER N WITH GRAVE
    .{ .code = 0x01FA, .status = .C, .mapping = .{ .C = 0x01FB } }, // # LATIN CAPITAL LETTER A WITH RING ABOVE AND ACUTE
    .{ .code = 0x01FC, .status = .C, .mapping = .{ .C = 0x01FD } }, // # LATIN CAPITAL LETTER AE WITH ACUTE
    .{ .code = 0x01FE, .status = .C, .mapping = .{ .C = 0x01FF } }, // # LATIN CAPITAL LETTER O WITH STROKE AND ACUTE
    .{ .code = 0x0200, .status = .C, .mapping = .{ .C = 0x0201 } }, // # LATIN CAPITAL LETTER A WITH DOUBLE GRAVE
    .{ .code = 0x0202, .status = .C, .mapping = .{ .C = 0x0203 } }, // # LATIN CAPITAL LETTER A WITH INVERTED BREVE
    .{ .code = 0x0204, .status = .C, .mapping = .{ .C = 0x0205 } }, // # LATIN CAPITAL LETTER E WITH DOUBLE GRAVE
    .{ .code = 0x0206, .status = .C, .mapping = .{ .C = 0x0207 } }, // # LATIN CAPITAL LETTER E WITH INVERTED BREVE
    .{ .code = 0x0208, .status = .C, .mapping = .{ .C = 0x0209 } }, // # LATIN CAPITAL LETTER I WITH DOUBLE GRAVE
    .{ .code = 0x020A, .status = .C, .mapping = .{ .C = 0x020B } }, // # LATIN CAPITAL LETTER I WITH INVERTED BREVE
    .{ .code = 0x020C, .status = .C, .mapping = .{ .C = 0x020D } }, // # LATIN CAPITAL LETTER O WITH DOUBLE GRAVE
    .{ .code = 0x020E, .status = .C, .mapping = .{ .C = 0x020F } }, // # LATIN CAPITAL LETTER O WITH INVERTED BREVE
    .{ .code = 0x0210, .status = .C, .mapping = .{ .C = 0x0211 } }, // # LATIN CAPITAL LETTER R WITH DOUBLE GRAVE
    .{ .code = 0x0212, .status = .C, .mapping = .{ .C = 0x0213 } }, // # LATIN CAPITAL LETTER R WITH INVERTED BREVE
    .{ .code = 0x0214, .status = .C, .mapping = .{ .C = 0x0215 } }, // # LATIN CAPITAL LETTER U WITH DOUBLE GRAVE
    .{ .code = 0x0216, .status = .C, .mapping = .{ .C = 0x0217 } }, // # LATIN CAPITAL LETTER U WITH INVERTED BREVE
    .{ .code = 0x0218, .status = .C, .mapping = .{ .C = 0x0219 } }, // # LATIN CAPITAL LETTER S WITH COMMA BELOW
    .{ .code = 0x021A, .status = .C, .mapping = .{ .C = 0x021B } }, // # LATIN CAPITAL LETTER T WITH COMMA BELOW
    .{ .code = 0x021C, .status = .C, .mapping = .{ .C = 0x021D } }, // # LATIN CAPITAL LETTER YOGH
    .{ .code = 0x021E, .status = .C, .mapping = .{ .C = 0x021F } }, // # LATIN CAPITAL LETTER H WITH CARON
    .{ .code = 0x0220, .status = .C, .mapping = .{ .C = 0x019E } }, // # LATIN CAPITAL LETTER N WITH LONG RIGHT LEG
    .{ .code = 0x0222, .status = .C, .mapping = .{ .C = 0x0223 } }, // # LATIN CAPITAL LETTER OU
    .{ .code = 0x0224, .status = .C, .mapping = .{ .C = 0x0225 } }, // # LATIN CAPITAL LETTER Z WITH HOOK
    .{ .code = 0x0226, .status = .C, .mapping = .{ .C = 0x0227 } }, // # LATIN CAPITAL LETTER A WITH DOT ABOVE
    .{ .code = 0x0228, .status = .C, .mapping = .{ .C = 0x0229 } }, // # LATIN CAPITAL LETTER E WITH CEDILLA
    .{ .code = 0x022A, .status = .C, .mapping = .{ .C = 0x022B } }, // # LATIN CAPITAL LETTER O WITH DIAERESIS AND MACRON
    .{ .code = 0x022C, .status = .C, .mapping = .{ .C = 0x022D } }, // # LATIN CAPITAL LETTER O WITH TILDE AND MACRON
    .{ .code = 0x022E, .status = .C, .mapping = .{ .C = 0x022F } }, // # LATIN CAPITAL LETTER O WITH DOT ABOVE
    .{ .code = 0x0230, .status = .C, .mapping = .{ .C = 0x0231 } }, // # LATIN CAPITAL LETTER O WITH DOT ABOVE AND MACRON
    .{ .code = 0x0232, .status = .C, .mapping = .{ .C = 0x0233 } }, // # LATIN CAPITAL LETTER Y WITH MACRON
    .{ .code = 0x023A, .status = .C, .mapping = .{ .C = 0x2C65 } }, // # LATIN CAPITAL LETTER A WITH STROKE
    .{ .code = 0x023B, .status = .C, .mapping = .{ .C = 0x023C } }, // # LATIN CAPITAL LETTER C WITH STROKE
    .{ .code = 0x023D, .status = .C, .mapping = .{ .C = 0x019A } }, // # LATIN CAPITAL LETTER L WITH BAR
    .{ .code = 0x023E, .status = .C, .mapping = .{ .C = 0x2C66 } }, // # LATIN CAPITAL LETTER T WITH DIAGONAL STROKE
    .{ .code = 0x0241, .status = .C, .mapping = .{ .C = 0x0242 } }, // # LATIN CAPITAL LETTER GLOTTAL STOP
    .{ .code = 0x0243, .status = .C, .mapping = .{ .C = 0x0180 } }, // # LATIN CAPITAL LETTER B WITH STROKE
    .{ .code = 0x0244, .status = .C, .mapping = .{ .C = 0x0289 } }, // # LATIN CAPITAL LETTER U BAR
    .{ .code = 0x0245, .status = .C, .mapping = .{ .C = 0x028C } }, // # LATIN CAPITAL LETTER TURNED V
    .{ .code = 0x0246, .status = .C, .mapping = .{ .C = 0x0247 } }, // # LATIN CAPITAL LETTER E WITH STROKE
    .{ .code = 0x0248, .status = .C, .mapping = .{ .C = 0x0249 } }, // # LATIN CAPITAL LETTER J WITH STROKE
    .{ .code = 0x024A, .status = .C, .mapping = .{ .C = 0x024B } }, // # LATIN CAPITAL LETTER SMALL Q WITH HOOK TAIL
    .{ .code = 0x024C, .status = .C, .mapping = .{ .C = 0x024D } }, // # LATIN CAPITAL LETTER R WITH STROKE
    .{ .code = 0x024E, .status = .C, .mapping = .{ .C = 0x024F } }, // # LATIN CAPITAL LETTER Y WITH STROKE
    .{ .code = 0x0345, .status = .C, .mapping = .{ .C = 0x03B9 } }, // # COMBINING GREEK YPOGEGRAMMENI
    .{ .code = 0x0370, .status = .C, .mapping = .{ .C = 0x0371 } }, // # GREEK CAPITAL LETTER HETA
    .{ .code = 0x0372, .status = .C, .mapping = .{ .C = 0x0373 } }, // # GREEK CAPITAL LETTER ARCHAIC SAMPI
    .{ .code = 0x0376, .status = .C, .mapping = .{ .C = 0x0377 } }, // # GREEK CAPITAL LETTER PAMPHYLIAN DIGAMMA
    .{ .code = 0x037F, .status = .C, .mapping = .{ .C = 0x03F3 } }, // # GREEK CAPITAL LETTER YOT
    .{ .code = 0x0386, .status = .C, .mapping = .{ .C = 0x03AC } }, // # GREEK CAPITAL LETTER ALPHA WITH TONOS
    .{ .code = 0x0388, .status = .C, .mapping = .{ .C = 0x03AD } }, // # GREEK CAPITAL LETTER EPSILON WITH TONOS
    .{ .code = 0x0389, .status = .C, .mapping = .{ .C = 0x03AE } }, // # GREEK CAPITAL LETTER ETA WITH TONOS
    .{ .code = 0x038A, .status = .C, .mapping = .{ .C = 0x03AF } }, // # GREEK CAPITAL LETTER IOTA WITH TONOS
    .{ .code = 0x038C, .status = .C, .mapping = .{ .C = 0x03CC } }, // # GREEK CAPITAL LETTER OMICRON WITH TONOS
    .{ .code = 0x038E, .status = .C, .mapping = .{ .C = 0x03CD } }, // # GREEK CAPITAL LETTER UPSILON WITH TONOS
    .{ .code = 0x038F, .status = .C, .mapping = .{ .C = 0x03CE } }, // # GREEK CAPITAL LETTER OMEGA WITH TONOS
    .{ .code = 0x0390, .status = .F, .mapping = .{ .F = &[_]u21{0x03B9,0x0308,0x0301,} } }, // # GREEK SMALL LETTER IOTA WITH DIALYTIKA AND TONOS
    .{ .code = 0x0391, .status = .C, .mapping = .{ .C = 0x03B1 } }, // # GREEK CAPITAL LETTER ALPHA
    .{ .code = 0x0392, .status = .C, .mapping = .{ .C = 0x03B2 } }, // # GREEK CAPITAL LETTER BETA
    .{ .code = 0x0393, .status = .C, .mapping = .{ .C = 0x03B3 } }, // # GREEK CAPITAL LETTER GAMMA
    .{ .code = 0x0394, .status = .C, .mapping = .{ .C = 0x03B4 } }, // # GREEK CAPITAL LETTER DELTA
    .{ .code = 0x0395, .status = .C, .mapping = .{ .C = 0x03B5 } }, // # GREEK CAPITAL LETTER EPSILON
    .{ .code = 0x0396, .status = .C, .mapping = .{ .C = 0x03B6 } }, // # GREEK CAPITAL LETTER ZETA
    .{ .code = 0x0397, .status = .C, .mapping = .{ .C = 0x03B7 } }, // # GREEK CAPITAL LETTER ETA
    .{ .code = 0x0398, .status = .C, .mapping = .{ .C = 0x03B8 } }, // # GREEK CAPITAL LETTER THETA
    .{ .code = 0x0399, .status = .C, .mapping = .{ .C = 0x03B9 } }, // # GREEK CAPITAL LETTER IOTA
    .{ .code = 0x039A, .status = .C, .mapping = .{ .C = 0x03BA } }, // # GREEK CAPITAL LETTER KAPPA
    .{ .code = 0x039B, .status = .C, .mapping = .{ .C = 0x03BB } }, // # GREEK CAPITAL LETTER LAMDA
    .{ .code = 0x039C, .status = .C, .mapping = .{ .C = 0x03BC } }, // # GREEK CAPITAL LETTER MU
    .{ .code = 0x039D, .status = .C, .mapping = .{ .C = 0x03BD } }, // # GREEK CAPITAL LETTER NU
    .{ .code = 0x039E, .status = .C, .mapping = .{ .C = 0x03BE } }, // # GREEK CAPITAL LETTER XI
    .{ .code = 0x039F, .status = .C, .mapping = .{ .C = 0x03BF } }, // # GREEK CAPITAL LETTER OMICRON
    .{ .code = 0x03A0, .status = .C, .mapping = .{ .C = 0x03C0 } }, // # GREEK CAPITAL LETTER PI
    .{ .code = 0x03A1, .status = .C, .mapping = .{ .C = 0x03C1 } }, // # GREEK CAPITAL LETTER RHO
    .{ .code = 0x03A3, .status = .C, .mapping = .{ .C = 0x03C3 } }, // # GREEK CAPITAL LETTER SIGMA
    .{ .code = 0x03A4, .status = .C, .mapping = .{ .C = 0x03C4 } }, // # GREEK CAPITAL LETTER TAU
    .{ .code = 0x03A5, .status = .C, .mapping = .{ .C = 0x03C5 } }, // # GREEK CAPITAL LETTER UPSILON
    .{ .code = 0x03A6, .status = .C, .mapping = .{ .C = 0x03C6 } }, // # GREEK CAPITAL LETTER PHI
    .{ .code = 0x03A7, .status = .C, .mapping = .{ .C = 0x03C7 } }, // # GREEK CAPITAL LETTER CHI
    .{ .code = 0x03A8, .status = .C, .mapping = .{ .C = 0x03C8 } }, // # GREEK CAPITAL LETTER PSI
    .{ .code = 0x03A9, .status = .C, .mapping = .{ .C = 0x03C9 } }, // # GREEK CAPITAL LETTER OMEGA
    .{ .code = 0x03AA, .status = .C, .mapping = .{ .C = 0x03CA } }, // # GREEK CAPITAL LETTER IOTA WITH DIALYTIKA
    .{ .code = 0x03AB, .status = .C, .mapping = .{ .C = 0x03CB } }, // # GREEK CAPITAL LETTER UPSILON WITH DIALYTIKA
    .{ .code = 0x03B0, .status = .F, .mapping = .{ .F = &[_]u21{0x03C5,0x0308,0x0301,} } }, // # GREEK SMALL LETTER UPSILON WITH DIALYTIKA AND TONOS
    .{ .code = 0x03C2, .status = .C, .mapping = .{ .C = 0x03C3 } }, // # GREEK SMALL LETTER FINAL SIGMA
    .{ .code = 0x03CF, .status = .C, .mapping = .{ .C = 0x03D7 } }, // # GREEK CAPITAL KAI SYMBOL
    .{ .code = 0x03D0, .status = .C, .mapping = .{ .C = 0x03B2 } }, // # GREEK BETA SYMBOL
    .{ .code = 0x03D1, .status = .C, .mapping = .{ .C = 0x03B8 } }, // # GREEK THETA SYMBOL
    .{ .code = 0x03D5, .status = .C, .mapping = .{ .C = 0x03C6 } }, // # GREEK PHI SYMBOL
    .{ .code = 0x03D6, .status = .C, .mapping = .{ .C = 0x03C0 } }, // # GREEK PI SYMBOL
    .{ .code = 0x03D8, .status = .C, .mapping = .{ .C = 0x03D9 } }, // # GREEK LETTER ARCHAIC KOPPA
    .{ .code = 0x03DA, .status = .C, .mapping = .{ .C = 0x03DB } }, // # GREEK LETTER STIGMA
    .{ .code = 0x03DC, .status = .C, .mapping = .{ .C = 0x03DD } }, // # GREEK LETTER DIGAMMA
    .{ .code = 0x03DE, .status = .C, .mapping = .{ .C = 0x03DF } }, // # GREEK LETTER KOPPA
    .{ .code = 0x03E0, .status = .C, .mapping = .{ .C = 0x03E1 } }, // # GREEK LETTER SAMPI
    .{ .code = 0x03E2, .status = .C, .mapping = .{ .C = 0x03E3 } }, // # COPTIC CAPITAL LETTER SHEI
    .{ .code = 0x03E4, .status = .C, .mapping = .{ .C = 0x03E5 } }, // # COPTIC CAPITAL LETTER FEI
    .{ .code = 0x03E6, .status = .C, .mapping = .{ .C = 0x03E7 } }, // # COPTIC CAPITAL LETTER KHEI
    .{ .code = 0x03E8, .status = .C, .mapping = .{ .C = 0x03E9 } }, // # COPTIC CAPITAL LETTER HORI
    .{ .code = 0x03EA, .status = .C, .mapping = .{ .C = 0x03EB } }, // # COPTIC CAPITAL LETTER GANGIA
    .{ .code = 0x03EC, .status = .C, .mapping = .{ .C = 0x03ED } }, // # COPTIC CAPITAL LETTER SHIMA
    .{ .code = 0x03EE, .status = .C, .mapping = .{ .C = 0x03EF } }, // # COPTIC CAPITAL LETTER DEI
    .{ .code = 0x03F0, .status = .C, .mapping = .{ .C = 0x03BA } }, // # GREEK KAPPA SYMBOL
    .{ .code = 0x03F1, .status = .C, .mapping = .{ .C = 0x03C1 } }, // # GREEK RHO SYMBOL
    .{ .code = 0x03F4, .status = .C, .mapping = .{ .C = 0x03B8 } }, // # GREEK CAPITAL THETA SYMBOL
    .{ .code = 0x03F5, .status = .C, .mapping = .{ .C = 0x03B5 } }, // # GREEK LUNATE EPSILON SYMBOL
    .{ .code = 0x03F7, .status = .C, .mapping = .{ .C = 0x03F8 } }, // # GREEK CAPITAL LETTER SHO
    .{ .code = 0x03F9, .status = .C, .mapping = .{ .C = 0x03F2 } }, // # GREEK CAPITAL LUNATE SIGMA SYMBOL
    .{ .code = 0x03FA, .status = .C, .mapping = .{ .C = 0x03FB } }, // # GREEK CAPITAL LETTER SAN
    .{ .code = 0x03FD, .status = .C, .mapping = .{ .C = 0x037B } }, // # GREEK CAPITAL REVERSED LUNATE SIGMA SYMBOL
    .{ .code = 0x03FE, .status = .C, .mapping = .{ .C = 0x037C } }, // # GREEK CAPITAL DOTTED LUNATE SIGMA SYMBOL
    .{ .code = 0x03FF, .status = .C, .mapping = .{ .C = 0x037D } }, // # GREEK CAPITAL REVERSED DOTTED LUNATE SIGMA SYMBOL
    .{ .code = 0x0400, .status = .C, .mapping = .{ .C = 0x0450 } }, // # CYRILLIC CAPITAL LETTER IE WITH GRAVE
    .{ .code = 0x0401, .status = .C, .mapping = .{ .C = 0x0451 } }, // # CYRILLIC CAPITAL LETTER IO
    .{ .code = 0x0402, .status = .C, .mapping = .{ .C = 0x0452 } }, // # CYRILLIC CAPITAL LETTER DJE
    .{ .code = 0x0403, .status = .C, .mapping = .{ .C = 0x0453 } }, // # CYRILLIC CAPITAL LETTER GJE
    .{ .code = 0x0404, .status = .C, .mapping = .{ .C = 0x0454 } }, // # CYRILLIC CAPITAL LETTER UKRAINIAN IE
    .{ .code = 0x0405, .status = .C, .mapping = .{ .C = 0x0455 } }, // # CYRILLIC CAPITAL LETTER DZE
    .{ .code = 0x0406, .status = .C, .mapping = .{ .C = 0x0456 } }, // # CYRILLIC CAPITAL LETTER BYELORUSSIAN-UKRAINIAN I
    .{ .code = 0x0407, .status = .C, .mapping = .{ .C = 0x0457 } }, // # CYRILLIC CAPITAL LETTER YI
    .{ .code = 0x0408, .status = .C, .mapping = .{ .C = 0x0458 } }, // # CYRILLIC CAPITAL LETTER JE
    .{ .code = 0x0409, .status = .C, .mapping = .{ .C = 0x0459 } }, // # CYRILLIC CAPITAL LETTER LJE
    .{ .code = 0x040A, .status = .C, .mapping = .{ .C = 0x045A } }, // # CYRILLIC CAPITAL LETTER NJE
    .{ .code = 0x040B, .status = .C, .mapping = .{ .C = 0x045B } }, // # CYRILLIC CAPITAL LETTER TSHE
    .{ .code = 0x040C, .status = .C, .mapping = .{ .C = 0x045C } }, // # CYRILLIC CAPITAL LETTER KJE
    .{ .code = 0x040D, .status = .C, .mapping = .{ .C = 0x045D } }, // # CYRILLIC CAPITAL LETTER I WITH GRAVE
    .{ .code = 0x040E, .status = .C, .mapping = .{ .C = 0x045E } }, // # CYRILLIC CAPITAL LETTER SHORT U
    .{ .code = 0x040F, .status = .C, .mapping = .{ .C = 0x045F } }, // # CYRILLIC CAPITAL LETTER DZHE
    .{ .code = 0x0410, .status = .C, .mapping = .{ .C = 0x0430 } }, // # CYRILLIC CAPITAL LETTER A
    .{ .code = 0x0411, .status = .C, .mapping = .{ .C = 0x0431 } }, // # CYRILLIC CAPITAL LETTER BE
    .{ .code = 0x0412, .status = .C, .mapping = .{ .C = 0x0432 } }, // # CYRILLIC CAPITAL LETTER VE
    .{ .code = 0x0413, .status = .C, .mapping = .{ .C = 0x0433 } }, // # CYRILLIC CAPITAL LETTER GHE
    .{ .code = 0x0414, .status = .C, .mapping = .{ .C = 0x0434 } }, // # CYRILLIC CAPITAL LETTER DE
    .{ .code = 0x0415, .status = .C, .mapping = .{ .C = 0x0435 } }, // # CYRILLIC CAPITAL LETTER IE
    .{ .code = 0x0416, .status = .C, .mapping = .{ .C = 0x0436 } }, // # CYRILLIC CAPITAL LETTER ZHE
    .{ .code = 0x0417, .status = .C, .mapping = .{ .C = 0x0437 } }, // # CYRILLIC CAPITAL LETTER ZE
    .{ .code = 0x0418, .status = .C, .mapping = .{ .C = 0x0438 } }, // # CYRILLIC CAPITAL LETTER I
    .{ .code = 0x0419, .status = .C, .mapping = .{ .C = 0x0439 } }, // # CYRILLIC CAPITAL LETTER SHORT I
    .{ .code = 0x041A, .status = .C, .mapping = .{ .C = 0x043A } }, // # CYRILLIC CAPITAL LETTER KA
    .{ .code = 0x041B, .status = .C, .mapping = .{ .C = 0x043B } }, // # CYRILLIC CAPITAL LETTER EL
    .{ .code = 0x041C, .status = .C, .mapping = .{ .C = 0x043C } }, // # CYRILLIC CAPITAL LETTER EM
    .{ .code = 0x041D, .status = .C, .mapping = .{ .C = 0x043D } }, // # CYRILLIC CAPITAL LETTER EN
    .{ .code = 0x041E, .status = .C, .mapping = .{ .C = 0x043E } }, // # CYRILLIC CAPITAL LETTER O
    .{ .code = 0x041F, .status = .C, .mapping = .{ .C = 0x043F } }, // # CYRILLIC CAPITAL LETTER PE
    .{ .code = 0x0420, .status = .C, .mapping = .{ .C = 0x0440 } }, // # CYRILLIC CAPITAL LETTER ER
    .{ .code = 0x0421, .status = .C, .mapping = .{ .C = 0x0441 } }, // # CYRILLIC CAPITAL LETTER ES
    .{ .code = 0x0422, .status = .C, .mapping = .{ .C = 0x0442 } }, // # CYRILLIC CAPITAL LETTER TE
    .{ .code = 0x0423, .status = .C, .mapping = .{ .C = 0x0443 } }, // # CYRILLIC CAPITAL LETTER U
    .{ .code = 0x0424, .status = .C, .mapping = .{ .C = 0x0444 } }, // # CYRILLIC CAPITAL LETTER EF
    .{ .code = 0x0425, .status = .C, .mapping = .{ .C = 0x0445 } }, // # CYRILLIC CAPITAL LETTER HA
    .{ .code = 0x0426, .status = .C, .mapping = .{ .C = 0x0446 } }, // # CYRILLIC CAPITAL LETTER TSE
    .{ .code = 0x0427, .status = .C, .mapping = .{ .C = 0x0447 } }, // # CYRILLIC CAPITAL LETTER CHE
    .{ .code = 0x0428, .status = .C, .mapping = .{ .C = 0x0448 } }, // # CYRILLIC CAPITAL LETTER SHA
    .{ .code = 0x0429, .status = .C, .mapping = .{ .C = 0x0449 } }, // # CYRILLIC CAPITAL LETTER SHCHA
    .{ .code = 0x042A, .status = .C, .mapping = .{ .C = 0x044A } }, // # CYRILLIC CAPITAL LETTER HARD SIGN
    .{ .code = 0x042B, .status = .C, .mapping = .{ .C = 0x044B } }, // # CYRILLIC CAPITAL LETTER YERU
    .{ .code = 0x042C, .status = .C, .mapping = .{ .C = 0x044C } }, // # CYRILLIC CAPITAL LETTER SOFT SIGN
    .{ .code = 0x042D, .status = .C, .mapping = .{ .C = 0x044D } }, // # CYRILLIC CAPITAL LETTER E
    .{ .code = 0x042E, .status = .C, .mapping = .{ .C = 0x044E } }, // # CYRILLIC CAPITAL LETTER YU
    .{ .code = 0x042F, .status = .C, .mapping = .{ .C = 0x044F } }, // # CYRILLIC CAPITAL LETTER YA
    .{ .code = 0x0460, .status = .C, .mapping = .{ .C = 0x0461 } }, // # CYRILLIC CAPITAL LETTER OMEGA
    .{ .code = 0x0462, .status = .C, .mapping = .{ .C = 0x0463 } }, // # CYRILLIC CAPITAL LETTER YAT
    .{ .code = 0x0464, .status = .C, .mapping = .{ .C = 0x0465 } }, // # CYRILLIC CAPITAL LETTER IOTIFIED E
    .{ .code = 0x0466, .status = .C, .mapping = .{ .C = 0x0467 } }, // # CYRILLIC CAPITAL LETTER LITTLE YUS
    .{ .code = 0x0468, .status = .C, .mapping = .{ .C = 0x0469 } }, // # CYRILLIC CAPITAL LETTER IOTIFIED LITTLE YUS
    .{ .code = 0x046A, .status = .C, .mapping = .{ .C = 0x046B } }, // # CYRILLIC CAPITAL LETTER BIG YUS
    .{ .code = 0x046C, .status = .C, .mapping = .{ .C = 0x046D } }, // # CYRILLIC CAPITAL LETTER IOTIFIED BIG YUS
    .{ .code = 0x046E, .status = .C, .mapping = .{ .C = 0x046F } }, // # CYRILLIC CAPITAL LETTER KSI
    .{ .code = 0x0470, .status = .C, .mapping = .{ .C = 0x0471 } }, // # CYRILLIC CAPITAL LETTER PSI
    .{ .code = 0x0472, .status = .C, .mapping = .{ .C = 0x0473 } }, // # CYRILLIC CAPITAL LETTER FITA
    .{ .code = 0x0474, .status = .C, .mapping = .{ .C = 0x0475 } }, // # CYRILLIC CAPITAL LETTER IZHITSA
    .{ .code = 0x0476, .status = .C, .mapping = .{ .C = 0x0477 } }, // # CYRILLIC CAPITAL LETTER IZHITSA WITH DOUBLE GRAVE ACCENT
    .{ .code = 0x0478, .status = .C, .mapping = .{ .C = 0x0479 } }, // # CYRILLIC CAPITAL LETTER UK
    .{ .code = 0x047A, .status = .C, .mapping = .{ .C = 0x047B } }, // # CYRILLIC CAPITAL LETTER ROUND OMEGA
    .{ .code = 0x047C, .status = .C, .mapping = .{ .C = 0x047D } }, // # CYRILLIC CAPITAL LETTER OMEGA WITH TITLO
    .{ .code = 0x047E, .status = .C, .mapping = .{ .C = 0x047F } }, // # CYRILLIC CAPITAL LETTER OT
    .{ .code = 0x0480, .status = .C, .mapping = .{ .C = 0x0481 } }, // # CYRILLIC CAPITAL LETTER KOPPA
    .{ .code = 0x048A, .status = .C, .mapping = .{ .C = 0x048B } }, // # CYRILLIC CAPITAL LETTER SHORT I WITH TAIL
    .{ .code = 0x048C, .status = .C, .mapping = .{ .C = 0x048D } }, // # CYRILLIC CAPITAL LETTER SEMISOFT SIGN
    .{ .code = 0x048E, .status = .C, .mapping = .{ .C = 0x048F } }, // # CYRILLIC CAPITAL LETTER ER WITH TICK
    .{ .code = 0x0490, .status = .C, .mapping = .{ .C = 0x0491 } }, // # CYRILLIC CAPITAL LETTER GHE WITH UPTURN
    .{ .code = 0x0492, .status = .C, .mapping = .{ .C = 0x0493 } }, // # CYRILLIC CAPITAL LETTER GHE WITH STROKE
    .{ .code = 0x0494, .status = .C, .mapping = .{ .C = 0x0495 } }, // # CYRILLIC CAPITAL LETTER GHE WITH MIDDLE HOOK
    .{ .code = 0x0496, .status = .C, .mapping = .{ .C = 0x0497 } }, // # CYRILLIC CAPITAL LETTER ZHE WITH DESCENDER
    .{ .code = 0x0498, .status = .C, .mapping = .{ .C = 0x0499 } }, // # CYRILLIC CAPITAL LETTER ZE WITH DESCENDER
    .{ .code = 0x049A, .status = .C, .mapping = .{ .C = 0x049B } }, // # CYRILLIC CAPITAL LETTER KA WITH DESCENDER
    .{ .code = 0x049C, .status = .C, .mapping = .{ .C = 0x049D } }, // # CYRILLIC CAPITAL LETTER KA WITH VERTICAL STROKE
    .{ .code = 0x049E, .status = .C, .mapping = .{ .C = 0x049F } }, // # CYRILLIC CAPITAL LETTER KA WITH STROKE
    .{ .code = 0x04A0, .status = .C, .mapping = .{ .C = 0x04A1 } }, // # CYRILLIC CAPITAL LETTER BASHKIR KA
    .{ .code = 0x04A2, .status = .C, .mapping = .{ .C = 0x04A3 } }, // # CYRILLIC CAPITAL LETTER EN WITH DESCENDER
    .{ .code = 0x04A4, .status = .C, .mapping = .{ .C = 0x04A5 } }, // # CYRILLIC CAPITAL LIGATURE EN GHE
    .{ .code = 0x04A6, .status = .C, .mapping = .{ .C = 0x04A7 } }, // # CYRILLIC CAPITAL LETTER PE WITH MIDDLE HOOK
    .{ .code = 0x04A8, .status = .C, .mapping = .{ .C = 0x04A9 } }, // # CYRILLIC CAPITAL LETTER ABKHASIAN HA
    .{ .code = 0x04AA, .status = .C, .mapping = .{ .C = 0x04AB } }, // # CYRILLIC CAPITAL LETTER ES WITH DESCENDER
    .{ .code = 0x04AC, .status = .C, .mapping = .{ .C = 0x04AD } }, // # CYRILLIC CAPITAL LETTER TE WITH DESCENDER
    .{ .code = 0x04AE, .status = .C, .mapping = .{ .C = 0x04AF } }, // # CYRILLIC CAPITAL LETTER STRAIGHT U
    .{ .code = 0x04B0, .status = .C, .mapping = .{ .C = 0x04B1 } }, // # CYRILLIC CAPITAL LETTER STRAIGHT U WITH STROKE
    .{ .code = 0x04B2, .status = .C, .mapping = .{ .C = 0x04B3 } }, // # CYRILLIC CAPITAL LETTER HA WITH DESCENDER
    .{ .code = 0x04B4, .status = .C, .mapping = .{ .C = 0x04B5 } }, // # CYRILLIC CAPITAL LIGATURE TE TSE
    .{ .code = 0x04B6, .status = .C, .mapping = .{ .C = 0x04B7 } }, // # CYRILLIC CAPITAL LETTER CHE WITH DESCENDER
    .{ .code = 0x04B8, .status = .C, .mapping = .{ .C = 0x04B9 } }, // # CYRILLIC CAPITAL LETTER CHE WITH VERTICAL STROKE
    .{ .code = 0x04BA, .status = .C, .mapping = .{ .C = 0x04BB } }, // # CYRILLIC CAPITAL LETTER SHHA
    .{ .code = 0x04BC, .status = .C, .mapping = .{ .C = 0x04BD } }, // # CYRILLIC CAPITAL LETTER ABKHASIAN CHE
    .{ .code = 0x04BE, .status = .C, .mapping = .{ .C = 0x04BF } }, // # CYRILLIC CAPITAL LETTER ABKHASIAN CHE WITH DESCENDER
    .{ .code = 0x04C0, .status = .C, .mapping = .{ .C = 0x04CF } }, // # CYRILLIC LETTER PALOCHKA
    .{ .code = 0x04C1, .status = .C, .mapping = .{ .C = 0x04C2 } }, // # CYRILLIC CAPITAL LETTER ZHE WITH BREVE
    .{ .code = 0x04C3, .status = .C, .mapping = .{ .C = 0x04C4 } }, // # CYRILLIC CAPITAL LETTER KA WITH HOOK
    .{ .code = 0x04C5, .status = .C, .mapping = .{ .C = 0x04C6 } }, // # CYRILLIC CAPITAL LETTER EL WITH TAIL
    .{ .code = 0x04C7, .status = .C, .mapping = .{ .C = 0x04C8 } }, // # CYRILLIC CAPITAL LETTER EN WITH HOOK
    .{ .code = 0x04C9, .status = .C, .mapping = .{ .C = 0x04CA } }, // # CYRILLIC CAPITAL LETTER EN WITH TAIL
    .{ .code = 0x04CB, .status = .C, .mapping = .{ .C = 0x04CC } }, // # CYRILLIC CAPITAL LETTER KHAKASSIAN CHE
    .{ .code = 0x04CD, .status = .C, .mapping = .{ .C = 0x04CE } }, // # CYRILLIC CAPITAL LETTER EM WITH TAIL
    .{ .code = 0x04D0, .status = .C, .mapping = .{ .C = 0x04D1 } }, // # CYRILLIC CAPITAL LETTER A WITH BREVE
    .{ .code = 0x04D2, .status = .C, .mapping = .{ .C = 0x04D3 } }, // # CYRILLIC CAPITAL LETTER A WITH DIAERESIS
    .{ .code = 0x04D4, .status = .C, .mapping = .{ .C = 0x04D5 } }, // # CYRILLIC CAPITAL LIGATURE A IE
    .{ .code = 0x04D6, .status = .C, .mapping = .{ .C = 0x04D7 } }, // # CYRILLIC CAPITAL LETTER IE WITH BREVE
    .{ .code = 0x04D8, .status = .C, .mapping = .{ .C = 0x04D9 } }, // # CYRILLIC CAPITAL LETTER SCHWA
    .{ .code = 0x04DA, .status = .C, .mapping = .{ .C = 0x04DB } }, // # CYRILLIC CAPITAL LETTER SCHWA WITH DIAERESIS
    .{ .code = 0x04DC, .status = .C, .mapping = .{ .C = 0x04DD } }, // # CYRILLIC CAPITAL LETTER ZHE WITH DIAERESIS
    .{ .code = 0x04DE, .status = .C, .mapping = .{ .C = 0x04DF } }, // # CYRILLIC CAPITAL LETTER ZE WITH DIAERESIS
    .{ .code = 0x04E0, .status = .C, .mapping = .{ .C = 0x04E1 } }, // # CYRILLIC CAPITAL LETTER ABKHASIAN DZE
    .{ .code = 0x04E2, .status = .C, .mapping = .{ .C = 0x04E3 } }, // # CYRILLIC CAPITAL LETTER I WITH MACRON
    .{ .code = 0x04E4, .status = .C, .mapping = .{ .C = 0x04E5 } }, // # CYRILLIC CAPITAL LETTER I WITH DIAERESIS
    .{ .code = 0x04E6, .status = .C, .mapping = .{ .C = 0x04E7 } }, // # CYRILLIC CAPITAL LETTER O WITH DIAERESIS
    .{ .code = 0x04E8, .status = .C, .mapping = .{ .C = 0x04E9 } }, // # CYRILLIC CAPITAL LETTER BARRED O
    .{ .code = 0x04EA, .status = .C, .mapping = .{ .C = 0x04EB } }, // # CYRILLIC CAPITAL LETTER BARRED O WITH DIAERESIS
    .{ .code = 0x04EC, .status = .C, .mapping = .{ .C = 0x04ED } }, // # CYRILLIC CAPITAL LETTER E WITH DIAERESIS
    .{ .code = 0x04EE, .status = .C, .mapping = .{ .C = 0x04EF } }, // # CYRILLIC CAPITAL LETTER U WITH MACRON
    .{ .code = 0x04F0, .status = .C, .mapping = .{ .C = 0x04F1 } }, // # CYRILLIC CAPITAL LETTER U WITH DIAERESIS
    .{ .code = 0x04F2, .status = .C, .mapping = .{ .C = 0x04F3 } }, // # CYRILLIC CAPITAL LETTER U WITH DOUBLE ACUTE
    .{ .code = 0x04F4, .status = .C, .mapping = .{ .C = 0x04F5 } }, // # CYRILLIC CAPITAL LETTER CHE WITH DIAERESIS
    .{ .code = 0x04F6, .status = .C, .mapping = .{ .C = 0x04F7 } }, // # CYRILLIC CAPITAL LETTER GHE WITH DESCENDER
    .{ .code = 0x04F8, .status = .C, .mapping = .{ .C = 0x04F9 } }, // # CYRILLIC CAPITAL LETTER YERU WITH DIAERESIS
    .{ .code = 0x04FA, .status = .C, .mapping = .{ .C = 0x04FB } }, // # CYRILLIC CAPITAL LETTER GHE WITH STROKE AND HOOK
    .{ .code = 0x04FC, .status = .C, .mapping = .{ .C = 0x04FD } }, // # CYRILLIC CAPITAL LETTER HA WITH HOOK
    .{ .code = 0x04FE, .status = .C, .mapping = .{ .C = 0x04FF } }, // # CYRILLIC CAPITAL LETTER HA WITH STROKE
    .{ .code = 0x0500, .status = .C, .mapping = .{ .C = 0x0501 } }, // # CYRILLIC CAPITAL LETTER KOMI DE
    .{ .code = 0x0502, .status = .C, .mapping = .{ .C = 0x0503 } }, // # CYRILLIC CAPITAL LETTER KOMI DJE
    .{ .code = 0x0504, .status = .C, .mapping = .{ .C = 0x0505 } }, // # CYRILLIC CAPITAL LETTER KOMI ZJE
    .{ .code = 0x0506, .status = .C, .mapping = .{ .C = 0x0507 } }, // # CYRILLIC CAPITAL LETTER KOMI DZJE
    .{ .code = 0x0508, .status = .C, .mapping = .{ .C = 0x0509 } }, // # CYRILLIC CAPITAL LETTER KOMI LJE
    .{ .code = 0x050A, .status = .C, .mapping = .{ .C = 0x050B } }, // # CYRILLIC CAPITAL LETTER KOMI NJE
    .{ .code = 0x050C, .status = .C, .mapping = .{ .C = 0x050D } }, // # CYRILLIC CAPITAL LETTER KOMI SJE
    .{ .code = 0x050E, .status = .C, .mapping = .{ .C = 0x050F } }, // # CYRILLIC CAPITAL LETTER KOMI TJE
    .{ .code = 0x0510, .status = .C, .mapping = .{ .C = 0x0511 } }, // # CYRILLIC CAPITAL LETTER REVERSED ZE
    .{ .code = 0x0512, .status = .C, .mapping = .{ .C = 0x0513 } }, // # CYRILLIC CAPITAL LETTER EL WITH HOOK
    .{ .code = 0x0514, .status = .C, .mapping = .{ .C = 0x0515 } }, // # CYRILLIC CAPITAL LETTER LHA
    .{ .code = 0x0516, .status = .C, .mapping = .{ .C = 0x0517 } }, // # CYRILLIC CAPITAL LETTER RHA
    .{ .code = 0x0518, .status = .C, .mapping = .{ .C = 0x0519 } }, // # CYRILLIC CAPITAL LETTER YAE
    .{ .code = 0x051A, .status = .C, .mapping = .{ .C = 0x051B } }, // # CYRILLIC CAPITAL LETTER QA
    .{ .code = 0x051C, .status = .C, .mapping = .{ .C = 0x051D } }, // # CYRILLIC CAPITAL LETTER WE
    .{ .code = 0x051E, .status = .C, .mapping = .{ .C = 0x051F } }, // # CYRILLIC CAPITAL LETTER ALEUT KA
    .{ .code = 0x0520, .status = .C, .mapping = .{ .C = 0x0521 } }, // # CYRILLIC CAPITAL LETTER EL WITH MIDDLE HOOK
    .{ .code = 0x0522, .status = .C, .mapping = .{ .C = 0x0523 } }, // # CYRILLIC CAPITAL LETTER EN WITH MIDDLE HOOK
    .{ .code = 0x0524, .status = .C, .mapping = .{ .C = 0x0525 } }, // # CYRILLIC CAPITAL LETTER PE WITH DESCENDER
    .{ .code = 0x0526, .status = .C, .mapping = .{ .C = 0x0527 } }, // # CYRILLIC CAPITAL LETTER SHHA WITH DESCENDER
    .{ .code = 0x0528, .status = .C, .mapping = .{ .C = 0x0529 } }, // # CYRILLIC CAPITAL LETTER EN WITH LEFT HOOK
    .{ .code = 0x052A, .status = .C, .mapping = .{ .C = 0x052B } }, // # CYRILLIC CAPITAL LETTER DZZHE
    .{ .code = 0x052C, .status = .C, .mapping = .{ .C = 0x052D } }, // # CYRILLIC CAPITAL LETTER DCHE
    .{ .code = 0x052E, .status = .C, .mapping = .{ .C = 0x052F } }, // # CYRILLIC CAPITAL LETTER EL WITH DESCENDER
    .{ .code = 0x0531, .status = .C, .mapping = .{ .C = 0x0561 } }, // # ARMENIAN CAPITAL LETTER AYB
    .{ .code = 0x0532, .status = .C, .mapping = .{ .C = 0x0562 } }, // # ARMENIAN CAPITAL LETTER BEN
    .{ .code = 0x0533, .status = .C, .mapping = .{ .C = 0x0563 } }, // # ARMENIAN CAPITAL LETTER GIM
    .{ .code = 0x0534, .status = .C, .mapping = .{ .C = 0x0564 } }, // # ARMENIAN CAPITAL LETTER DA
    .{ .code = 0x0535, .status = .C, .mapping = .{ .C = 0x0565 } }, // # ARMENIAN CAPITAL LETTER ECH
    .{ .code = 0x0536, .status = .C, .mapping = .{ .C = 0x0566 } }, // # ARMENIAN CAPITAL LETTER ZA
    .{ .code = 0x0537, .status = .C, .mapping = .{ .C = 0x0567 } }, // # ARMENIAN CAPITAL LETTER EH
    .{ .code = 0x0538, .status = .C, .mapping = .{ .C = 0x0568 } }, // # ARMENIAN CAPITAL LETTER ET
    .{ .code = 0x0539, .status = .C, .mapping = .{ .C = 0x0569 } }, // # ARMENIAN CAPITAL LETTER TO
    .{ .code = 0x053A, .status = .C, .mapping = .{ .C = 0x056A } }, // # ARMENIAN CAPITAL LETTER ZHE
    .{ .code = 0x053B, .status = .C, .mapping = .{ .C = 0x056B } }, // # ARMENIAN CAPITAL LETTER INI
    .{ .code = 0x053C, .status = .C, .mapping = .{ .C = 0x056C } }, // # ARMENIAN CAPITAL LETTER LIWN
    .{ .code = 0x053D, .status = .C, .mapping = .{ .C = 0x056D } }, // # ARMENIAN CAPITAL LETTER XEH
    .{ .code = 0x053E, .status = .C, .mapping = .{ .C = 0x056E } }, // # ARMENIAN CAPITAL LETTER CA
    .{ .code = 0x053F, .status = .C, .mapping = .{ .C = 0x056F } }, // # ARMENIAN CAPITAL LETTER KEN
    .{ .code = 0x0540, .status = .C, .mapping = .{ .C = 0x0570 } }, // # ARMENIAN CAPITAL LETTER HO
    .{ .code = 0x0541, .status = .C, .mapping = .{ .C = 0x0571 } }, // # ARMENIAN CAPITAL LETTER JA
    .{ .code = 0x0542, .status = .C, .mapping = .{ .C = 0x0572 } }, // # ARMENIAN CAPITAL LETTER GHAD
    .{ .code = 0x0543, .status = .C, .mapping = .{ .C = 0x0573 } }, // # ARMENIAN CAPITAL LETTER CHEH
    .{ .code = 0x0544, .status = .C, .mapping = .{ .C = 0x0574 } }, // # ARMENIAN CAPITAL LETTER MEN
    .{ .code = 0x0545, .status = .C, .mapping = .{ .C = 0x0575 } }, // # ARMENIAN CAPITAL LETTER YI
    .{ .code = 0x0546, .status = .C, .mapping = .{ .C = 0x0576 } }, // # ARMENIAN CAPITAL LETTER NOW
    .{ .code = 0x0547, .status = .C, .mapping = .{ .C = 0x0577 } }, // # ARMENIAN CAPITAL LETTER SHA
    .{ .code = 0x0548, .status = .C, .mapping = .{ .C = 0x0578 } }, // # ARMENIAN CAPITAL LETTER VO
    .{ .code = 0x0549, .status = .C, .mapping = .{ .C = 0x0579 } }, // # ARMENIAN CAPITAL LETTER CHA
    .{ .code = 0x054A, .status = .C, .mapping = .{ .C = 0x057A } }, // # ARMENIAN CAPITAL LETTER PEH
    .{ .code = 0x054B, .status = .C, .mapping = .{ .C = 0x057B } }, // # ARMENIAN CAPITAL LETTER JHEH
    .{ .code = 0x054C, .status = .C, .mapping = .{ .C = 0x057C } }, // # ARMENIAN CAPITAL LETTER RA
    .{ .code = 0x054D, .status = .C, .mapping = .{ .C = 0x057D } }, // # ARMENIAN CAPITAL LETTER SEH
    .{ .code = 0x054E, .status = .C, .mapping = .{ .C = 0x057E } }, // # ARMENIAN CAPITAL LETTER VEW
    .{ .code = 0x054F, .status = .C, .mapping = .{ .C = 0x057F } }, // # ARMENIAN CAPITAL LETTER TIWN
    .{ .code = 0x0550, .status = .C, .mapping = .{ .C = 0x0580 } }, // # ARMENIAN CAPITAL LETTER REH
    .{ .code = 0x0551, .status = .C, .mapping = .{ .C = 0x0581 } }, // # ARMENIAN CAPITAL LETTER CO
    .{ .code = 0x0552, .status = .C, .mapping = .{ .C = 0x0582 } }, // # ARMENIAN CAPITAL LETTER YIWN
    .{ .code = 0x0553, .status = .C, .mapping = .{ .C = 0x0583 } }, // # ARMENIAN CAPITAL LETTER PIWR
    .{ .code = 0x0554, .status = .C, .mapping = .{ .C = 0x0584 } }, // # ARMENIAN CAPITAL LETTER KEH
    .{ .code = 0x0555, .status = .C, .mapping = .{ .C = 0x0585 } }, // # ARMENIAN CAPITAL LETTER OH
    .{ .code = 0x0556, .status = .C, .mapping = .{ .C = 0x0586 } }, // # ARMENIAN CAPITAL LETTER FEH
    .{ .code = 0x0587, .status = .F, .mapping = .{ .F = &[_]u21{0x0565,0x0582,} } }, // # ARMENIAN SMALL LIGATURE ECH YIWN
    .{ .code = 0x10A0, .status = .C, .mapping = .{ .C = 0x2D00 } }, // # GEORGIAN CAPITAL LETTER AN
    .{ .code = 0x10A1, .status = .C, .mapping = .{ .C = 0x2D01 } }, // # GEORGIAN CAPITAL LETTER BAN
    .{ .code = 0x10A2, .status = .C, .mapping = .{ .C = 0x2D02 } }, // # GEORGIAN CAPITAL LETTER GAN
    .{ .code = 0x10A3, .status = .C, .mapping = .{ .C = 0x2D03 } }, // # GEORGIAN CAPITAL LETTER DON
    .{ .code = 0x10A4, .status = .C, .mapping = .{ .C = 0x2D04 } }, // # GEORGIAN CAPITAL LETTER EN
    .{ .code = 0x10A5, .status = .C, .mapping = .{ .C = 0x2D05 } }, // # GEORGIAN CAPITAL LETTER VIN
    .{ .code = 0x10A6, .status = .C, .mapping = .{ .C = 0x2D06 } }, // # GEORGIAN CAPITAL LETTER ZEN
    .{ .code = 0x10A7, .status = .C, .mapping = .{ .C = 0x2D07 } }, // # GEORGIAN CAPITAL LETTER TAN
    .{ .code = 0x10A8, .status = .C, .mapping = .{ .C = 0x2D08 } }, // # GEORGIAN CAPITAL LETTER IN
    .{ .code = 0x10A9, .status = .C, .mapping = .{ .C = 0x2D09 } }, // # GEORGIAN CAPITAL LETTER KAN
    .{ .code = 0x10AA, .status = .C, .mapping = .{ .C = 0x2D0A } }, // # GEORGIAN CAPITAL LETTER LAS
    .{ .code = 0x10AB, .status = .C, .mapping = .{ .C = 0x2D0B } }, // # GEORGIAN CAPITAL LETTER MAN
    .{ .code = 0x10AC, .status = .C, .mapping = .{ .C = 0x2D0C } }, // # GEORGIAN CAPITAL LETTER NAR
    .{ .code = 0x10AD, .status = .C, .mapping = .{ .C = 0x2D0D } }, // # GEORGIAN CAPITAL LETTER ON
    .{ .code = 0x10AE, .status = .C, .mapping = .{ .C = 0x2D0E } }, // # GEORGIAN CAPITAL LETTER PAR
    .{ .code = 0x10AF, .status = .C, .mapping = .{ .C = 0x2D0F } }, // # GEORGIAN CAPITAL LETTER ZHAR
    .{ .code = 0x10B0, .status = .C, .mapping = .{ .C = 0x2D10 } }, // # GEORGIAN CAPITAL LETTER RAE
    .{ .code = 0x10B1, .status = .C, .mapping = .{ .C = 0x2D11 } }, // # GEORGIAN CAPITAL LETTER SAN
    .{ .code = 0x10B2, .status = .C, .mapping = .{ .C = 0x2D12 } }, // # GEORGIAN CAPITAL LETTER TAR
    .{ .code = 0x10B3, .status = .C, .mapping = .{ .C = 0x2D13 } }, // # GEORGIAN CAPITAL LETTER UN
    .{ .code = 0x10B4, .status = .C, .mapping = .{ .C = 0x2D14 } }, // # GEORGIAN CAPITAL LETTER PHAR
    .{ .code = 0x10B5, .status = .C, .mapping = .{ .C = 0x2D15 } }, // # GEORGIAN CAPITAL LETTER KHAR
    .{ .code = 0x10B6, .status = .C, .mapping = .{ .C = 0x2D16 } }, // # GEORGIAN CAPITAL LETTER GHAN
    .{ .code = 0x10B7, .status = .C, .mapping = .{ .C = 0x2D17 } }, // # GEORGIAN CAPITAL LETTER QAR
    .{ .code = 0x10B8, .status = .C, .mapping = .{ .C = 0x2D18 } }, // # GEORGIAN CAPITAL LETTER SHIN
    .{ .code = 0x10B9, .status = .C, .mapping = .{ .C = 0x2D19 } }, // # GEORGIAN CAPITAL LETTER CHIN
    .{ .code = 0x10BA, .status = .C, .mapping = .{ .C = 0x2D1A } }, // # GEORGIAN CAPITAL LETTER CAN
    .{ .code = 0x10BB, .status = .C, .mapping = .{ .C = 0x2D1B } }, // # GEORGIAN CAPITAL LETTER JIL
    .{ .code = 0x10BC, .status = .C, .mapping = .{ .C = 0x2D1C } }, // # GEORGIAN CAPITAL LETTER CIL
    .{ .code = 0x10BD, .status = .C, .mapping = .{ .C = 0x2D1D } }, // # GEORGIAN CAPITAL LETTER CHAR
    .{ .code = 0x10BE, .status = .C, .mapping = .{ .C = 0x2D1E } }, // # GEORGIAN CAPITAL LETTER XAN
    .{ .code = 0x10BF, .status = .C, .mapping = .{ .C = 0x2D1F } }, // # GEORGIAN CAPITAL LETTER JHAN
    .{ .code = 0x10C0, .status = .C, .mapping = .{ .C = 0x2D20 } }, // # GEORGIAN CAPITAL LETTER HAE
    .{ .code = 0x10C1, .status = .C, .mapping = .{ .C = 0x2D21 } }, // # GEORGIAN CAPITAL LETTER HE
    .{ .code = 0x10C2, .status = .C, .mapping = .{ .C = 0x2D22 } }, // # GEORGIAN CAPITAL LETTER HIE
    .{ .code = 0x10C3, .status = .C, .mapping = .{ .C = 0x2D23 } }, // # GEORGIAN CAPITAL LETTER WE
    .{ .code = 0x10C4, .status = .C, .mapping = .{ .C = 0x2D24 } }, // # GEORGIAN CAPITAL LETTER HAR
    .{ .code = 0x10C5, .status = .C, .mapping = .{ .C = 0x2D25 } }, // # GEORGIAN CAPITAL LETTER HOE
    .{ .code = 0x10C7, .status = .C, .mapping = .{ .C = 0x2D27 } }, // # GEORGIAN CAPITAL LETTER YN
    .{ .code = 0x10CD, .status = .C, .mapping = .{ .C = 0x2D2D } }, // # GEORGIAN CAPITAL LETTER AEN
    .{ .code = 0x13F8, .status = .C, .mapping = .{ .C = 0x13F0 } }, // # CHEROKEE SMALL LETTER YE
    .{ .code = 0x13F9, .status = .C, .mapping = .{ .C = 0x13F1 } }, // # CHEROKEE SMALL LETTER YI
    .{ .code = 0x13FA, .status = .C, .mapping = .{ .C = 0x13F2 } }, // # CHEROKEE SMALL LETTER YO
    .{ .code = 0x13FB, .status = .C, .mapping = .{ .C = 0x13F3 } }, // # CHEROKEE SMALL LETTER YU
    .{ .code = 0x13FC, .status = .C, .mapping = .{ .C = 0x13F4 } }, // # CHEROKEE SMALL LETTER YV
    .{ .code = 0x13FD, .status = .C, .mapping = .{ .C = 0x13F5 } }, // # CHEROKEE SMALL LETTER MV
    .{ .code = 0x1C80, .status = .C, .mapping = .{ .C = 0x0432 } }, // # CYRILLIC SMALL LETTER ROUNDED VE
    .{ .code = 0x1C81, .status = .C, .mapping = .{ .C = 0x0434 } }, // # CYRILLIC SMALL LETTER LONG-LEGGED DE
    .{ .code = 0x1C82, .status = .C, .mapping = .{ .C = 0x043E } }, // # CYRILLIC SMALL LETTER NARROW O
    .{ .code = 0x1C83, .status = .C, .mapping = .{ .C = 0x0441 } }, // # CYRILLIC SMALL LETTER WIDE ES
    .{ .code = 0x1C84, .status = .C, .mapping = .{ .C = 0x0442 } }, // # CYRILLIC SMALL LETTER TALL TE
    .{ .code = 0x1C85, .status = .C, .mapping = .{ .C = 0x0442 } }, // # CYRILLIC SMALL LETTER THREE-LEGGED TE
    .{ .code = 0x1C86, .status = .C, .mapping = .{ .C = 0x044A } }, // # CYRILLIC SMALL LETTER TALL HARD SIGN
    .{ .code = 0x1C87, .status = .C, .mapping = .{ .C = 0x0463 } }, // # CYRILLIC SMALL LETTER TALL YAT
    .{ .code = 0x1C88, .status = .C, .mapping = .{ .C = 0xA64B } }, // # CYRILLIC SMALL LETTER UNBLENDED UK
    .{ .code = 0x1C90, .status = .C, .mapping = .{ .C = 0x10D0 } }, // # GEORGIAN MTAVRULI CAPITAL LETTER AN
    .{ .code = 0x1C91, .status = .C, .mapping = .{ .C = 0x10D1 } }, // # GEORGIAN MTAVRULI CAPITAL LETTER BAN
    .{ .code = 0x1C92, .status = .C, .mapping = .{ .C = 0x10D2 } }, // # GEORGIAN MTAVRULI CAPITAL LETTER GAN
    .{ .code = 0x1C93, .status = .C, .mapping = .{ .C = 0x10D3 } }, // # GEORGIAN MTAVRULI CAPITAL LETTER DON
    .{ .code = 0x1C94, .status = .C, .mapping = .{ .C = 0x10D4 } }, // # GEORGIAN MTAVRULI CAPITAL LETTER EN
    .{ .code = 0x1C95, .status = .C, .mapping = .{ .C = 0x10D5 } }, // # GEORGIAN MTAVRULI CAPITAL LETTER VIN
    .{ .code = 0x1C96, .status = .C, .mapping = .{ .C = 0x10D6 } }, // # GEORGIAN MTAVRULI CAPITAL LETTER ZEN
    .{ .code = 0x1C97, .status = .C, .mapping = .{ .C = 0x10D7 } }, // # GEORGIAN MTAVRULI CAPITAL LETTER TAN
    .{ .code = 0x1C98, .status = .C, .mapping = .{ .C = 0x10D8 } }, // # GEORGIAN MTAVRULI CAPITAL LETTER IN
    .{ .code = 0x1C99, .status = .C, .mapping = .{ .C = 0x10D9 } }, // # GEORGIAN MTAVRULI CAPITAL LETTER KAN
    .{ .code = 0x1C9A, .status = .C, .mapping = .{ .C = 0x10DA } }, // # GEORGIAN MTAVRULI CAPITAL LETTER LAS
    .{ .code = 0x1C9B, .status = .C, .mapping = .{ .C = 0x10DB } }, // # GEORGIAN MTAVRULI CAPITAL LETTER MAN
    .{ .code = 0x1C9C, .status = .C, .mapping = .{ .C = 0x10DC } }, // # GEORGIAN MTAVRULI CAPITAL LETTER NAR
    .{ .code = 0x1C9D, .status = .C, .mapping = .{ .C = 0x10DD } }, // # GEORGIAN MTAVRULI CAPITAL LETTER ON
    .{ .code = 0x1C9E, .status = .C, .mapping = .{ .C = 0x10DE } }, // # GEORGIAN MTAVRULI CAPITAL LETTER PAR
    .{ .code = 0x1C9F, .status = .C, .mapping = .{ .C = 0x10DF } }, // # GEORGIAN MTAVRULI CAPITAL LETTER ZHAR
    .{ .code = 0x1CA0, .status = .C, .mapping = .{ .C = 0x10E0 } }, // # GEORGIAN MTAVRULI CAPITAL LETTER RAE
    .{ .code = 0x1CA1, .status = .C, .mapping = .{ .C = 0x10E1 } }, // # GEORGIAN MTAVRULI CAPITAL LETTER SAN
    .{ .code = 0x1CA2, .status = .C, .mapping = .{ .C = 0x10E2 } }, // # GEORGIAN MTAVRULI CAPITAL LETTER TAR
    .{ .code = 0x1CA3, .status = .C, .mapping = .{ .C = 0x10E3 } }, // # GEORGIAN MTAVRULI CAPITAL LETTER UN
    .{ .code = 0x1CA4, .status = .C, .mapping = .{ .C = 0x10E4 } }, // # GEORGIAN MTAVRULI CAPITAL LETTER PHAR
    .{ .code = 0x1CA5, .status = .C, .mapping = .{ .C = 0x10E5 } }, // # GEORGIAN MTAVRULI CAPITAL LETTER KHAR
    .{ .code = 0x1CA6, .status = .C, .mapping = .{ .C = 0x10E6 } }, // # GEORGIAN MTAVRULI CAPITAL LETTER GHAN
    .{ .code = 0x1CA7, .status = .C, .mapping = .{ .C = 0x10E7 } }, // # GEORGIAN MTAVRULI CAPITAL LETTER QAR
    .{ .code = 0x1CA8, .status = .C, .mapping = .{ .C = 0x10E8 } }, // # GEORGIAN MTAVRULI CAPITAL LETTER SHIN
    .{ .code = 0x1CA9, .status = .C, .mapping = .{ .C = 0x10E9 } }, // # GEORGIAN MTAVRULI CAPITAL LETTER CHIN
    .{ .code = 0x1CAA, .status = .C, .mapping = .{ .C = 0x10EA } }, // # GEORGIAN MTAVRULI CAPITAL LETTER CAN
    .{ .code = 0x1CAB, .status = .C, .mapping = .{ .C = 0x10EB } }, // # GEORGIAN MTAVRULI CAPITAL LETTER JIL
    .{ .code = 0x1CAC, .status = .C, .mapping = .{ .C = 0x10EC } }, // # GEORGIAN MTAVRULI CAPITAL LETTER CIL
    .{ .code = 0x1CAD, .status = .C, .mapping = .{ .C = 0x10ED } }, // # GEORGIAN MTAVRULI CAPITAL LETTER CHAR
    .{ .code = 0x1CAE, .status = .C, .mapping = .{ .C = 0x10EE } }, // # GEORGIAN MTAVRULI CAPITAL LETTER XAN
    .{ .code = 0x1CAF, .status = .C, .mapping = .{ .C = 0x10EF } }, // # GEORGIAN MTAVRULI CAPITAL LETTER JHAN
    .{ .code = 0x1CB0, .status = .C, .mapping = .{ .C = 0x10F0 } }, // # GEORGIAN MTAVRULI CAPITAL LETTER HAE
    .{ .code = 0x1CB1, .status = .C, .mapping = .{ .C = 0x10F1 } }, // # GEORGIAN MTAVRULI CAPITAL LETTER HE
    .{ .code = 0x1CB2, .status = .C, .mapping = .{ .C = 0x10F2 } }, // # GEORGIAN MTAVRULI CAPITAL LETTER HIE
    .{ .code = 0x1CB3, .status = .C, .mapping = .{ .C = 0x10F3 } }, // # GEORGIAN MTAVRULI CAPITAL LETTER WE
    .{ .code = 0x1CB4, .status = .C, .mapping = .{ .C = 0x10F4 } }, // # GEORGIAN MTAVRULI CAPITAL LETTER HAR
    .{ .code = 0x1CB5, .status = .C, .mapping = .{ .C = 0x10F5 } }, // # GEORGIAN MTAVRULI CAPITAL LETTER HOE
    .{ .code = 0x1CB6, .status = .C, .mapping = .{ .C = 0x10F6 } }, // # GEORGIAN MTAVRULI CAPITAL LETTER FI
    .{ .code = 0x1CB7, .status = .C, .mapping = .{ .C = 0x10F7 } }, // # GEORGIAN MTAVRULI CAPITAL LETTER YN
    .{ .code = 0x1CB8, .status = .C, .mapping = .{ .C = 0x10F8 } }, // # GEORGIAN MTAVRULI CAPITAL LETTER ELIFI
    .{ .code = 0x1CB9, .status = .C, .mapping = .{ .C = 0x10F9 } }, // # GEORGIAN MTAVRULI CAPITAL LETTER TURNED GAN
    .{ .code = 0x1CBA, .status = .C, .mapping = .{ .C = 0x10FA } }, // # GEORGIAN MTAVRULI CAPITAL LETTER AIN
    .{ .code = 0x1CBD, .status = .C, .mapping = .{ .C = 0x10FD } }, // # GEORGIAN MTAVRULI CAPITAL LETTER AEN
    .{ .code = 0x1CBE, .status = .C, .mapping = .{ .C = 0x10FE } }, // # GEORGIAN MTAVRULI CAPITAL LETTER HARD SIGN
    .{ .code = 0x1CBF, .status = .C, .mapping = .{ .C = 0x10FF } }, // # GEORGIAN MTAVRULI CAPITAL LETTER LABIAL SIGN
    .{ .code = 0x1E00, .status = .C, .mapping = .{ .C = 0x1E01 } }, // # LATIN CAPITAL LETTER A WITH RING BELOW
    .{ .code = 0x1E02, .status = .C, .mapping = .{ .C = 0x1E03 } }, // # LATIN CAPITAL LETTER B WITH DOT ABOVE
    .{ .code = 0x1E04, .status = .C, .mapping = .{ .C = 0x1E05 } }, // # LATIN CAPITAL LETTER B WITH DOT BELOW
    .{ .code = 0x1E06, .status = .C, .mapping = .{ .C = 0x1E07 } }, // # LATIN CAPITAL LETTER B WITH LINE BELOW
    .{ .code = 0x1E08, .status = .C, .mapping = .{ .C = 0x1E09 } }, // # LATIN CAPITAL LETTER C WITH CEDILLA AND ACUTE
    .{ .code = 0x1E0A, .status = .C, .mapping = .{ .C = 0x1E0B } }, // # LATIN CAPITAL LETTER D WITH DOT ABOVE
    .{ .code = 0x1E0C, .status = .C, .mapping = .{ .C = 0x1E0D } }, // # LATIN CAPITAL LETTER D WITH DOT BELOW
    .{ .code = 0x1E0E, .status = .C, .mapping = .{ .C = 0x1E0F } }, // # LATIN CAPITAL LETTER D WITH LINE BELOW
    .{ .code = 0x1E10, .status = .C, .mapping = .{ .C = 0x1E11 } }, // # LATIN CAPITAL LETTER D WITH CEDILLA
    .{ .code = 0x1E12, .status = .C, .mapping = .{ .C = 0x1E13 } }, // # LATIN CAPITAL LETTER D WITH CIRCUMFLEX BELOW
    .{ .code = 0x1E14, .status = .C, .mapping = .{ .C = 0x1E15 } }, // # LATIN CAPITAL LETTER E WITH MACRON AND GRAVE
    .{ .code = 0x1E16, .status = .C, .mapping = .{ .C = 0x1E17 } }, // # LATIN CAPITAL LETTER E WITH MACRON AND ACUTE
    .{ .code = 0x1E18, .status = .C, .mapping = .{ .C = 0x1E19 } }, // # LATIN CAPITAL LETTER E WITH CIRCUMFLEX BELOW
    .{ .code = 0x1E1A, .status = .C, .mapping = .{ .C = 0x1E1B } }, // # LATIN CAPITAL LETTER E WITH TILDE BELOW
    .{ .code = 0x1E1C, .status = .C, .mapping = .{ .C = 0x1E1D } }, // # LATIN CAPITAL LETTER E WITH CEDILLA AND BREVE
    .{ .code = 0x1E1E, .status = .C, .mapping = .{ .C = 0x1E1F } }, // # LATIN CAPITAL LETTER F WITH DOT ABOVE
    .{ .code = 0x1E20, .status = .C, .mapping = .{ .C = 0x1E21 } }, // # LATIN CAPITAL LETTER G WITH MACRON
    .{ .code = 0x1E22, .status = .C, .mapping = .{ .C = 0x1E23 } }, // # LATIN CAPITAL LETTER H WITH DOT ABOVE
    .{ .code = 0x1E24, .status = .C, .mapping = .{ .C = 0x1E25 } }, // # LATIN CAPITAL LETTER H WITH DOT BELOW
    .{ .code = 0x1E26, .status = .C, .mapping = .{ .C = 0x1E27 } }, // # LATIN CAPITAL LETTER H WITH DIAERESIS
    .{ .code = 0x1E28, .status = .C, .mapping = .{ .C = 0x1E29 } }, // # LATIN CAPITAL LETTER H WITH CEDILLA
    .{ .code = 0x1E2A, .status = .C, .mapping = .{ .C = 0x1E2B } }, // # LATIN CAPITAL LETTER H WITH BREVE BELOW
    .{ .code = 0x1E2C, .status = .C, .mapping = .{ .C = 0x1E2D } }, // # LATIN CAPITAL LETTER I WITH TILDE BELOW
    .{ .code = 0x1E2E, .status = .C, .mapping = .{ .C = 0x1E2F } }, // # LATIN CAPITAL LETTER I WITH DIAERESIS AND ACUTE
    .{ .code = 0x1E30, .status = .C, .mapping = .{ .C = 0x1E31 } }, // # LATIN CAPITAL LETTER K WITH ACUTE
    .{ .code = 0x1E32, .status = .C, .mapping = .{ .C = 0x1E33 } }, // # LATIN CAPITAL LETTER K WITH DOT BELOW
    .{ .code = 0x1E34, .status = .C, .mapping = .{ .C = 0x1E35 } }, // # LATIN CAPITAL LETTER K WITH LINE BELOW
    .{ .code = 0x1E36, .status = .C, .mapping = .{ .C = 0x1E37 } }, // # LATIN CAPITAL LETTER L WITH DOT BELOW
    .{ .code = 0x1E38, .status = .C, .mapping = .{ .C = 0x1E39 } }, // # LATIN CAPITAL LETTER L WITH DOT BELOW AND MACRON
    .{ .code = 0x1E3A, .status = .C, .mapping = .{ .C = 0x1E3B } }, // # LATIN CAPITAL LETTER L WITH LINE BELOW
    .{ .code = 0x1E3C, .status = .C, .mapping = .{ .C = 0x1E3D } }, // # LATIN CAPITAL LETTER L WITH CIRCUMFLEX BELOW
    .{ .code = 0x1E3E, .status = .C, .mapping = .{ .C = 0x1E3F } }, // # LATIN CAPITAL LETTER M WITH ACUTE
    .{ .code = 0x1E40, .status = .C, .mapping = .{ .C = 0x1E41 } }, // # LATIN CAPITAL LETTER M WITH DOT ABOVE
    .{ .code = 0x1E42, .status = .C, .mapping = .{ .C = 0x1E43 } }, // # LATIN CAPITAL LETTER M WITH DOT BELOW
    .{ .code = 0x1E44, .status = .C, .mapping = .{ .C = 0x1E45 } }, // # LATIN CAPITAL LETTER N WITH DOT ABOVE
    .{ .code = 0x1E46, .status = .C, .mapping = .{ .C = 0x1E47 } }, // # LATIN CAPITAL LETTER N WITH DOT BELOW
    .{ .code = 0x1E48, .status = .C, .mapping = .{ .C = 0x1E49 } }, // # LATIN CAPITAL LETTER N WITH LINE BELOW
    .{ .code = 0x1E4A, .status = .C, .mapping = .{ .C = 0x1E4B } }, // # LATIN CAPITAL LETTER N WITH CIRCUMFLEX BELOW
    .{ .code = 0x1E4C, .status = .C, .mapping = .{ .C = 0x1E4D } }, // # LATIN CAPITAL LETTER O WITH TILDE AND ACUTE
    .{ .code = 0x1E4E, .status = .C, .mapping = .{ .C = 0x1E4F } }, // # LATIN CAPITAL LETTER O WITH TILDE AND DIAERESIS
    .{ .code = 0x1E50, .status = .C, .mapping = .{ .C = 0x1E51 } }, // # LATIN CAPITAL LETTER O WITH MACRON AND GRAVE
    .{ .code = 0x1E52, .status = .C, .mapping = .{ .C = 0x1E53 } }, // # LATIN CAPITAL LETTER O WITH MACRON AND ACUTE
    .{ .code = 0x1E54, .status = .C, .mapping = .{ .C = 0x1E55 } }, // # LATIN CAPITAL LETTER P WITH ACUTE
    .{ .code = 0x1E56, .status = .C, .mapping = .{ .C = 0x1E57 } }, // # LATIN CAPITAL LETTER P WITH DOT ABOVE
    .{ .code = 0x1E58, .status = .C, .mapping = .{ .C = 0x1E59 } }, // # LATIN CAPITAL LETTER R WITH DOT ABOVE
    .{ .code = 0x1E5A, .status = .C, .mapping = .{ .C = 0x1E5B } }, // # LATIN CAPITAL LETTER R WITH DOT BELOW
    .{ .code = 0x1E5C, .status = .C, .mapping = .{ .C = 0x1E5D } }, // # LATIN CAPITAL LETTER R WITH DOT BELOW AND MACRON
    .{ .code = 0x1E5E, .status = .C, .mapping = .{ .C = 0x1E5F } }, // # LATIN CAPITAL LETTER R WITH LINE BELOW
    .{ .code = 0x1E60, .status = .C, .mapping = .{ .C = 0x1E61 } }, // # LATIN CAPITAL LETTER S WITH DOT ABOVE
    .{ .code = 0x1E62, .status = .C, .mapping = .{ .C = 0x1E63 } }, // # LATIN CAPITAL LETTER S WITH DOT BELOW
    .{ .code = 0x1E64, .status = .C, .mapping = .{ .C = 0x1E65 } }, // # LATIN CAPITAL LETTER S WITH ACUTE AND DOT ABOVE
    .{ .code = 0x1E66, .status = .C, .mapping = .{ .C = 0x1E67 } }, // # LATIN CAPITAL LETTER S WITH CARON AND DOT ABOVE
    .{ .code = 0x1E68, .status = .C, .mapping = .{ .C = 0x1E69 } }, // # LATIN CAPITAL LETTER S WITH DOT BELOW AND DOT ABOVE
    .{ .code = 0x1E6A, .status = .C, .mapping = .{ .C = 0x1E6B } }, // # LATIN CAPITAL LETTER T WITH DOT ABOVE
    .{ .code = 0x1E6C, .status = .C, .mapping = .{ .C = 0x1E6D } }, // # LATIN CAPITAL LETTER T WITH DOT BELOW
    .{ .code = 0x1E6E, .status = .C, .mapping = .{ .C = 0x1E6F } }, // # LATIN CAPITAL LETTER T WITH LINE BELOW
    .{ .code = 0x1E70, .status = .C, .mapping = .{ .C = 0x1E71 } }, // # LATIN CAPITAL LETTER T WITH CIRCUMFLEX BELOW
    .{ .code = 0x1E72, .status = .C, .mapping = .{ .C = 0x1E73 } }, // # LATIN CAPITAL LETTER U WITH DIAERESIS BELOW
    .{ .code = 0x1E74, .status = .C, .mapping = .{ .C = 0x1E75 } }, // # LATIN CAPITAL LETTER U WITH TILDE BELOW
    .{ .code = 0x1E76, .status = .C, .mapping = .{ .C = 0x1E77 } }, // # LATIN CAPITAL LETTER U WITH CIRCUMFLEX BELOW
    .{ .code = 0x1E78, .status = .C, .mapping = .{ .C = 0x1E79 } }, // # LATIN CAPITAL LETTER U WITH TILDE AND ACUTE
    .{ .code = 0x1E7A, .status = .C, .mapping = .{ .C = 0x1E7B } }, // # LATIN CAPITAL LETTER U WITH MACRON AND DIAERESIS
    .{ .code = 0x1E7C, .status = .C, .mapping = .{ .C = 0x1E7D } }, // # LATIN CAPITAL LETTER V WITH TILDE
    .{ .code = 0x1E7E, .status = .C, .mapping = .{ .C = 0x1E7F } }, // # LATIN CAPITAL LETTER V WITH DOT BELOW
    .{ .code = 0x1E80, .status = .C, .mapping = .{ .C = 0x1E81 } }, // # LATIN CAPITAL LETTER W WITH GRAVE
    .{ .code = 0x1E82, .status = .C, .mapping = .{ .C = 0x1E83 } }, // # LATIN CAPITAL LETTER W WITH ACUTE
    .{ .code = 0x1E84, .status = .C, .mapping = .{ .C = 0x1E85 } }, // # LATIN CAPITAL LETTER W WITH DIAERESIS
    .{ .code = 0x1E86, .status = .C, .mapping = .{ .C = 0x1E87 } }, // # LATIN CAPITAL LETTER W WITH DOT ABOVE
    .{ .code = 0x1E88, .status = .C, .mapping = .{ .C = 0x1E89 } }, // # LATIN CAPITAL LETTER W WITH DOT BELOW
    .{ .code = 0x1E8A, .status = .C, .mapping = .{ .C = 0x1E8B } }, // # LATIN CAPITAL LETTER X WITH DOT ABOVE
    .{ .code = 0x1E8C, .status = .C, .mapping = .{ .C = 0x1E8D } }, // # LATIN CAPITAL LETTER X WITH DIAERESIS
    .{ .code = 0x1E8E, .status = .C, .mapping = .{ .C = 0x1E8F } }, // # LATIN CAPITAL LETTER Y WITH DOT ABOVE
    .{ .code = 0x1E90, .status = .C, .mapping = .{ .C = 0x1E91 } }, // # LATIN CAPITAL LETTER Z WITH CIRCUMFLEX
    .{ .code = 0x1E92, .status = .C, .mapping = .{ .C = 0x1E93 } }, // # LATIN CAPITAL LETTER Z WITH DOT BELOW
    .{ .code = 0x1E94, .status = .C, .mapping = .{ .C = 0x1E95 } }, // # LATIN CAPITAL LETTER Z WITH LINE BELOW
    .{ .code = 0x1E96, .status = .F, .mapping = .{ .F = &[_]u21{0x0068,0x0331,} } }, // # LATIN SMALL LETTER H WITH LINE BELOW
    .{ .code = 0x1E97, .status = .F, .mapping = .{ .F = &[_]u21{0x0074,0x0308,} } }, // # LATIN SMALL LETTER T WITH DIAERESIS
    .{ .code = 0x1E98, .status = .F, .mapping = .{ .F = &[_]u21{0x0077,0x030A,} } }, // # LATIN SMALL LETTER W WITH RING ABOVE
    .{ .code = 0x1E99, .status = .F, .mapping = .{ .F = &[_]u21{0x0079,0x030A,} } }, // # LATIN SMALL LETTER Y WITH RING ABOVE
    .{ .code = 0x1E9A, .status = .F, .mapping = .{ .F = &[_]u21{0x0061,0x02BE,} } }, // # LATIN SMALL LETTER A WITH RIGHT HALF RING
    .{ .code = 0x1E9B, .status = .C, .mapping = .{ .C = 0x1E61 } }, // # LATIN SMALL LETTER LONG S WITH DOT ABOVE
    .{ .code = 0x1E9E, .status = .F, .mapping = .{ .F = &[_]u21{0x0073,0x0073,} } }, // # LATIN CAPITAL LETTER SHARP S
    .{ .code = 0x1E9E, .status = .S, .mapping = .{ .S = 0x00DF } }, // # LATIN CAPITAL LETTER SHARP S
    .{ .code = 0x1EA0, .status = .C, .mapping = .{ .C = 0x1EA1 } }, // # LATIN CAPITAL LETTER A WITH DOT BELOW
    .{ .code = 0x1EA2, .status = .C, .mapping = .{ .C = 0x1EA3 } }, // # LATIN CAPITAL LETTER A WITH HOOK ABOVE
    .{ .code = 0x1EA4, .status = .C, .mapping = .{ .C = 0x1EA5 } }, // # LATIN CAPITAL LETTER A WITH CIRCUMFLEX AND ACUTE
    .{ .code = 0x1EA6, .status = .C, .mapping = .{ .C = 0x1EA7 } }, // # LATIN CAPITAL LETTER A WITH CIRCUMFLEX AND GRAVE
    .{ .code = 0x1EA8, .status = .C, .mapping = .{ .C = 0x1EA9 } }, // # LATIN CAPITAL LETTER A WITH CIRCUMFLEX AND HOOK ABOVE
    .{ .code = 0x1EAA, .status = .C, .mapping = .{ .C = 0x1EAB } }, // # LATIN CAPITAL LETTER A WITH CIRCUMFLEX AND TILDE
    .{ .code = 0x1EAC, .status = .C, .mapping = .{ .C = 0x1EAD } }, // # LATIN CAPITAL LETTER A WITH CIRCUMFLEX AND DOT BELOW
    .{ .code = 0x1EAE, .status = .C, .mapping = .{ .C = 0x1EAF } }, // # LATIN CAPITAL LETTER A WITH BREVE AND ACUTE
    .{ .code = 0x1EB0, .status = .C, .mapping = .{ .C = 0x1EB1 } }, // # LATIN CAPITAL LETTER A WITH BREVE AND GRAVE
    .{ .code = 0x1EB2, .status = .C, .mapping = .{ .C = 0x1EB3 } }, // # LATIN CAPITAL LETTER A WITH BREVE AND HOOK ABOVE
    .{ .code = 0x1EB4, .status = .C, .mapping = .{ .C = 0x1EB5 } }, // # LATIN CAPITAL LETTER A WITH BREVE AND TILDE
    .{ .code = 0x1EB6, .status = .C, .mapping = .{ .C = 0x1EB7 } }, // # LATIN CAPITAL LETTER A WITH BREVE AND DOT BELOW
    .{ .code = 0x1EB8, .status = .C, .mapping = .{ .C = 0x1EB9 } }, // # LATIN CAPITAL LETTER E WITH DOT BELOW
    .{ .code = 0x1EBA, .status = .C, .mapping = .{ .C = 0x1EBB } }, // # LATIN CAPITAL LETTER E WITH HOOK ABOVE
    .{ .code = 0x1EBC, .status = .C, .mapping = .{ .C = 0x1EBD } }, // # LATIN CAPITAL LETTER E WITH TILDE
    .{ .code = 0x1EBE, .status = .C, .mapping = .{ .C = 0x1EBF } }, // # LATIN CAPITAL LETTER E WITH CIRCUMFLEX AND ACUTE
    .{ .code = 0x1EC0, .status = .C, .mapping = .{ .C = 0x1EC1 } }, // # LATIN CAPITAL LETTER E WITH CIRCUMFLEX AND GRAVE
    .{ .code = 0x1EC2, .status = .C, .mapping = .{ .C = 0x1EC3 } }, // # LATIN CAPITAL LETTER E WITH CIRCUMFLEX AND HOOK ABOVE
    .{ .code = 0x1EC4, .status = .C, .mapping = .{ .C = 0x1EC5 } }, // # LATIN CAPITAL LETTER E WITH CIRCUMFLEX AND TILDE
    .{ .code = 0x1EC6, .status = .C, .mapping = .{ .C = 0x1EC7 } }, // # LATIN CAPITAL LETTER E WITH CIRCUMFLEX AND DOT BELOW
    .{ .code = 0x1EC8, .status = .C, .mapping = .{ .C = 0x1EC9 } }, // # LATIN CAPITAL LETTER I WITH HOOK ABOVE
    .{ .code = 0x1ECA, .status = .C, .mapping = .{ .C = 0x1ECB } }, // # LATIN CAPITAL LETTER I WITH DOT BELOW
    .{ .code = 0x1ECC, .status = .C, .mapping = .{ .C = 0x1ECD } }, // # LATIN CAPITAL LETTER O WITH DOT BELOW
    .{ .code = 0x1ECE, .status = .C, .mapping = .{ .C = 0x1ECF } }, // # LATIN CAPITAL LETTER O WITH HOOK ABOVE
    .{ .code = 0x1ED0, .status = .C, .mapping = .{ .C = 0x1ED1 } }, // # LATIN CAPITAL LETTER O WITH CIRCUMFLEX AND ACUTE
    .{ .code = 0x1ED2, .status = .C, .mapping = .{ .C = 0x1ED3 } }, // # LATIN CAPITAL LETTER O WITH CIRCUMFLEX AND GRAVE
    .{ .code = 0x1ED4, .status = .C, .mapping = .{ .C = 0x1ED5 } }, // # LATIN CAPITAL LETTER O WITH CIRCUMFLEX AND HOOK ABOVE
    .{ .code = 0x1ED6, .status = .C, .mapping = .{ .C = 0x1ED7 } }, // # LATIN CAPITAL LETTER O WITH CIRCUMFLEX AND TILDE
    .{ .code = 0x1ED8, .status = .C, .mapping = .{ .C = 0x1ED9 } }, // # LATIN CAPITAL LETTER O WITH CIRCUMFLEX AND DOT BELOW
    .{ .code = 0x1EDA, .status = .C, .mapping = .{ .C = 0x1EDB } }, // # LATIN CAPITAL LETTER O WITH HORN AND ACUTE
    .{ .code = 0x1EDC, .status = .C, .mapping = .{ .C = 0x1EDD } }, // # LATIN CAPITAL LETTER O WITH HORN AND GRAVE
    .{ .code = 0x1EDE, .status = .C, .mapping = .{ .C = 0x1EDF } }, // # LATIN CAPITAL LETTER O WITH HORN AND HOOK ABOVE
    .{ .code = 0x1EE0, .status = .C, .mapping = .{ .C = 0x1EE1 } }, // # LATIN CAPITAL LETTER O WITH HORN AND TILDE
    .{ .code = 0x1EE2, .status = .C, .mapping = .{ .C = 0x1EE3 } }, // # LATIN CAPITAL LETTER O WITH HORN AND DOT BELOW
    .{ .code = 0x1EE4, .status = .C, .mapping = .{ .C = 0x1EE5 } }, // # LATIN CAPITAL LETTER U WITH DOT BELOW
    .{ .code = 0x1EE6, .status = .C, .mapping = .{ .C = 0x1EE7 } }, // # LATIN CAPITAL LETTER U WITH HOOK ABOVE
    .{ .code = 0x1EE8, .status = .C, .mapping = .{ .C = 0x1EE9 } }, // # LATIN CAPITAL LETTER U WITH HORN AND ACUTE
    .{ .code = 0x1EEA, .status = .C, .mapping = .{ .C = 0x1EEB } }, // # LATIN CAPITAL LETTER U WITH HORN AND GRAVE
    .{ .code = 0x1EEC, .status = .C, .mapping = .{ .C = 0x1EED } }, // # LATIN CAPITAL LETTER U WITH HORN AND HOOK ABOVE
    .{ .code = 0x1EEE, .status = .C, .mapping = .{ .C = 0x1EEF } }, // # LATIN CAPITAL LETTER U WITH HORN AND TILDE
    .{ .code = 0x1EF0, .status = .C, .mapping = .{ .C = 0x1EF1 } }, // # LATIN CAPITAL LETTER U WITH HORN AND DOT BELOW
    .{ .code = 0x1EF2, .status = .C, .mapping = .{ .C = 0x1EF3 } }, // # LATIN CAPITAL LETTER Y WITH GRAVE
    .{ .code = 0x1EF4, .status = .C, .mapping = .{ .C = 0x1EF5 } }, // # LATIN CAPITAL LETTER Y WITH DOT BELOW
    .{ .code = 0x1EF6, .status = .C, .mapping = .{ .C = 0x1EF7 } }, // # LATIN CAPITAL LETTER Y WITH HOOK ABOVE
    .{ .code = 0x1EF8, .status = .C, .mapping = .{ .C = 0x1EF9 } }, // # LATIN CAPITAL LETTER Y WITH TILDE
    .{ .code = 0x1EFA, .status = .C, .mapping = .{ .C = 0x1EFB } }, // # LATIN CAPITAL LETTER MIDDLE-WELSH LL
    .{ .code = 0x1EFC, .status = .C, .mapping = .{ .C = 0x1EFD } }, // # LATIN CAPITAL LETTER MIDDLE-WELSH V
    .{ .code = 0x1EFE, .status = .C, .mapping = .{ .C = 0x1EFF } }, // # LATIN CAPITAL LETTER Y WITH LOOP
    .{ .code = 0x1F08, .status = .C, .mapping = .{ .C = 0x1F00 } }, // # GREEK CAPITAL LETTER ALPHA WITH PSILI
    .{ .code = 0x1F09, .status = .C, .mapping = .{ .C = 0x1F01 } }, // # GREEK CAPITAL LETTER ALPHA WITH DASIA
    .{ .code = 0x1F0A, .status = .C, .mapping = .{ .C = 0x1F02 } }, // # GREEK CAPITAL LETTER ALPHA WITH PSILI AND VARIA
    .{ .code = 0x1F0B, .status = .C, .mapping = .{ .C = 0x1F03 } }, // # GREEK CAPITAL LETTER ALPHA WITH DASIA AND VARIA
    .{ .code = 0x1F0C, .status = .C, .mapping = .{ .C = 0x1F04 } }, // # GREEK CAPITAL LETTER ALPHA WITH PSILI AND OXIA
    .{ .code = 0x1F0D, .status = .C, .mapping = .{ .C = 0x1F05 } }, // # GREEK CAPITAL LETTER ALPHA WITH DASIA AND OXIA
    .{ .code = 0x1F0E, .status = .C, .mapping = .{ .C = 0x1F06 } }, // # GREEK CAPITAL LETTER ALPHA WITH PSILI AND PERISPOMENI
    .{ .code = 0x1F0F, .status = .C, .mapping = .{ .C = 0x1F07 } }, // # GREEK CAPITAL LETTER ALPHA WITH DASIA AND PERISPOMENI
    .{ .code = 0x1F18, .status = .C, .mapping = .{ .C = 0x1F10 } }, // # GREEK CAPITAL LETTER EPSILON WITH PSILI
    .{ .code = 0x1F19, .status = .C, .mapping = .{ .C = 0x1F11 } }, // # GREEK CAPITAL LETTER EPSILON WITH DASIA
    .{ .code = 0x1F1A, .status = .C, .mapping = .{ .C = 0x1F12 } }, // # GREEK CAPITAL LETTER EPSILON WITH PSILI AND VARIA
    .{ .code = 0x1F1B, .status = .C, .mapping = .{ .C = 0x1F13 } }, // # GREEK CAPITAL LETTER EPSILON WITH DASIA AND VARIA
    .{ .code = 0x1F1C, .status = .C, .mapping = .{ .C = 0x1F14 } }, // # GREEK CAPITAL LETTER EPSILON WITH PSILI AND OXIA
    .{ .code = 0x1F1D, .status = .C, .mapping = .{ .C = 0x1F15 } }, // # GREEK CAPITAL LETTER EPSILON WITH DASIA AND OXIA
    .{ .code = 0x1F28, .status = .C, .mapping = .{ .C = 0x1F20 } }, // # GREEK CAPITAL LETTER ETA WITH PSILI
    .{ .code = 0x1F29, .status = .C, .mapping = .{ .C = 0x1F21 } }, // # GREEK CAPITAL LETTER ETA WITH DASIA
    .{ .code = 0x1F2A, .status = .C, .mapping = .{ .C = 0x1F22 } }, // # GREEK CAPITAL LETTER ETA WITH PSILI AND VARIA
    .{ .code = 0x1F2B, .status = .C, .mapping = .{ .C = 0x1F23 } }, // # GREEK CAPITAL LETTER ETA WITH DASIA AND VARIA
    .{ .code = 0x1F2C, .status = .C, .mapping = .{ .C = 0x1F24 } }, // # GREEK CAPITAL LETTER ETA WITH PSILI AND OXIA
    .{ .code = 0x1F2D, .status = .C, .mapping = .{ .C = 0x1F25 } }, // # GREEK CAPITAL LETTER ETA WITH DASIA AND OXIA
    .{ .code = 0x1F2E, .status = .C, .mapping = .{ .C = 0x1F26 } }, // # GREEK CAPITAL LETTER ETA WITH PSILI AND PERISPOMENI
    .{ .code = 0x1F2F, .status = .C, .mapping = .{ .C = 0x1F27 } }, // # GREEK CAPITAL LETTER ETA WITH DASIA AND PERISPOMENI
    .{ .code = 0x1F38, .status = .C, .mapping = .{ .C = 0x1F30 } }, // # GREEK CAPITAL LETTER IOTA WITH PSILI
    .{ .code = 0x1F39, .status = .C, .mapping = .{ .C = 0x1F31 } }, // # GREEK CAPITAL LETTER IOTA WITH DASIA
    .{ .code = 0x1F3A, .status = .C, .mapping = .{ .C = 0x1F32 } }, // # GREEK CAPITAL LETTER IOTA WITH PSILI AND VARIA
    .{ .code = 0x1F3B, .status = .C, .mapping = .{ .C = 0x1F33 } }, // # GREEK CAPITAL LETTER IOTA WITH DASIA AND VARIA
    .{ .code = 0x1F3C, .status = .C, .mapping = .{ .C = 0x1F34 } }, // # GREEK CAPITAL LETTER IOTA WITH PSILI AND OXIA
    .{ .code = 0x1F3D, .status = .C, .mapping = .{ .C = 0x1F35 } }, // # GREEK CAPITAL LETTER IOTA WITH DASIA AND OXIA
    .{ .code = 0x1F3E, .status = .C, .mapping = .{ .C = 0x1F36 } }, // # GREEK CAPITAL LETTER IOTA WITH PSILI AND PERISPOMENI
    .{ .code = 0x1F3F, .status = .C, .mapping = .{ .C = 0x1F37 } }, // # GREEK CAPITAL LETTER IOTA WITH DASIA AND PERISPOMENI
    .{ .code = 0x1F48, .status = .C, .mapping = .{ .C = 0x1F40 } }, // # GREEK CAPITAL LETTER OMICRON WITH PSILI
    .{ .code = 0x1F49, .status = .C, .mapping = .{ .C = 0x1F41 } }, // # GREEK CAPITAL LETTER OMICRON WITH DASIA
    .{ .code = 0x1F4A, .status = .C, .mapping = .{ .C = 0x1F42 } }, // # GREEK CAPITAL LETTER OMICRON WITH PSILI AND VARIA
    .{ .code = 0x1F4B, .status = .C, .mapping = .{ .C = 0x1F43 } }, // # GREEK CAPITAL LETTER OMICRON WITH DASIA AND VARIA
    .{ .code = 0x1F4C, .status = .C, .mapping = .{ .C = 0x1F44 } }, // # GREEK CAPITAL LETTER OMICRON WITH PSILI AND OXIA
    .{ .code = 0x1F4D, .status = .C, .mapping = .{ .C = 0x1F45 } }, // # GREEK CAPITAL LETTER OMICRON WITH DASIA AND OXIA
    .{ .code = 0x1F50, .status = .F, .mapping = .{ .F = &[_]u21{0x03C5,0x0313,} } }, // # GREEK SMALL LETTER UPSILON WITH PSILI
    .{ .code = 0x1F52, .status = .F, .mapping = .{ .F = &[_]u21{0x03C5,0x0313,0x0300,} } }, // # GREEK SMALL LETTER UPSILON WITH PSILI AND VARIA
    .{ .code = 0x1F54, .status = .F, .mapping = .{ .F = &[_]u21{0x03C5,0x0313,0x0301,} } }, // # GREEK SMALL LETTER UPSILON WITH PSILI AND OXIA
    .{ .code = 0x1F56, .status = .F, .mapping = .{ .F = &[_]u21{0x03C5,0x0313,0x0342,} } }, // # GREEK SMALL LETTER UPSILON WITH PSILI AND PERISPOMENI
    .{ .code = 0x1F59, .status = .C, .mapping = .{ .C = 0x1F51 } }, // # GREEK CAPITAL LETTER UPSILON WITH DASIA
    .{ .code = 0x1F5B, .status = .C, .mapping = .{ .C = 0x1F53 } }, // # GREEK CAPITAL LETTER UPSILON WITH DASIA AND VARIA
    .{ .code = 0x1F5D, .status = .C, .mapping = .{ .C = 0x1F55 } }, // # GREEK CAPITAL LETTER UPSILON WITH DASIA AND OXIA
    .{ .code = 0x1F5F, .status = .C, .mapping = .{ .C = 0x1F57 } }, // # GREEK CAPITAL LETTER UPSILON WITH DASIA AND PERISPOMENI
    .{ .code = 0x1F68, .status = .C, .mapping = .{ .C = 0x1F60 } }, // # GREEK CAPITAL LETTER OMEGA WITH PSILI
    .{ .code = 0x1F69, .status = .C, .mapping = .{ .C = 0x1F61 } }, // # GREEK CAPITAL LETTER OMEGA WITH DASIA
    .{ .code = 0x1F6A, .status = .C, .mapping = .{ .C = 0x1F62 } }, // # GREEK CAPITAL LETTER OMEGA WITH PSILI AND VARIA
    .{ .code = 0x1F6B, .status = .C, .mapping = .{ .C = 0x1F63 } }, // # GREEK CAPITAL LETTER OMEGA WITH DASIA AND VARIA
    .{ .code = 0x1F6C, .status = .C, .mapping = .{ .C = 0x1F64 } }, // # GREEK CAPITAL LETTER OMEGA WITH PSILI AND OXIA
    .{ .code = 0x1F6D, .status = .C, .mapping = .{ .C = 0x1F65 } }, // # GREEK CAPITAL LETTER OMEGA WITH DASIA AND OXIA
    .{ .code = 0x1F6E, .status = .C, .mapping = .{ .C = 0x1F66 } }, // # GREEK CAPITAL LETTER OMEGA WITH PSILI AND PERISPOMENI
    .{ .code = 0x1F6F, .status = .C, .mapping = .{ .C = 0x1F67 } }, // # GREEK CAPITAL LETTER OMEGA WITH DASIA AND PERISPOMENI
    .{ .code = 0x1F80, .status = .F, .mapping = .{ .F = &[_]u21{0x1F00,0x03B9,} } }, // # GREEK SMALL LETTER ALPHA WITH PSILI AND YPOGEGRAMMENI
    .{ .code = 0x1F81, .status = .F, .mapping = .{ .F = &[_]u21{0x1F01,0x03B9,} } }, // # GREEK SMALL LETTER ALPHA WITH DASIA AND YPOGEGRAMMENI
    .{ .code = 0x1F82, .status = .F, .mapping = .{ .F = &[_]u21{0x1F02,0x03B9,} } }, // # GREEK SMALL LETTER ALPHA WITH PSILI AND VARIA AND YPOGEGRAMMENI
    .{ .code = 0x1F83, .status = .F, .mapping = .{ .F = &[_]u21{0x1F03,0x03B9,} } }, // # GREEK SMALL LETTER ALPHA WITH DASIA AND VARIA AND YPOGEGRAMMENI
    .{ .code = 0x1F84, .status = .F, .mapping = .{ .F = &[_]u21{0x1F04,0x03B9,} } }, // # GREEK SMALL LETTER ALPHA WITH PSILI AND OXIA AND YPOGEGRAMMENI
    .{ .code = 0x1F85, .status = .F, .mapping = .{ .F = &[_]u21{0x1F05,0x03B9,} } }, // # GREEK SMALL LETTER ALPHA WITH DASIA AND OXIA AND YPOGEGRAMMENI
    .{ .code = 0x1F86, .status = .F, .mapping = .{ .F = &[_]u21{0x1F06,0x03B9,} } }, // # GREEK SMALL LETTER ALPHA WITH PSILI AND PERISPOMENI AND YPOGEGRAMMENI
    .{ .code = 0x1F87, .status = .F, .mapping = .{ .F = &[_]u21{0x1F07,0x03B9,} } }, // # GREEK SMALL LETTER ALPHA WITH DASIA AND PERISPOMENI AND YPOGEGRAMMENI
    .{ .code = 0x1F88, .status = .F, .mapping = .{ .F = &[_]u21{0x1F00,0x03B9,} } }, // # GREEK CAPITAL LETTER ALPHA WITH PSILI AND PROSGEGRAMMENI
    .{ .code = 0x1F88, .status = .S, .mapping = .{ .S = 0x1F80 } }, // # GREEK CAPITAL LETTER ALPHA WITH PSILI AND PROSGEGRAMMENI
    .{ .code = 0x1F89, .status = .F, .mapping = .{ .F = &[_]u21{0x1F01,0x03B9,} } }, // # GREEK CAPITAL LETTER ALPHA WITH DASIA AND PROSGEGRAMMENI
    .{ .code = 0x1F89, .status = .S, .mapping = .{ .S = 0x1F81 } }, // # GREEK CAPITAL LETTER ALPHA WITH DASIA AND PROSGEGRAMMENI
    .{ .code = 0x1F8A, .status = .F, .mapping = .{ .F = &[_]u21{0x1F02,0x03B9,} } }, // # GREEK CAPITAL LETTER ALPHA WITH PSILI AND VARIA AND PROSGEGRAMMENI
    .{ .code = 0x1F8A, .status = .S, .mapping = .{ .S = 0x1F82 } }, // # GREEK CAPITAL LETTER ALPHA WITH PSILI AND VARIA AND PROSGEGRAMMENI
    .{ .code = 0x1F8B, .status = .F, .mapping = .{ .F = &[_]u21{0x1F03,0x03B9,} } }, // # GREEK CAPITAL LETTER ALPHA WITH DASIA AND VARIA AND PROSGEGRAMMENI
    .{ .code = 0x1F8B, .status = .S, .mapping = .{ .S = 0x1F83 } }, // # GREEK CAPITAL LETTER ALPHA WITH DASIA AND VARIA AND PROSGEGRAMMENI
    .{ .code = 0x1F8C, .status = .F, .mapping = .{ .F = &[_]u21{0x1F04,0x03B9,} } }, // # GREEK CAPITAL LETTER ALPHA WITH PSILI AND OXIA AND PROSGEGRAMMENI
    .{ .code = 0x1F8C, .status = .S, .mapping = .{ .S = 0x1F84 } }, // # GREEK CAPITAL LETTER ALPHA WITH PSILI AND OXIA AND PROSGEGRAMMENI
    .{ .code = 0x1F8D, .status = .F, .mapping = .{ .F = &[_]u21{0x1F05,0x03B9,} } }, // # GREEK CAPITAL LETTER ALPHA WITH DASIA AND OXIA AND PROSGEGRAMMENI
    .{ .code = 0x1F8D, .status = .S, .mapping = .{ .S = 0x1F85 } }, // # GREEK CAPITAL LETTER ALPHA WITH DASIA AND OXIA AND PROSGEGRAMMENI
    .{ .code = 0x1F8E, .status = .F, .mapping = .{ .F = &[_]u21{0x1F06,0x03B9,} } }, // # GREEK CAPITAL LETTER ALPHA WITH PSILI AND PERISPOMENI AND PROSGEGRAMMENI
    .{ .code = 0x1F8E, .status = .S, .mapping = .{ .S = 0x1F86 } }, // # GREEK CAPITAL LETTER ALPHA WITH PSILI AND PERISPOMENI AND PROSGEGRAMMENI
    .{ .code = 0x1F8F, .status = .F, .mapping = .{ .F = &[_]u21{0x1F07,0x03B9,} } }, // # GREEK CAPITAL LETTER ALPHA WITH DASIA AND PERISPOMENI AND PROSGEGRAMMENI
    .{ .code = 0x1F8F, .status = .S, .mapping = .{ .S = 0x1F87 } }, // # GREEK CAPITAL LETTER ALPHA WITH DASIA AND PERISPOMENI AND PROSGEGRAMMENI
    .{ .code = 0x1F90, .status = .F, .mapping = .{ .F = &[_]u21{0x1F20,0x03B9,} } }, // # GREEK SMALL LETTER ETA WITH PSILI AND YPOGEGRAMMENI
    .{ .code = 0x1F91, .status = .F, .mapping = .{ .F = &[_]u21{0x1F21,0x03B9,} } }, // # GREEK SMALL LETTER ETA WITH DASIA AND YPOGEGRAMMENI
    .{ .code = 0x1F92, .status = .F, .mapping = .{ .F = &[_]u21{0x1F22,0x03B9,} } }, // # GREEK SMALL LETTER ETA WITH PSILI AND VARIA AND YPOGEGRAMMENI
    .{ .code = 0x1F93, .status = .F, .mapping = .{ .F = &[_]u21{0x1F23,0x03B9,} } }, // # GREEK SMALL LETTER ETA WITH DASIA AND VARIA AND YPOGEGRAMMENI
    .{ .code = 0x1F94, .status = .F, .mapping = .{ .F = &[_]u21{0x1F24,0x03B9,} } }, // # GREEK SMALL LETTER ETA WITH PSILI AND OXIA AND YPOGEGRAMMENI
    .{ .code = 0x1F95, .status = .F, .mapping = .{ .F = &[_]u21{0x1F25,0x03B9,} } }, // # GREEK SMALL LETTER ETA WITH DASIA AND OXIA AND YPOGEGRAMMENI
    .{ .code = 0x1F96, .status = .F, .mapping = .{ .F = &[_]u21{0x1F26,0x03B9,} } }, // # GREEK SMALL LETTER ETA WITH PSILI AND PERISPOMENI AND YPOGEGRAMMENI
    .{ .code = 0x1F97, .status = .F, .mapping = .{ .F = &[_]u21{0x1F27,0x03B9,} } }, // # GREEK SMALL LETTER ETA WITH DASIA AND PERISPOMENI AND YPOGEGRAMMENI
    .{ .code = 0x1F98, .status = .F, .mapping = .{ .F = &[_]u21{0x1F20,0x03B9,} } }, // # GREEK CAPITAL LETTER ETA WITH PSILI AND PROSGEGRAMMENI
    .{ .code = 0x1F98, .status = .S, .mapping = .{ .S = 0x1F90 } }, // # GREEK CAPITAL LETTER ETA WITH PSILI AND PROSGEGRAMMENI
    .{ .code = 0x1F99, .status = .F, .mapping = .{ .F = &[_]u21{0x1F21,0x03B9,} } }, // # GREEK CAPITAL LETTER ETA WITH DASIA AND PROSGEGRAMMENI
    .{ .code = 0x1F99, .status = .S, .mapping = .{ .S = 0x1F91 } }, // # GREEK CAPITAL LETTER ETA WITH DASIA AND PROSGEGRAMMENI
    .{ .code = 0x1F9A, .status = .F, .mapping = .{ .F = &[_]u21{0x1F22,0x03B9,} } }, // # GREEK CAPITAL LETTER ETA WITH PSILI AND VARIA AND PROSGEGRAMMENI
    .{ .code = 0x1F9A, .status = .S, .mapping = .{ .S = 0x1F92 } }, // # GREEK CAPITAL LETTER ETA WITH PSILI AND VARIA AND PROSGEGRAMMENI
    .{ .code = 0x1F9B, .status = .F, .mapping = .{ .F = &[_]u21{0x1F23,0x03B9,} } }, // # GREEK CAPITAL LETTER ETA WITH DASIA AND VARIA AND PROSGEGRAMMENI
    .{ .code = 0x1F9B, .status = .S, .mapping = .{ .S = 0x1F93 } }, // # GREEK CAPITAL LETTER ETA WITH DASIA AND VARIA AND PROSGEGRAMMENI
    .{ .code = 0x1F9C, .status = .F, .mapping = .{ .F = &[_]u21{0x1F24,0x03B9,} } }, // # GREEK CAPITAL LETTER ETA WITH PSILI AND OXIA AND PROSGEGRAMMENI
    .{ .code = 0x1F9C, .status = .S, .mapping = .{ .S = 0x1F94 } }, // # GREEK CAPITAL LETTER ETA WITH PSILI AND OXIA AND PROSGEGRAMMENI
    .{ .code = 0x1F9D, .status = .F, .mapping = .{ .F = &[_]u21{0x1F25,0x03B9,} } }, // # GREEK CAPITAL LETTER ETA WITH DASIA AND OXIA AND PROSGEGRAMMENI
    .{ .code = 0x1F9D, .status = .S, .mapping = .{ .S = 0x1F95 } }, // # GREEK CAPITAL LETTER ETA WITH DASIA AND OXIA AND PROSGEGRAMMENI
    .{ .code = 0x1F9E, .status = .F, .mapping = .{ .F = &[_]u21{0x1F26,0x03B9,} } }, // # GREEK CAPITAL LETTER ETA WITH PSILI AND PERISPOMENI AND PROSGEGRAMMENI
    .{ .code = 0x1F9E, .status = .S, .mapping = .{ .S = 0x1F96 } }, // # GREEK CAPITAL LETTER ETA WITH PSILI AND PERISPOMENI AND PROSGEGRAMMENI
    .{ .code = 0x1F9F, .status = .F, .mapping = .{ .F = &[_]u21{0x1F27,0x03B9,} } }, // # GREEK CAPITAL LETTER ETA WITH DASIA AND PERISPOMENI AND PROSGEGRAMMENI
    .{ .code = 0x1F9F, .status = .S, .mapping = .{ .S = 0x1F97 } }, // # GREEK CAPITAL LETTER ETA WITH DASIA AND PERISPOMENI AND PROSGEGRAMMENI
    .{ .code = 0x1FA0, .status = .F, .mapping = .{ .F = &[_]u21{0x1F60,0x03B9,} } }, // # GREEK SMALL LETTER OMEGA WITH PSILI AND YPOGEGRAMMENI
    .{ .code = 0x1FA1, .status = .F, .mapping = .{ .F = &[_]u21{0x1F61,0x03B9,} } }, // # GREEK SMALL LETTER OMEGA WITH DASIA AND YPOGEGRAMMENI
    .{ .code = 0x1FA2, .status = .F, .mapping = .{ .F = &[_]u21{0x1F62,0x03B9,} } }, // # GREEK SMALL LETTER OMEGA WITH PSILI AND VARIA AND YPOGEGRAMMENI
    .{ .code = 0x1FA3, .status = .F, .mapping = .{ .F = &[_]u21{0x1F63,0x03B9,} } }, // # GREEK SMALL LETTER OMEGA WITH DASIA AND VARIA AND YPOGEGRAMMENI
    .{ .code = 0x1FA4, .status = .F, .mapping = .{ .F = &[_]u21{0x1F64,0x03B9,} } }, // # GREEK SMALL LETTER OMEGA WITH PSILI AND OXIA AND YPOGEGRAMMENI
    .{ .code = 0x1FA5, .status = .F, .mapping = .{ .F = &[_]u21{0x1F65,0x03B9,} } }, // # GREEK SMALL LETTER OMEGA WITH DASIA AND OXIA AND YPOGEGRAMMENI
    .{ .code = 0x1FA6, .status = .F, .mapping = .{ .F = &[_]u21{0x1F66,0x03B9,} } }, // # GREEK SMALL LETTER OMEGA WITH PSILI AND PERISPOMENI AND YPOGEGRAMMENI
    .{ .code = 0x1FA7, .status = .F, .mapping = .{ .F = &[_]u21{0x1F67,0x03B9,} } }, // # GREEK SMALL LETTER OMEGA WITH DASIA AND PERISPOMENI AND YPOGEGRAMMENI
    .{ .code = 0x1FA8, .status = .F, .mapping = .{ .F = &[_]u21{0x1F60,0x03B9,} } }, // # GREEK CAPITAL LETTER OMEGA WITH PSILI AND PROSGEGRAMMENI
    .{ .code = 0x1FA8, .status = .S, .mapping = .{ .S = 0x1FA0 } }, // # GREEK CAPITAL LETTER OMEGA WITH PSILI AND PROSGEGRAMMENI
    .{ .code = 0x1FA9, .status = .F, .mapping = .{ .F = &[_]u21{0x1F61,0x03B9,} } }, // # GREEK CAPITAL LETTER OMEGA WITH DASIA AND PROSGEGRAMMENI
    .{ .code = 0x1FA9, .status = .S, .mapping = .{ .S = 0x1FA1 } }, // # GREEK CAPITAL LETTER OMEGA WITH DASIA AND PROSGEGRAMMENI
    .{ .code = 0x1FAA, .status = .F, .mapping = .{ .F = &[_]u21{0x1F62,0x03B9,} } }, // # GREEK CAPITAL LETTER OMEGA WITH PSILI AND VARIA AND PROSGEGRAMMENI
    .{ .code = 0x1FAA, .status = .S, .mapping = .{ .S = 0x1FA2 } }, // # GREEK CAPITAL LETTER OMEGA WITH PSILI AND VARIA AND PROSGEGRAMMENI
    .{ .code = 0x1FAB, .status = .F, .mapping = .{ .F = &[_]u21{0x1F63,0x03B9,} } }, // # GREEK CAPITAL LETTER OMEGA WITH DASIA AND VARIA AND PROSGEGRAMMENI
    .{ .code = 0x1FAB, .status = .S, .mapping = .{ .S = 0x1FA3 } }, // # GREEK CAPITAL LETTER OMEGA WITH DASIA AND VARIA AND PROSGEGRAMMENI
    .{ .code = 0x1FAC, .status = .F, .mapping = .{ .F = &[_]u21{0x1F64,0x03B9,} } }, // # GREEK CAPITAL LETTER OMEGA WITH PSILI AND OXIA AND PROSGEGRAMMENI
    .{ .code = 0x1FAC, .status = .S, .mapping = .{ .S = 0x1FA4 } }, // # GREEK CAPITAL LETTER OMEGA WITH PSILI AND OXIA AND PROSGEGRAMMENI
    .{ .code = 0x1FAD, .status = .F, .mapping = .{ .F = &[_]u21{0x1F65,0x03B9,} } }, // # GREEK CAPITAL LETTER OMEGA WITH DASIA AND OXIA AND PROSGEGRAMMENI
    .{ .code = 0x1FAD, .status = .S, .mapping = .{ .S = 0x1FA5 } }, // # GREEK CAPITAL LETTER OMEGA WITH DASIA AND OXIA AND PROSGEGRAMMENI
    .{ .code = 0x1FAE, .status = .F, .mapping = .{ .F = &[_]u21{0x1F66,0x03B9,} } }, // # GREEK CAPITAL LETTER OMEGA WITH PSILI AND PERISPOMENI AND PROSGEGRAMMENI
    .{ .code = 0x1FAE, .status = .S, .mapping = .{ .S = 0x1FA6 } }, // # GREEK CAPITAL LETTER OMEGA WITH PSILI AND PERISPOMENI AND PROSGEGRAMMENI
    .{ .code = 0x1FAF, .status = .F, .mapping = .{ .F = &[_]u21{0x1F67,0x03B9,} } }, // # GREEK CAPITAL LETTER OMEGA WITH DASIA AND PERISPOMENI AND PROSGEGRAMMENI
    .{ .code = 0x1FAF, .status = .S, .mapping = .{ .S = 0x1FA7 } }, // # GREEK CAPITAL LETTER OMEGA WITH DASIA AND PERISPOMENI AND PROSGEGRAMMENI
    .{ .code = 0x1FB2, .status = .F, .mapping = .{ .F = &[_]u21{0x1F70,0x03B9,} } }, // # GREEK SMALL LETTER ALPHA WITH VARIA AND YPOGEGRAMMENI
    .{ .code = 0x1FB3, .status = .F, .mapping = .{ .F = &[_]u21{0x03B1,0x03B9,} } }, // # GREEK SMALL LETTER ALPHA WITH YPOGEGRAMMENI
    .{ .code = 0x1FB4, .status = .F, .mapping = .{ .F = &[_]u21{0x03AC,0x03B9,} } }, // # GREEK SMALL LETTER ALPHA WITH OXIA AND YPOGEGRAMMENI
    .{ .code = 0x1FB6, .status = .F, .mapping = .{ .F = &[_]u21{0x03B1,0x0342,} } }, // # GREEK SMALL LETTER ALPHA WITH PERISPOMENI
    .{ .code = 0x1FB7, .status = .F, .mapping = .{ .F = &[_]u21{0x03B1,0x0342,0x03B9,} } }, // # GREEK SMALL LETTER ALPHA WITH PERISPOMENI AND YPOGEGRAMMENI
    .{ .code = 0x1FB8, .status = .C, .mapping = .{ .C = 0x1FB0 } }, // # GREEK CAPITAL LETTER ALPHA WITH VRACHY
    .{ .code = 0x1FB9, .status = .C, .mapping = .{ .C = 0x1FB1 } }, // # GREEK CAPITAL LETTER ALPHA WITH MACRON
    .{ .code = 0x1FBA, .status = .C, .mapping = .{ .C = 0x1F70 } }, // # GREEK CAPITAL LETTER ALPHA WITH VARIA
    .{ .code = 0x1FBB, .status = .C, .mapping = .{ .C = 0x1F71 } }, // # GREEK CAPITAL LETTER ALPHA WITH OXIA
    .{ .code = 0x1FBC, .status = .F, .mapping = .{ .F = &[_]u21{0x03B1,0x03B9,} } }, // # GREEK CAPITAL LETTER ALPHA WITH PROSGEGRAMMENI
    .{ .code = 0x1FBC, .status = .S, .mapping = .{ .S = 0x1FB3 } }, // # GREEK CAPITAL LETTER ALPHA WITH PROSGEGRAMMENI
    .{ .code = 0x1FBE, .status = .C, .mapping = .{ .C = 0x03B9 } }, // # GREEK PROSGEGRAMMENI
    .{ .code = 0x1FC2, .status = .F, .mapping = .{ .F = &[_]u21{0x1F74,0x03B9,} } }, // # GREEK SMALL LETTER ETA WITH VARIA AND YPOGEGRAMMENI
    .{ .code = 0x1FC3, .status = .F, .mapping = .{ .F = &[_]u21{0x03B7,0x03B9,} } }, // # GREEK SMALL LETTER ETA WITH YPOGEGRAMMENI
    .{ .code = 0x1FC4, .status = .F, .mapping = .{ .F = &[_]u21{0x03AE,0x03B9,} } }, // # GREEK SMALL LETTER ETA WITH OXIA AND YPOGEGRAMMENI
    .{ .code = 0x1FC6, .status = .F, .mapping = .{ .F = &[_]u21{0x03B7,0x0342,} } }, // # GREEK SMALL LETTER ETA WITH PERISPOMENI
    .{ .code = 0x1FC7, .status = .F, .mapping = .{ .F = &[_]u21{0x03B7,0x0342,0x03B9,} } }, // # GREEK SMALL LETTER ETA WITH PERISPOMENI AND YPOGEGRAMMENI
    .{ .code = 0x1FC8, .status = .C, .mapping = .{ .C = 0x1F72 } }, // # GREEK CAPITAL LETTER EPSILON WITH VARIA
    .{ .code = 0x1FC9, .status = .C, .mapping = .{ .C = 0x1F73 } }, // # GREEK CAPITAL LETTER EPSILON WITH OXIA
    .{ .code = 0x1FCA, .status = .C, .mapping = .{ .C = 0x1F74 } }, // # GREEK CAPITAL LETTER ETA WITH VARIA
    .{ .code = 0x1FCB, .status = .C, .mapping = .{ .C = 0x1F75 } }, // # GREEK CAPITAL LETTER ETA WITH OXIA
    .{ .code = 0x1FCC, .status = .F, .mapping = .{ .F = &[_]u21{0x03B7,0x03B9,} } }, // # GREEK CAPITAL LETTER ETA WITH PROSGEGRAMMENI
    .{ .code = 0x1FCC, .status = .S, .mapping = .{ .S = 0x1FC3 } }, // # GREEK CAPITAL LETTER ETA WITH PROSGEGRAMMENI
    .{ .code = 0x1FD2, .status = .F, .mapping = .{ .F = &[_]u21{0x03B9,0x0308,0x0300,} } }, // # GREEK SMALL LETTER IOTA WITH DIALYTIKA AND VARIA
    .{ .code = 0x1FD3, .status = .F, .mapping = .{ .F = &[_]u21{0x03B9,0x0308,0x0301,} } }, // # GREEK SMALL LETTER IOTA WITH DIALYTIKA AND OXIA
    .{ .code = 0x1FD6, .status = .F, .mapping = .{ .F = &[_]u21{0x03B9,0x0342,} } }, // # GREEK SMALL LETTER IOTA WITH PERISPOMENI
    .{ .code = 0x1FD7, .status = .F, .mapping = .{ .F = &[_]u21{0x03B9,0x0308,0x0342,} } }, // # GREEK SMALL LETTER IOTA WITH DIALYTIKA AND PERISPOMENI
    .{ .code = 0x1FD8, .status = .C, .mapping = .{ .C = 0x1FD0 } }, // # GREEK CAPITAL LETTER IOTA WITH VRACHY
    .{ .code = 0x1FD9, .status = .C, .mapping = .{ .C = 0x1FD1 } }, // # GREEK CAPITAL LETTER IOTA WITH MACRON
    .{ .code = 0x1FDA, .status = .C, .mapping = .{ .C = 0x1F76 } }, // # GREEK CAPITAL LETTER IOTA WITH VARIA
    .{ .code = 0x1FDB, .status = .C, .mapping = .{ .C = 0x1F77 } }, // # GREEK CAPITAL LETTER IOTA WITH OXIA
    .{ .code = 0x1FE2, .status = .F, .mapping = .{ .F = &[_]u21{0x03C5,0x0308,0x0300,} } }, // # GREEK SMALL LETTER UPSILON WITH DIALYTIKA AND VARIA
    .{ .code = 0x1FE3, .status = .F, .mapping = .{ .F = &[_]u21{0x03C5,0x0308,0x0301,} } }, // # GREEK SMALL LETTER UPSILON WITH DIALYTIKA AND OXIA
    .{ .code = 0x1FE4, .status = .F, .mapping = .{ .F = &[_]u21{0x03C1,0x0313,} } }, // # GREEK SMALL LETTER RHO WITH PSILI
    .{ .code = 0x1FE6, .status = .F, .mapping = .{ .F = &[_]u21{0x03C5,0x0342,} } }, // # GREEK SMALL LETTER UPSILON WITH PERISPOMENI
    .{ .code = 0x1FE7, .status = .F, .mapping = .{ .F = &[_]u21{0x03C5,0x0308,0x0342,} } }, // # GREEK SMALL LETTER UPSILON WITH DIALYTIKA AND PERISPOMENI
    .{ .code = 0x1FE8, .status = .C, .mapping = .{ .C = 0x1FE0 } }, // # GREEK CAPITAL LETTER UPSILON WITH VRACHY
    .{ .code = 0x1FE9, .status = .C, .mapping = .{ .C = 0x1FE1 } }, // # GREEK CAPITAL LETTER UPSILON WITH MACRON
    .{ .code = 0x1FEA, .status = .C, .mapping = .{ .C = 0x1F7A } }, // # GREEK CAPITAL LETTER UPSILON WITH VARIA
    .{ .code = 0x1FEB, .status = .C, .mapping = .{ .C = 0x1F7B } }, // # GREEK CAPITAL LETTER UPSILON WITH OXIA
    .{ .code = 0x1FEC, .status = .C, .mapping = .{ .C = 0x1FE5 } }, // # GREEK CAPITAL LETTER RHO WITH DASIA
    .{ .code = 0x1FF2, .status = .F, .mapping = .{ .F = &[_]u21{0x1F7C,0x03B9,} } }, // # GREEK SMALL LETTER OMEGA WITH VARIA AND YPOGEGRAMMENI
    .{ .code = 0x1FF3, .status = .F, .mapping = .{ .F = &[_]u21{0x03C9,0x03B9,} } }, // # GREEK SMALL LETTER OMEGA WITH YPOGEGRAMMENI
    .{ .code = 0x1FF4, .status = .F, .mapping = .{ .F = &[_]u21{0x03CE,0x03B9,} } }, // # GREEK SMALL LETTER OMEGA WITH OXIA AND YPOGEGRAMMENI
    .{ .code = 0x1FF6, .status = .F, .mapping = .{ .F = &[_]u21{0x03C9,0x0342,} } }, // # GREEK SMALL LETTER OMEGA WITH PERISPOMENI
    .{ .code = 0x1FF7, .status = .F, .mapping = .{ .F = &[_]u21{0x03C9,0x0342,0x03B9,} } }, // # GREEK SMALL LETTER OMEGA WITH PERISPOMENI AND YPOGEGRAMMENI
    .{ .code = 0x1FF8, .status = .C, .mapping = .{ .C = 0x1F78 } }, // # GREEK CAPITAL LETTER OMICRON WITH VARIA
    .{ .code = 0x1FF9, .status = .C, .mapping = .{ .C = 0x1F79 } }, // # GREEK CAPITAL LETTER OMICRON WITH OXIA
    .{ .code = 0x1FFA, .status = .C, .mapping = .{ .C = 0x1F7C } }, // # GREEK CAPITAL LETTER OMEGA WITH VARIA
    .{ .code = 0x1FFB, .status = .C, .mapping = .{ .C = 0x1F7D } }, // # GREEK CAPITAL LETTER OMEGA WITH OXIA
    .{ .code = 0x1FFC, .status = .F, .mapping = .{ .F = &[_]u21{0x03C9,0x03B9,} } }, // # GREEK CAPITAL LETTER OMEGA WITH PROSGEGRAMMENI
    .{ .code = 0x1FFC, .status = .S, .mapping = .{ .S = 0x1FF3 } }, // # GREEK CAPITAL LETTER OMEGA WITH PROSGEGRAMMENI
    .{ .code = 0x2126, .status = .C, .mapping = .{ .C = 0x03C9 } }, // # OHM SIGN
    .{ .code = 0x212A, .status = .C, .mapping = .{ .C = 0x006B } }, // # KELVIN SIGN
    .{ .code = 0x212B, .status = .C, .mapping = .{ .C = 0x00E5 } }, // # ANGSTROM SIGN
    .{ .code = 0x2132, .status = .C, .mapping = .{ .C = 0x214E } }, // # TURNED CAPITAL F
    .{ .code = 0x2160, .status = .C, .mapping = .{ .C = 0x2170 } }, // # ROMAN NUMERAL ONE
    .{ .code = 0x2161, .status = .C, .mapping = .{ .C = 0x2171 } }, // # ROMAN NUMERAL TWO
    .{ .code = 0x2162, .status = .C, .mapping = .{ .C = 0x2172 } }, // # ROMAN NUMERAL THREE
    .{ .code = 0x2163, .status = .C, .mapping = .{ .C = 0x2173 } }, // # ROMAN NUMERAL FOUR
    .{ .code = 0x2164, .status = .C, .mapping = .{ .C = 0x2174 } }, // # ROMAN NUMERAL FIVE
    .{ .code = 0x2165, .status = .C, .mapping = .{ .C = 0x2175 } }, // # ROMAN NUMERAL SIX
    .{ .code = 0x2166, .status = .C, .mapping = .{ .C = 0x2176 } }, // # ROMAN NUMERAL SEVEN
    .{ .code = 0x2167, .status = .C, .mapping = .{ .C = 0x2177 } }, // # ROMAN NUMERAL EIGHT
    .{ .code = 0x2168, .status = .C, .mapping = .{ .C = 0x2178 } }, // # ROMAN NUMERAL NINE
    .{ .code = 0x2169, .status = .C, .mapping = .{ .C = 0x2179 } }, // # ROMAN NUMERAL TEN
    .{ .code = 0x216A, .status = .C, .mapping = .{ .C = 0x217A } }, // # ROMAN NUMERAL ELEVEN
    .{ .code = 0x216B, .status = .C, .mapping = .{ .C = 0x217B } }, // # ROMAN NUMERAL TWELVE
    .{ .code = 0x216C, .status = .C, .mapping = .{ .C = 0x217C } }, // # ROMAN NUMERAL FIFTY
    .{ .code = 0x216D, .status = .C, .mapping = .{ .C = 0x217D } }, // # ROMAN NUMERAL ONE HUNDRED
    .{ .code = 0x216E, .status = .C, .mapping = .{ .C = 0x217E } }, // # ROMAN NUMERAL FIVE HUNDRED
    .{ .code = 0x216F, .status = .C, .mapping = .{ .C = 0x217F } }, // # ROMAN NUMERAL ONE THOUSAND
    .{ .code = 0x2183, .status = .C, .mapping = .{ .C = 0x2184 } }, // # ROMAN NUMERAL REVERSED ONE HUNDRED
    .{ .code = 0x24B6, .status = .C, .mapping = .{ .C = 0x24D0 } }, // # CIRCLED LATIN CAPITAL LETTER A
    .{ .code = 0x24B7, .status = .C, .mapping = .{ .C = 0x24D1 } }, // # CIRCLED LATIN CAPITAL LETTER B
    .{ .code = 0x24B8, .status = .C, .mapping = .{ .C = 0x24D2 } }, // # CIRCLED LATIN CAPITAL LETTER C
    .{ .code = 0x24B9, .status = .C, .mapping = .{ .C = 0x24D3 } }, // # CIRCLED LATIN CAPITAL LETTER D
    .{ .code = 0x24BA, .status = .C, .mapping = .{ .C = 0x24D4 } }, // # CIRCLED LATIN CAPITAL LETTER E
    .{ .code = 0x24BB, .status = .C, .mapping = .{ .C = 0x24D5 } }, // # CIRCLED LATIN CAPITAL LETTER F
    .{ .code = 0x24BC, .status = .C, .mapping = .{ .C = 0x24D6 } }, // # CIRCLED LATIN CAPITAL LETTER G
    .{ .code = 0x24BD, .status = .C, .mapping = .{ .C = 0x24D7 } }, // # CIRCLED LATIN CAPITAL LETTER H
    .{ .code = 0x24BE, .status = .C, .mapping = .{ .C = 0x24D8 } }, // # CIRCLED LATIN CAPITAL LETTER I
    .{ .code = 0x24BF, .status = .C, .mapping = .{ .C = 0x24D9 } }, // # CIRCLED LATIN CAPITAL LETTER J
    .{ .code = 0x24C0, .status = .C, .mapping = .{ .C = 0x24DA } }, // # CIRCLED LATIN CAPITAL LETTER K
    .{ .code = 0x24C1, .status = .C, .mapping = .{ .C = 0x24DB } }, // # CIRCLED LATIN CAPITAL LETTER L
    .{ .code = 0x24C2, .status = .C, .mapping = .{ .C = 0x24DC } }, // # CIRCLED LATIN CAPITAL LETTER M
    .{ .code = 0x24C3, .status = .C, .mapping = .{ .C = 0x24DD } }, // # CIRCLED LATIN CAPITAL LETTER N
    .{ .code = 0x24C4, .status = .C, .mapping = .{ .C = 0x24DE } }, // # CIRCLED LATIN CAPITAL LETTER O
    .{ .code = 0x24C5, .status = .C, .mapping = .{ .C = 0x24DF } }, // # CIRCLED LATIN CAPITAL LETTER P
    .{ .code = 0x24C6, .status = .C, .mapping = .{ .C = 0x24E0 } }, // # CIRCLED LATIN CAPITAL LETTER Q
    .{ .code = 0x24C7, .status = .C, .mapping = .{ .C = 0x24E1 } }, // # CIRCLED LATIN CAPITAL LETTER R
    .{ .code = 0x24C8, .status = .C, .mapping = .{ .C = 0x24E2 } }, // # CIRCLED LATIN CAPITAL LETTER S
    .{ .code = 0x24C9, .status = .C, .mapping = .{ .C = 0x24E3 } }, // # CIRCLED LATIN CAPITAL LETTER T
    .{ .code = 0x24CA, .status = .C, .mapping = .{ .C = 0x24E4 } }, // # CIRCLED LATIN CAPITAL LETTER U
    .{ .code = 0x24CB, .status = .C, .mapping = .{ .C = 0x24E5 } }, // # CIRCLED LATIN CAPITAL LETTER V
    .{ .code = 0x24CC, .status = .C, .mapping = .{ .C = 0x24E6 } }, // # CIRCLED LATIN CAPITAL LETTER W
    .{ .code = 0x24CD, .status = .C, .mapping = .{ .C = 0x24E7 } }, // # CIRCLED LATIN CAPITAL LETTER X
    .{ .code = 0x24CE, .status = .C, .mapping = .{ .C = 0x24E8 } }, // # CIRCLED LATIN CAPITAL LETTER Y
    .{ .code = 0x24CF, .status = .C, .mapping = .{ .C = 0x24E9 } }, // # CIRCLED LATIN CAPITAL LETTER Z
    .{ .code = 0x2C00, .status = .C, .mapping = .{ .C = 0x2C30 } }, // # GLAGOLITIC CAPITAL LETTER AZU
    .{ .code = 0x2C01, .status = .C, .mapping = .{ .C = 0x2C31 } }, // # GLAGOLITIC CAPITAL LETTER BUKY
    .{ .code = 0x2C02, .status = .C, .mapping = .{ .C = 0x2C32 } }, // # GLAGOLITIC CAPITAL LETTER VEDE
    .{ .code = 0x2C03, .status = .C, .mapping = .{ .C = 0x2C33 } }, // # GLAGOLITIC CAPITAL LETTER GLAGOLI
    .{ .code = 0x2C04, .status = .C, .mapping = .{ .C = 0x2C34 } }, // # GLAGOLITIC CAPITAL LETTER DOBRO
    .{ .code = 0x2C05, .status = .C, .mapping = .{ .C = 0x2C35 } }, // # GLAGOLITIC CAPITAL LETTER YESTU
    .{ .code = 0x2C06, .status = .C, .mapping = .{ .C = 0x2C36 } }, // # GLAGOLITIC CAPITAL LETTER ZHIVETE
    .{ .code = 0x2C07, .status = .C, .mapping = .{ .C = 0x2C37 } }, // # GLAGOLITIC CAPITAL LETTER DZELO
    .{ .code = 0x2C08, .status = .C, .mapping = .{ .C = 0x2C38 } }, // # GLAGOLITIC CAPITAL LETTER ZEMLJA
    .{ .code = 0x2C09, .status = .C, .mapping = .{ .C = 0x2C39 } }, // # GLAGOLITIC CAPITAL LETTER IZHE
    .{ .code = 0x2C0A, .status = .C, .mapping = .{ .C = 0x2C3A } }, // # GLAGOLITIC CAPITAL LETTER INITIAL IZHE
    .{ .code = 0x2C0B, .status = .C, .mapping = .{ .C = 0x2C3B } }, // # GLAGOLITIC CAPITAL LETTER I
    .{ .code = 0x2C0C, .status = .C, .mapping = .{ .C = 0x2C3C } }, // # GLAGOLITIC CAPITAL LETTER DJERVI
    .{ .code = 0x2C0D, .status = .C, .mapping = .{ .C = 0x2C3D } }, // # GLAGOLITIC CAPITAL LETTER KAKO
    .{ .code = 0x2C0E, .status = .C, .mapping = .{ .C = 0x2C3E } }, // # GLAGOLITIC CAPITAL LETTER LJUDIJE
    .{ .code = 0x2C0F, .status = .C, .mapping = .{ .C = 0x2C3F } }, // # GLAGOLITIC CAPITAL LETTER MYSLITE
    .{ .code = 0x2C10, .status = .C, .mapping = .{ .C = 0x2C40 } }, // # GLAGOLITIC CAPITAL LETTER NASHI
    .{ .code = 0x2C11, .status = .C, .mapping = .{ .C = 0x2C41 } }, // # GLAGOLITIC CAPITAL LETTER ONU
    .{ .code = 0x2C12, .status = .C, .mapping = .{ .C = 0x2C42 } }, // # GLAGOLITIC CAPITAL LETTER POKOJI
    .{ .code = 0x2C13, .status = .C, .mapping = .{ .C = 0x2C43 } }, // # GLAGOLITIC CAPITAL LETTER RITSI
    .{ .code = 0x2C14, .status = .C, .mapping = .{ .C = 0x2C44 } }, // # GLAGOLITIC CAPITAL LETTER SLOVO
    .{ .code = 0x2C15, .status = .C, .mapping = .{ .C = 0x2C45 } }, // # GLAGOLITIC CAPITAL LETTER TVRIDO
    .{ .code = 0x2C16, .status = .C, .mapping = .{ .C = 0x2C46 } }, // # GLAGOLITIC CAPITAL LETTER UKU
    .{ .code = 0x2C17, .status = .C, .mapping = .{ .C = 0x2C47 } }, // # GLAGOLITIC CAPITAL LETTER FRITU
    .{ .code = 0x2C18, .status = .C, .mapping = .{ .C = 0x2C48 } }, // # GLAGOLITIC CAPITAL LETTER HERU
    .{ .code = 0x2C19, .status = .C, .mapping = .{ .C = 0x2C49 } }, // # GLAGOLITIC CAPITAL LETTER OTU
    .{ .code = 0x2C1A, .status = .C, .mapping = .{ .C = 0x2C4A } }, // # GLAGOLITIC CAPITAL LETTER PE
    .{ .code = 0x2C1B, .status = .C, .mapping = .{ .C = 0x2C4B } }, // # GLAGOLITIC CAPITAL LETTER SHTA
    .{ .code = 0x2C1C, .status = .C, .mapping = .{ .C = 0x2C4C } }, // # GLAGOLITIC CAPITAL LETTER TSI
    .{ .code = 0x2C1D, .status = .C, .mapping = .{ .C = 0x2C4D } }, // # GLAGOLITIC CAPITAL LETTER CHRIVI
    .{ .code = 0x2C1E, .status = .C, .mapping = .{ .C = 0x2C4E } }, // # GLAGOLITIC CAPITAL LETTER SHA
    .{ .code = 0x2C1F, .status = .C, .mapping = .{ .C = 0x2C4F } }, // # GLAGOLITIC CAPITAL LETTER YERU
    .{ .code = 0x2C20, .status = .C, .mapping = .{ .C = 0x2C50 } }, // # GLAGOLITIC CAPITAL LETTER YERI
    .{ .code = 0x2C21, .status = .C, .mapping = .{ .C = 0x2C51 } }, // # GLAGOLITIC CAPITAL LETTER YATI
    .{ .code = 0x2C22, .status = .C, .mapping = .{ .C = 0x2C52 } }, // # GLAGOLITIC CAPITAL LETTER SPIDERY HA
    .{ .code = 0x2C23, .status = .C, .mapping = .{ .C = 0x2C53 } }, // # GLAGOLITIC CAPITAL LETTER YU
    .{ .code = 0x2C24, .status = .C, .mapping = .{ .C = 0x2C54 } }, // # GLAGOLITIC CAPITAL LETTER SMALL YUS
    .{ .code = 0x2C25, .status = .C, .mapping = .{ .C = 0x2C55 } }, // # GLAGOLITIC CAPITAL LETTER SMALL YUS WITH TAIL
    .{ .code = 0x2C26, .status = .C, .mapping = .{ .C = 0x2C56 } }, // # GLAGOLITIC CAPITAL LETTER YO
    .{ .code = 0x2C27, .status = .C, .mapping = .{ .C = 0x2C57 } }, // # GLAGOLITIC CAPITAL LETTER IOTATED SMALL YUS
    .{ .code = 0x2C28, .status = .C, .mapping = .{ .C = 0x2C58 } }, // # GLAGOLITIC CAPITAL LETTER BIG YUS
    .{ .code = 0x2C29, .status = .C, .mapping = .{ .C = 0x2C59 } }, // # GLAGOLITIC CAPITAL LETTER IOTATED BIG YUS
    .{ .code = 0x2C2A, .status = .C, .mapping = .{ .C = 0x2C5A } }, // # GLAGOLITIC CAPITAL LETTER FITA
    .{ .code = 0x2C2B, .status = .C, .mapping = .{ .C = 0x2C5B } }, // # GLAGOLITIC CAPITAL LETTER IZHITSA
    .{ .code = 0x2C2C, .status = .C, .mapping = .{ .C = 0x2C5C } }, // # GLAGOLITIC CAPITAL LETTER SHTAPIC
    .{ .code = 0x2C2D, .status = .C, .mapping = .{ .C = 0x2C5D } }, // # GLAGOLITIC CAPITAL LETTER TROKUTASTI A
    .{ .code = 0x2C2E, .status = .C, .mapping = .{ .C = 0x2C5E } }, // # GLAGOLITIC CAPITAL LETTER LATINATE MYSLITE
    .{ .code = 0x2C60, .status = .C, .mapping = .{ .C = 0x2C61 } }, // # LATIN CAPITAL LETTER L WITH DOUBLE BAR
    .{ .code = 0x2C62, .status = .C, .mapping = .{ .C = 0x026B } }, // # LATIN CAPITAL LETTER L WITH MIDDLE TILDE
    .{ .code = 0x2C63, .status = .C, .mapping = .{ .C = 0x1D7D } }, // # LATIN CAPITAL LETTER P WITH STROKE
    .{ .code = 0x2C64, .status = .C, .mapping = .{ .C = 0x027D } }, // # LATIN CAPITAL LETTER R WITH TAIL
    .{ .code = 0x2C67, .status = .C, .mapping = .{ .C = 0x2C68 } }, // # LATIN CAPITAL LETTER H WITH DESCENDER
    .{ .code = 0x2C69, .status = .C, .mapping = .{ .C = 0x2C6A } }, // # LATIN CAPITAL LETTER K WITH DESCENDER
    .{ .code = 0x2C6B, .status = .C, .mapping = .{ .C = 0x2C6C } }, // # LATIN CAPITAL LETTER Z WITH DESCENDER
    .{ .code = 0x2C6D, .status = .C, .mapping = .{ .C = 0x0251 } }, // # LATIN CAPITAL LETTER ALPHA
    .{ .code = 0x2C6E, .status = .C, .mapping = .{ .C = 0x0271 } }, // # LATIN CAPITAL LETTER M WITH HOOK
    .{ .code = 0x2C6F, .status = .C, .mapping = .{ .C = 0x0250 } }, // # LATIN CAPITAL LETTER TURNED A
    .{ .code = 0x2C70, .status = .C, .mapping = .{ .C = 0x0252 } }, // # LATIN CAPITAL LETTER TURNED ALPHA
    .{ .code = 0x2C72, .status = .C, .mapping = .{ .C = 0x2C73 } }, // # LATIN CAPITAL LETTER W WITH HOOK
    .{ .code = 0x2C75, .status = .C, .mapping = .{ .C = 0x2C76 } }, // # LATIN CAPITAL LETTER HALF H
    .{ .code = 0x2C7E, .status = .C, .mapping = .{ .C = 0x023F } }, // # LATIN CAPITAL LETTER S WITH SWASH TAIL
    .{ .code = 0x2C7F, .status = .C, .mapping = .{ .C = 0x0240 } }, // # LATIN CAPITAL LETTER Z WITH SWASH TAIL
    .{ .code = 0x2C80, .status = .C, .mapping = .{ .C = 0x2C81 } }, // # COPTIC CAPITAL LETTER ALFA
    .{ .code = 0x2C82, .status = .C, .mapping = .{ .C = 0x2C83 } }, // # COPTIC CAPITAL LETTER VIDA
    .{ .code = 0x2C84, .status = .C, .mapping = .{ .C = 0x2C85 } }, // # COPTIC CAPITAL LETTER GAMMA
    .{ .code = 0x2C86, .status = .C, .mapping = .{ .C = 0x2C87 } }, // # COPTIC CAPITAL LETTER DALDA
    .{ .code = 0x2C88, .status = .C, .mapping = .{ .C = 0x2C89 } }, // # COPTIC CAPITAL LETTER EIE
    .{ .code = 0x2C8A, .status = .C, .mapping = .{ .C = 0x2C8B } }, // # COPTIC CAPITAL LETTER SOU
    .{ .code = 0x2C8C, .status = .C, .mapping = .{ .C = 0x2C8D } }, // # COPTIC CAPITAL LETTER ZATA
    .{ .code = 0x2C8E, .status = .C, .mapping = .{ .C = 0x2C8F } }, // # COPTIC CAPITAL LETTER HATE
    .{ .code = 0x2C90, .status = .C, .mapping = .{ .C = 0x2C91 } }, // # COPTIC CAPITAL LETTER THETHE
    .{ .code = 0x2C92, .status = .C, .mapping = .{ .C = 0x2C93 } }, // # COPTIC CAPITAL LETTER IAUDA
    .{ .code = 0x2C94, .status = .C, .mapping = .{ .C = 0x2C95 } }, // # COPTIC CAPITAL LETTER KAPA
    .{ .code = 0x2C96, .status = .C, .mapping = .{ .C = 0x2C97 } }, // # COPTIC CAPITAL LETTER LAULA
    .{ .code = 0x2C98, .status = .C, .mapping = .{ .C = 0x2C99 } }, // # COPTIC CAPITAL LETTER MI
    .{ .code = 0x2C9A, .status = .C, .mapping = .{ .C = 0x2C9B } }, // # COPTIC CAPITAL LETTER NI
    .{ .code = 0x2C9C, .status = .C, .mapping = .{ .C = 0x2C9D } }, // # COPTIC CAPITAL LETTER KSI
    .{ .code = 0x2C9E, .status = .C, .mapping = .{ .C = 0x2C9F } }, // # COPTIC CAPITAL LETTER O
    .{ .code = 0x2CA0, .status = .C, .mapping = .{ .C = 0x2CA1 } }, // # COPTIC CAPITAL LETTER PI
    .{ .code = 0x2CA2, .status = .C, .mapping = .{ .C = 0x2CA3 } }, // # COPTIC CAPITAL LETTER RO
    .{ .code = 0x2CA4, .status = .C, .mapping = .{ .C = 0x2CA5 } }, // # COPTIC CAPITAL LETTER SIMA
    .{ .code = 0x2CA6, .status = .C, .mapping = .{ .C = 0x2CA7 } }, // # COPTIC CAPITAL LETTER TAU
    .{ .code = 0x2CA8, .status = .C, .mapping = .{ .C = 0x2CA9 } }, // # COPTIC CAPITAL LETTER UA
    .{ .code = 0x2CAA, .status = .C, .mapping = .{ .C = 0x2CAB } }, // # COPTIC CAPITAL LETTER FI
    .{ .code = 0x2CAC, .status = .C, .mapping = .{ .C = 0x2CAD } }, // # COPTIC CAPITAL LETTER KHI
    .{ .code = 0x2CAE, .status = .C, .mapping = .{ .C = 0x2CAF } }, // # COPTIC CAPITAL LETTER PSI
    .{ .code = 0x2CB0, .status = .C, .mapping = .{ .C = 0x2CB1 } }, // # COPTIC CAPITAL LETTER OOU
    .{ .code = 0x2CB2, .status = .C, .mapping = .{ .C = 0x2CB3 } }, // # COPTIC CAPITAL LETTER DIALECT-P ALEF
    .{ .code = 0x2CB4, .status = .C, .mapping = .{ .C = 0x2CB5 } }, // # COPTIC CAPITAL LETTER OLD COPTIC AIN
    .{ .code = 0x2CB6, .status = .C, .mapping = .{ .C = 0x2CB7 } }, // # COPTIC CAPITAL LETTER CRYPTOGRAMMIC EIE
    .{ .code = 0x2CB8, .status = .C, .mapping = .{ .C = 0x2CB9 } }, // # COPTIC CAPITAL LETTER DIALECT-P KAPA
    .{ .code = 0x2CBA, .status = .C, .mapping = .{ .C = 0x2CBB } }, // # COPTIC CAPITAL LETTER DIALECT-P NI
    .{ .code = 0x2CBC, .status = .C, .mapping = .{ .C = 0x2CBD } }, // # COPTIC CAPITAL LETTER CRYPTOGRAMMIC NI
    .{ .code = 0x2CBE, .status = .C, .mapping = .{ .C = 0x2CBF } }, // # COPTIC CAPITAL LETTER OLD COPTIC OOU
    .{ .code = 0x2CC0, .status = .C, .mapping = .{ .C = 0x2CC1 } }, // # COPTIC CAPITAL LETTER SAMPI
    .{ .code = 0x2CC2, .status = .C, .mapping = .{ .C = 0x2CC3 } }, // # COPTIC CAPITAL LETTER CROSSED SHEI
    .{ .code = 0x2CC4, .status = .C, .mapping = .{ .C = 0x2CC5 } }, // # COPTIC CAPITAL LETTER OLD COPTIC SHEI
    .{ .code = 0x2CC6, .status = .C, .mapping = .{ .C = 0x2CC7 } }, // # COPTIC CAPITAL LETTER OLD COPTIC ESH
    .{ .code = 0x2CC8, .status = .C, .mapping = .{ .C = 0x2CC9 } }, // # COPTIC CAPITAL LETTER AKHMIMIC KHEI
    .{ .code = 0x2CCA, .status = .C, .mapping = .{ .C = 0x2CCB } }, // # COPTIC CAPITAL LETTER DIALECT-P HORI
    .{ .code = 0x2CCC, .status = .C, .mapping = .{ .C = 0x2CCD } }, // # COPTIC CAPITAL LETTER OLD COPTIC HORI
    .{ .code = 0x2CCE, .status = .C, .mapping = .{ .C = 0x2CCF } }, // # COPTIC CAPITAL LETTER OLD COPTIC HA
    .{ .code = 0x2CD0, .status = .C, .mapping = .{ .C = 0x2CD1 } }, // # COPTIC CAPITAL LETTER L-SHAPED HA
    .{ .code = 0x2CD2, .status = .C, .mapping = .{ .C = 0x2CD3 } }, // # COPTIC CAPITAL LETTER OLD COPTIC HEI
    .{ .code = 0x2CD4, .status = .C, .mapping = .{ .C = 0x2CD5 } }, // # COPTIC CAPITAL LETTER OLD COPTIC HAT
    .{ .code = 0x2CD6, .status = .C, .mapping = .{ .C = 0x2CD7 } }, // # COPTIC CAPITAL LETTER OLD COPTIC GANGIA
    .{ .code = 0x2CD8, .status = .C, .mapping = .{ .C = 0x2CD9 } }, // # COPTIC CAPITAL LETTER OLD COPTIC DJA
    .{ .code = 0x2CDA, .status = .C, .mapping = .{ .C = 0x2CDB } }, // # COPTIC CAPITAL LETTER OLD COPTIC SHIMA
    .{ .code = 0x2CDC, .status = .C, .mapping = .{ .C = 0x2CDD } }, // # COPTIC CAPITAL LETTER OLD NUBIAN SHIMA
    .{ .code = 0x2CDE, .status = .C, .mapping = .{ .C = 0x2CDF } }, // # COPTIC CAPITAL LETTER OLD NUBIAN NGI
    .{ .code = 0x2CE0, .status = .C, .mapping = .{ .C = 0x2CE1 } }, // # COPTIC CAPITAL LETTER OLD NUBIAN NYI
    .{ .code = 0x2CE2, .status = .C, .mapping = .{ .C = 0x2CE3 } }, // # COPTIC CAPITAL LETTER OLD NUBIAN WAU
    .{ .code = 0x2CEB, .status = .C, .mapping = .{ .C = 0x2CEC } }, // # COPTIC CAPITAL LETTER CRYPTOGRAMMIC SHEI
    .{ .code = 0x2CED, .status = .C, .mapping = .{ .C = 0x2CEE } }, // # COPTIC CAPITAL LETTER CRYPTOGRAMMIC GANGIA
    .{ .code = 0x2CF2, .status = .C, .mapping = .{ .C = 0x2CF3 } }, // # COPTIC CAPITAL LETTER BOHAIRIC KHEI
    .{ .code = 0xA640, .status = .C, .mapping = .{ .C = 0xA641 } }, // # CYRILLIC CAPITAL LETTER ZEMLYA
    .{ .code = 0xA642, .status = .C, .mapping = .{ .C = 0xA643 } }, // # CYRILLIC CAPITAL LETTER DZELO
    .{ .code = 0xA644, .status = .C, .mapping = .{ .C = 0xA645 } }, // # CYRILLIC CAPITAL LETTER REVERSED DZE
    .{ .code = 0xA646, .status = .C, .mapping = .{ .C = 0xA647 } }, // # CYRILLIC CAPITAL LETTER IOTA
    .{ .code = 0xA648, .status = .C, .mapping = .{ .C = 0xA649 } }, // # CYRILLIC CAPITAL LETTER DJERV
    .{ .code = 0xA64A, .status = .C, .mapping = .{ .C = 0xA64B } }, // # CYRILLIC CAPITAL LETTER MONOGRAPH UK
    .{ .code = 0xA64C, .status = .C, .mapping = .{ .C = 0xA64D } }, // # CYRILLIC CAPITAL LETTER BROAD OMEGA
    .{ .code = 0xA64E, .status = .C, .mapping = .{ .C = 0xA64F } }, // # CYRILLIC CAPITAL LETTER NEUTRAL YER
    .{ .code = 0xA650, .status = .C, .mapping = .{ .C = 0xA651 } }, // # CYRILLIC CAPITAL LETTER YERU WITH BACK YER
    .{ .code = 0xA652, .status = .C, .mapping = .{ .C = 0xA653 } }, // # CYRILLIC CAPITAL LETTER IOTIFIED YAT
    .{ .code = 0xA654, .status = .C, .mapping = .{ .C = 0xA655 } }, // # CYRILLIC CAPITAL LETTER REVERSED YU
    .{ .code = 0xA656, .status = .C, .mapping = .{ .C = 0xA657 } }, // # CYRILLIC CAPITAL LETTER IOTIFIED A
    .{ .code = 0xA658, .status = .C, .mapping = .{ .C = 0xA659 } }, // # CYRILLIC CAPITAL LETTER CLOSED LITTLE YUS
    .{ .code = 0xA65A, .status = .C, .mapping = .{ .C = 0xA65B } }, // # CYRILLIC CAPITAL LETTER BLENDED YUS
    .{ .code = 0xA65C, .status = .C, .mapping = .{ .C = 0xA65D } }, // # CYRILLIC CAPITAL LETTER IOTIFIED CLOSED LITTLE YUS
    .{ .code = 0xA65E, .status = .C, .mapping = .{ .C = 0xA65F } }, // # CYRILLIC CAPITAL LETTER YN
    .{ .code = 0xA660, .status = .C, .mapping = .{ .C = 0xA661 } }, // # CYRILLIC CAPITAL LETTER REVERSED TSE
    .{ .code = 0xA662, .status = .C, .mapping = .{ .C = 0xA663 } }, // # CYRILLIC CAPITAL LETTER SOFT DE
    .{ .code = 0xA664, .status = .C, .mapping = .{ .C = 0xA665 } }, // # CYRILLIC CAPITAL LETTER SOFT EL
    .{ .code = 0xA666, .status = .C, .mapping = .{ .C = 0xA667 } }, // # CYRILLIC CAPITAL LETTER SOFT EM
    .{ .code = 0xA668, .status = .C, .mapping = .{ .C = 0xA669 } }, // # CYRILLIC CAPITAL LETTER MONOCULAR O
    .{ .code = 0xA66A, .status = .C, .mapping = .{ .C = 0xA66B } }, // # CYRILLIC CAPITAL LETTER BINOCULAR O
    .{ .code = 0xA66C, .status = .C, .mapping = .{ .C = 0xA66D } }, // # CYRILLIC CAPITAL LETTER DOUBLE MONOCULAR O
    .{ .code = 0xA680, .status = .C, .mapping = .{ .C = 0xA681 } }, // # CYRILLIC CAPITAL LETTER DWE
    .{ .code = 0xA682, .status = .C, .mapping = .{ .C = 0xA683 } }, // # CYRILLIC CAPITAL LETTER DZWE
    .{ .code = 0xA684, .status = .C, .mapping = .{ .C = 0xA685 } }, // # CYRILLIC CAPITAL LETTER ZHWE
    .{ .code = 0xA686, .status = .C, .mapping = .{ .C = 0xA687 } }, // # CYRILLIC CAPITAL LETTER CCHE
    .{ .code = 0xA688, .status = .C, .mapping = .{ .C = 0xA689 } }, // # CYRILLIC CAPITAL LETTER DZZE
    .{ .code = 0xA68A, .status = .C, .mapping = .{ .C = 0xA68B } }, // # CYRILLIC CAPITAL LETTER TE WITH MIDDLE HOOK
    .{ .code = 0xA68C, .status = .C, .mapping = .{ .C = 0xA68D } }, // # CYRILLIC CAPITAL LETTER TWE
    .{ .code = 0xA68E, .status = .C, .mapping = .{ .C = 0xA68F } }, // # CYRILLIC CAPITAL LETTER TSWE
    .{ .code = 0xA690, .status = .C, .mapping = .{ .C = 0xA691 } }, // # CYRILLIC CAPITAL LETTER TSSE
    .{ .code = 0xA692, .status = .C, .mapping = .{ .C = 0xA693 } }, // # CYRILLIC CAPITAL LETTER TCHE
    .{ .code = 0xA694, .status = .C, .mapping = .{ .C = 0xA695 } }, // # CYRILLIC CAPITAL LETTER HWE
    .{ .code = 0xA696, .status = .C, .mapping = .{ .C = 0xA697 } }, // # CYRILLIC CAPITAL LETTER SHWE
    .{ .code = 0xA698, .status = .C, .mapping = .{ .C = 0xA699 } }, // # CYRILLIC CAPITAL LETTER DOUBLE O
    .{ .code = 0xA69A, .status = .C, .mapping = .{ .C = 0xA69B } }, // # CYRILLIC CAPITAL LETTER CROSSED O
    .{ .code = 0xA722, .status = .C, .mapping = .{ .C = 0xA723 } }, // # LATIN CAPITAL LETTER EGYPTOLOGICAL ALEF
    .{ .code = 0xA724, .status = .C, .mapping = .{ .C = 0xA725 } }, // # LATIN CAPITAL LETTER EGYPTOLOGICAL AIN
    .{ .code = 0xA726, .status = .C, .mapping = .{ .C = 0xA727 } }, // # LATIN CAPITAL LETTER HENG
    .{ .code = 0xA728, .status = .C, .mapping = .{ .C = 0xA729 } }, // # LATIN CAPITAL LETTER TZ
    .{ .code = 0xA72A, .status = .C, .mapping = .{ .C = 0xA72B } }, // # LATIN CAPITAL LETTER TRESILLO
    .{ .code = 0xA72C, .status = .C, .mapping = .{ .C = 0xA72D } }, // # LATIN CAPITAL LETTER CUATRILLO
    .{ .code = 0xA72E, .status = .C, .mapping = .{ .C = 0xA72F } }, // # LATIN CAPITAL LETTER CUATRILLO WITH COMMA
    .{ .code = 0xA732, .status = .C, .mapping = .{ .C = 0xA733 } }, // # LATIN CAPITAL LETTER AA
    .{ .code = 0xA734, .status = .C, .mapping = .{ .C = 0xA735 } }, // # LATIN CAPITAL LETTER AO
    .{ .code = 0xA736, .status = .C, .mapping = .{ .C = 0xA737 } }, // # LATIN CAPITAL LETTER AU
    .{ .code = 0xA738, .status = .C, .mapping = .{ .C = 0xA739 } }, // # LATIN CAPITAL LETTER AV
    .{ .code = 0xA73A, .status = .C, .mapping = .{ .C = 0xA73B } }, // # LATIN CAPITAL LETTER AV WITH HORIZONTAL BAR
    .{ .code = 0xA73C, .status = .C, .mapping = .{ .C = 0xA73D } }, // # LATIN CAPITAL LETTER AY
    .{ .code = 0xA73E, .status = .C, .mapping = .{ .C = 0xA73F } }, // # LATIN CAPITAL LETTER REVERSED C WITH DOT
    .{ .code = 0xA740, .status = .C, .mapping = .{ .C = 0xA741 } }, // # LATIN CAPITAL LETTER K WITH STROKE
    .{ .code = 0xA742, .status = .C, .mapping = .{ .C = 0xA743 } }, // # LATIN CAPITAL LETTER K WITH DIAGONAL STROKE
    .{ .code = 0xA744, .status = .C, .mapping = .{ .C = 0xA745 } }, // # LATIN CAPITAL LETTER K WITH STROKE AND DIAGONAL STROKE
    .{ .code = 0xA746, .status = .C, .mapping = .{ .C = 0xA747 } }, // # LATIN CAPITAL LETTER BROKEN L
    .{ .code = 0xA748, .status = .C, .mapping = .{ .C = 0xA749 } }, // # LATIN CAPITAL LETTER L WITH HIGH STROKE
    .{ .code = 0xA74A, .status = .C, .mapping = .{ .C = 0xA74B } }, // # LATIN CAPITAL LETTER O WITH LONG STROKE OVERLAY
    .{ .code = 0xA74C, .status = .C, .mapping = .{ .C = 0xA74D } }, // # LATIN CAPITAL LETTER O WITH LOOP
    .{ .code = 0xA74E, .status = .C, .mapping = .{ .C = 0xA74F } }, // # LATIN CAPITAL LETTER OO
    .{ .code = 0xA750, .status = .C, .mapping = .{ .C = 0xA751 } }, // # LATIN CAPITAL LETTER P WITH STROKE THROUGH DESCENDER
    .{ .code = 0xA752, .status = .C, .mapping = .{ .C = 0xA753 } }, // # LATIN CAPITAL LETTER P WITH FLOURISH
    .{ .code = 0xA754, .status = .C, .mapping = .{ .C = 0xA755 } }, // # LATIN CAPITAL LETTER P WITH SQUIRREL TAIL
    .{ .code = 0xA756, .status = .C, .mapping = .{ .C = 0xA757 } }, // # LATIN CAPITAL LETTER Q WITH STROKE THROUGH DESCENDER
    .{ .code = 0xA758, .status = .C, .mapping = .{ .C = 0xA759 } }, // # LATIN CAPITAL LETTER Q WITH DIAGONAL STROKE
    .{ .code = 0xA75A, .status = .C, .mapping = .{ .C = 0xA75B } }, // # LATIN CAPITAL LETTER R ROTUNDA
    .{ .code = 0xA75C, .status = .C, .mapping = .{ .C = 0xA75D } }, // # LATIN CAPITAL LETTER RUM ROTUNDA
    .{ .code = 0xA75E, .status = .C, .mapping = .{ .C = 0xA75F } }, // # LATIN CAPITAL LETTER V WITH DIAGONAL STROKE
    .{ .code = 0xA760, .status = .C, .mapping = .{ .C = 0xA761 } }, // # LATIN CAPITAL LETTER VY
    .{ .code = 0xA762, .status = .C, .mapping = .{ .C = 0xA763 } }, // # LATIN CAPITAL LETTER VISIGOTHIC Z
    .{ .code = 0xA764, .status = .C, .mapping = .{ .C = 0xA765 } }, // # LATIN CAPITAL LETTER THORN WITH STROKE
    .{ .code = 0xA766, .status = .C, .mapping = .{ .C = 0xA767 } }, // # LATIN CAPITAL LETTER THORN WITH STROKE THROUGH DESCENDER
    .{ .code = 0xA768, .status = .C, .mapping = .{ .C = 0xA769 } }, // # LATIN CAPITAL LETTER VEND
    .{ .code = 0xA76A, .status = .C, .mapping = .{ .C = 0xA76B } }, // # LATIN CAPITAL LETTER ET
    .{ .code = 0xA76C, .status = .C, .mapping = .{ .C = 0xA76D } }, // # LATIN CAPITAL LETTER IS
    .{ .code = 0xA76E, .status = .C, .mapping = .{ .C = 0xA76F } }, // # LATIN CAPITAL LETTER CON
    .{ .code = 0xA779, .status = .C, .mapping = .{ .C = 0xA77A } }, // # LATIN CAPITAL LETTER INSULAR D
    .{ .code = 0xA77B, .status = .C, .mapping = .{ .C = 0xA77C } }, // # LATIN CAPITAL LETTER INSULAR F
    .{ .code = 0xA77D, .status = .C, .mapping = .{ .C = 0x1D79 } }, // # LATIN CAPITAL LETTER INSULAR G
    .{ .code = 0xA77E, .status = .C, .mapping = .{ .C = 0xA77F } }, // # LATIN CAPITAL LETTER TURNED INSULAR G
    .{ .code = 0xA780, .status = .C, .mapping = .{ .C = 0xA781 } }, // # LATIN CAPITAL LETTER TURNED L
    .{ .code = 0xA782, .status = .C, .mapping = .{ .C = 0xA783 } }, // # LATIN CAPITAL LETTER INSULAR R
    .{ .code = 0xA784, .status = .C, .mapping = .{ .C = 0xA785 } }, // # LATIN CAPITAL LETTER INSULAR S
    .{ .code = 0xA786, .status = .C, .mapping = .{ .C = 0xA787 } }, // # LATIN CAPITAL LETTER INSULAR T
    .{ .code = 0xA78B, .status = .C, .mapping = .{ .C = 0xA78C } }, // # LATIN CAPITAL LETTER SALTILLO
    .{ .code = 0xA78D, .status = .C, .mapping = .{ .C = 0x0265 } }, // # LATIN CAPITAL LETTER TURNED H
    .{ .code = 0xA790, .status = .C, .mapping = .{ .C = 0xA791 } }, // # LATIN CAPITAL LETTER N WITH DESCENDER
    .{ .code = 0xA792, .status = .C, .mapping = .{ .C = 0xA793 } }, // # LATIN CAPITAL LETTER C WITH BAR
    .{ .code = 0xA796, .status = .C, .mapping = .{ .C = 0xA797 } }, // # LATIN CAPITAL LETTER B WITH FLOURISH
    .{ .code = 0xA798, .status = .C, .mapping = .{ .C = 0xA799 } }, // # LATIN CAPITAL LETTER F WITH STROKE
    .{ .code = 0xA79A, .status = .C, .mapping = .{ .C = 0xA79B } }, // # LATIN CAPITAL LETTER VOLAPUK AE
    .{ .code = 0xA79C, .status = .C, .mapping = .{ .C = 0xA79D } }, // # LATIN CAPITAL LETTER VOLAPUK OE
    .{ .code = 0xA79E, .status = .C, .mapping = .{ .C = 0xA79F } }, // # LATIN CAPITAL LETTER VOLAPUK UE
    .{ .code = 0xA7A0, .status = .C, .mapping = .{ .C = 0xA7A1 } }, // # LATIN CAPITAL LETTER G WITH OBLIQUE STROKE
    .{ .code = 0xA7A2, .status = .C, .mapping = .{ .C = 0xA7A3 } }, // # LATIN CAPITAL LETTER K WITH OBLIQUE STROKE
    .{ .code = 0xA7A4, .status = .C, .mapping = .{ .C = 0xA7A5 } }, // # LATIN CAPITAL LETTER N WITH OBLIQUE STROKE
    .{ .code = 0xA7A6, .status = .C, .mapping = .{ .C = 0xA7A7 } }, // # LATIN CAPITAL LETTER R WITH OBLIQUE STROKE
    .{ .code = 0xA7A8, .status = .C, .mapping = .{ .C = 0xA7A9 } }, // # LATIN CAPITAL LETTER S WITH OBLIQUE STROKE
    .{ .code = 0xA7AA, .status = .C, .mapping = .{ .C = 0x0266 } }, // # LATIN CAPITAL LETTER H WITH HOOK
    .{ .code = 0xA7AB, .status = .C, .mapping = .{ .C = 0x025C } }, // # LATIN CAPITAL LETTER REVERSED OPEN E
    .{ .code = 0xA7AC, .status = .C, .mapping = .{ .C = 0x0261 } }, // # LATIN CAPITAL LETTER SCRIPT G
    .{ .code = 0xA7AD, .status = .C, .mapping = .{ .C = 0x026C } }, // # LATIN CAPITAL LETTER L WITH BELT
    .{ .code = 0xA7AE, .status = .C, .mapping = .{ .C = 0x026A } }, // # LATIN CAPITAL LETTER SMALL CAPITAL I
    .{ .code = 0xA7B0, .status = .C, .mapping = .{ .C = 0x029E } }, // # LATIN CAPITAL LETTER TURNED K
    .{ .code = 0xA7B1, .status = .C, .mapping = .{ .C = 0x0287 } }, // # LATIN CAPITAL LETTER TURNED T
    .{ .code = 0xA7B2, .status = .C, .mapping = .{ .C = 0x029D } }, // # LATIN CAPITAL LETTER J WITH CROSSED-TAIL
    .{ .code = 0xA7B3, .status = .C, .mapping = .{ .C = 0xAB53 } }, // # LATIN CAPITAL LETTER CHI
    .{ .code = 0xA7B4, .status = .C, .mapping = .{ .C = 0xA7B5 } }, // # LATIN CAPITAL LETTER BETA
    .{ .code = 0xA7B6, .status = .C, .mapping = .{ .C = 0xA7B7 } }, // # LATIN CAPITAL LETTER OMEGA
    .{ .code = 0xA7B8, .status = .C, .mapping = .{ .C = 0xA7B9 } }, // # LATIN CAPITAL LETTER U WITH STROKE
    .{ .code = 0xA7BA, .status = .C, .mapping = .{ .C = 0xA7BB } }, // # LATIN CAPITAL LETTER GLOTTAL A
    .{ .code = 0xA7BC, .status = .C, .mapping = .{ .C = 0xA7BD } }, // # LATIN CAPITAL LETTER GLOTTAL I
    .{ .code = 0xA7BE, .status = .C, .mapping = .{ .C = 0xA7BF } }, // # LATIN CAPITAL LETTER GLOTTAL U
    .{ .code = 0xA7C2, .status = .C, .mapping = .{ .C = 0xA7C3 } }, // # LATIN CAPITAL LETTER ANGLICANA W
    .{ .code = 0xA7C4, .status = .C, .mapping = .{ .C = 0xA794 } }, // # LATIN CAPITAL LETTER C WITH PALATAL HOOK
    .{ .code = 0xA7C5, .status = .C, .mapping = .{ .C = 0x0282 } }, // # LATIN CAPITAL LETTER S WITH HOOK
    .{ .code = 0xA7C6, .status = .C, .mapping = .{ .C = 0x1D8E } }, // # LATIN CAPITAL LETTER Z WITH PALATAL HOOK
    .{ .code = 0xA7C7, .status = .C, .mapping = .{ .C = 0xA7C8 } }, // # LATIN CAPITAL LETTER D WITH SHORT STROKE OVERLAY
    .{ .code = 0xA7C9, .status = .C, .mapping = .{ .C = 0xA7CA } }, // # LATIN CAPITAL LETTER S WITH SHORT STROKE OVERLAY
    .{ .code = 0xA7F5, .status = .C, .mapping = .{ .C = 0xA7F6 } }, // # LATIN CAPITAL LETTER REVERSED HALF H
    .{ .code = 0xAB70, .status = .C, .mapping = .{ .C = 0x13A0 } }, // # CHEROKEE SMALL LETTER A
    .{ .code = 0xAB71, .status = .C, .mapping = .{ .C = 0x13A1 } }, // # CHEROKEE SMALL LETTER E
    .{ .code = 0xAB72, .status = .C, .mapping = .{ .C = 0x13A2 } }, // # CHEROKEE SMALL LETTER I
    .{ .code = 0xAB73, .status = .C, .mapping = .{ .C = 0x13A3 } }, // # CHEROKEE SMALL LETTER O
    .{ .code = 0xAB74, .status = .C, .mapping = .{ .C = 0x13A4 } }, // # CHEROKEE SMALL LETTER U
    .{ .code = 0xAB75, .status = .C, .mapping = .{ .C = 0x13A5 } }, // # CHEROKEE SMALL LETTER V
    .{ .code = 0xAB76, .status = .C, .mapping = .{ .C = 0x13A6 } }, // # CHEROKEE SMALL LETTER GA
    .{ .code = 0xAB77, .status = .C, .mapping = .{ .C = 0x13A7 } }, // # CHEROKEE SMALL LETTER KA
    .{ .code = 0xAB78, .status = .C, .mapping = .{ .C = 0x13A8 } }, // # CHEROKEE SMALL LETTER GE
    .{ .code = 0xAB79, .status = .C, .mapping = .{ .C = 0x13A9 } }, // # CHEROKEE SMALL LETTER GI
    .{ .code = 0xAB7A, .status = .C, .mapping = .{ .C = 0x13AA } }, // # CHEROKEE SMALL LETTER GO
    .{ .code = 0xAB7B, .status = .C, .mapping = .{ .C = 0x13AB } }, // # CHEROKEE SMALL LETTER GU
    .{ .code = 0xAB7C, .status = .C, .mapping = .{ .C = 0x13AC } }, // # CHEROKEE SMALL LETTER GV
    .{ .code = 0xAB7D, .status = .C, .mapping = .{ .C = 0x13AD } }, // # CHEROKEE SMALL LETTER HA
    .{ .code = 0xAB7E, .status = .C, .mapping = .{ .C = 0x13AE } }, // # CHEROKEE SMALL LETTER HE
    .{ .code = 0xAB7F, .status = .C, .mapping = .{ .C = 0x13AF } }, // # CHEROKEE SMALL LETTER HI
    .{ .code = 0xAB80, .status = .C, .mapping = .{ .C = 0x13B0 } }, // # CHEROKEE SMALL LETTER HO
    .{ .code = 0xAB81, .status = .C, .mapping = .{ .C = 0x13B1 } }, // # CHEROKEE SMALL LETTER HU
    .{ .code = 0xAB82, .status = .C, .mapping = .{ .C = 0x13B2 } }, // # CHEROKEE SMALL LETTER HV
    .{ .code = 0xAB83, .status = .C, .mapping = .{ .C = 0x13B3 } }, // # CHEROKEE SMALL LETTER LA
    .{ .code = 0xAB84, .status = .C, .mapping = .{ .C = 0x13B4 } }, // # CHEROKEE SMALL LETTER LE
    .{ .code = 0xAB85, .status = .C, .mapping = .{ .C = 0x13B5 } }, // # CHEROKEE SMALL LETTER LI
    .{ .code = 0xAB86, .status = .C, .mapping = .{ .C = 0x13B6 } }, // # CHEROKEE SMALL LETTER LO
    .{ .code = 0xAB87, .status = .C, .mapping = .{ .C = 0x13B7 } }, // # CHEROKEE SMALL LETTER LU
    .{ .code = 0xAB88, .status = .C, .mapping = .{ .C = 0x13B8 } }, // # CHEROKEE SMALL LETTER LV
    .{ .code = 0xAB89, .status = .C, .mapping = .{ .C = 0x13B9 } }, // # CHEROKEE SMALL LETTER MA
    .{ .code = 0xAB8A, .status = .C, .mapping = .{ .C = 0x13BA } }, // # CHEROKEE SMALL LETTER ME
    .{ .code = 0xAB8B, .status = .C, .mapping = .{ .C = 0x13BB } }, // # CHEROKEE SMALL LETTER MI
    .{ .code = 0xAB8C, .status = .C, .mapping = .{ .C = 0x13BC } }, // # CHEROKEE SMALL LETTER MO
    .{ .code = 0xAB8D, .status = .C, .mapping = .{ .C = 0x13BD } }, // # CHEROKEE SMALL LETTER MU
    .{ .code = 0xAB8E, .status = .C, .mapping = .{ .C = 0x13BE } }, // # CHEROKEE SMALL LETTER NA
    .{ .code = 0xAB8F, .status = .C, .mapping = .{ .C = 0x13BF } }, // # CHEROKEE SMALL LETTER HNA
    .{ .code = 0xAB90, .status = .C, .mapping = .{ .C = 0x13C0 } }, // # CHEROKEE SMALL LETTER NAH
    .{ .code = 0xAB91, .status = .C, .mapping = .{ .C = 0x13C1 } }, // # CHEROKEE SMALL LETTER NE
    .{ .code = 0xAB92, .status = .C, .mapping = .{ .C = 0x13C2 } }, // # CHEROKEE SMALL LETTER NI
    .{ .code = 0xAB93, .status = .C, .mapping = .{ .C = 0x13C3 } }, // # CHEROKEE SMALL LETTER NO
    .{ .code = 0xAB94, .status = .C, .mapping = .{ .C = 0x13C4 } }, // # CHEROKEE SMALL LETTER NU
    .{ .code = 0xAB95, .status = .C, .mapping = .{ .C = 0x13C5 } }, // # CHEROKEE SMALL LETTER NV
    .{ .code = 0xAB96, .status = .C, .mapping = .{ .C = 0x13C6 } }, // # CHEROKEE SMALL LETTER QUA
    .{ .code = 0xAB97, .status = .C, .mapping = .{ .C = 0x13C7 } }, // # CHEROKEE SMALL LETTER QUE
    .{ .code = 0xAB98, .status = .C, .mapping = .{ .C = 0x13C8 } }, // # CHEROKEE SMALL LETTER QUI
    .{ .code = 0xAB99, .status = .C, .mapping = .{ .C = 0x13C9 } }, // # CHEROKEE SMALL LETTER QUO
    .{ .code = 0xAB9A, .status = .C, .mapping = .{ .C = 0x13CA } }, // # CHEROKEE SMALL LETTER QUU
    .{ .code = 0xAB9B, .status = .C, .mapping = .{ .C = 0x13CB } }, // # CHEROKEE SMALL LETTER QUV
    .{ .code = 0xAB9C, .status = .C, .mapping = .{ .C = 0x13CC } }, // # CHEROKEE SMALL LETTER SA
    .{ .code = 0xAB9D, .status = .C, .mapping = .{ .C = 0x13CD } }, // # CHEROKEE SMALL LETTER S
    .{ .code = 0xAB9E, .status = .C, .mapping = .{ .C = 0x13CE } }, // # CHEROKEE SMALL LETTER SE
    .{ .code = 0xAB9F, .status = .C, .mapping = .{ .C = 0x13CF } }, // # CHEROKEE SMALL LETTER SI
    .{ .code = 0xABA0, .status = .C, .mapping = .{ .C = 0x13D0 } }, // # CHEROKEE SMALL LETTER SO
    .{ .code = 0xABA1, .status = .C, .mapping = .{ .C = 0x13D1 } }, // # CHEROKEE SMALL LETTER SU
    .{ .code = 0xABA2, .status = .C, .mapping = .{ .C = 0x13D2 } }, // # CHEROKEE SMALL LETTER SV
    .{ .code = 0xABA3, .status = .C, .mapping = .{ .C = 0x13D3 } }, // # CHEROKEE SMALL LETTER DA
    .{ .code = 0xABA4, .status = .C, .mapping = .{ .C = 0x13D4 } }, // # CHEROKEE SMALL LETTER TA
    .{ .code = 0xABA5, .status = .C, .mapping = .{ .C = 0x13D5 } }, // # CHEROKEE SMALL LETTER DE
    .{ .code = 0xABA6, .status = .C, .mapping = .{ .C = 0x13D6 } }, // # CHEROKEE SMALL LETTER TE
    .{ .code = 0xABA7, .status = .C, .mapping = .{ .C = 0x13D7 } }, // # CHEROKEE SMALL LETTER DI
    .{ .code = 0xABA8, .status = .C, .mapping = .{ .C = 0x13D8 } }, // # CHEROKEE SMALL LETTER TI
    .{ .code = 0xABA9, .status = .C, .mapping = .{ .C = 0x13D9 } }, // # CHEROKEE SMALL LETTER DO
    .{ .code = 0xABAA, .status = .C, .mapping = .{ .C = 0x13DA } }, // # CHEROKEE SMALL LETTER DU
    .{ .code = 0xABAB, .status = .C, .mapping = .{ .C = 0x13DB } }, // # CHEROKEE SMALL LETTER DV
    .{ .code = 0xABAC, .status = .C, .mapping = .{ .C = 0x13DC } }, // # CHEROKEE SMALL LETTER DLA
    .{ .code = 0xABAD, .status = .C, .mapping = .{ .C = 0x13DD } }, // # CHEROKEE SMALL LETTER TLA
    .{ .code = 0xABAE, .status = .C, .mapping = .{ .C = 0x13DE } }, // # CHEROKEE SMALL LETTER TLE
    .{ .code = 0xABAF, .status = .C, .mapping = .{ .C = 0x13DF } }, // # CHEROKEE SMALL LETTER TLI
    .{ .code = 0xABB0, .status = .C, .mapping = .{ .C = 0x13E0 } }, // # CHEROKEE SMALL LETTER TLO
    .{ .code = 0xABB1, .status = .C, .mapping = .{ .C = 0x13E1 } }, // # CHEROKEE SMALL LETTER TLU
    .{ .code = 0xABB2, .status = .C, .mapping = .{ .C = 0x13E2 } }, // # CHEROKEE SMALL LETTER TLV
    .{ .code = 0xABB3, .status = .C, .mapping = .{ .C = 0x13E3 } }, // # CHEROKEE SMALL LETTER TSA
    .{ .code = 0xABB4, .status = .C, .mapping = .{ .C = 0x13E4 } }, // # CHEROKEE SMALL LETTER TSE
    .{ .code = 0xABB5, .status = .C, .mapping = .{ .C = 0x13E5 } }, // # CHEROKEE SMALL LETTER TSI
    .{ .code = 0xABB6, .status = .C, .mapping = .{ .C = 0x13E6 } }, // # CHEROKEE SMALL LETTER TSO
    .{ .code = 0xABB7, .status = .C, .mapping = .{ .C = 0x13E7 } }, // # CHEROKEE SMALL LETTER TSU
    .{ .code = 0xABB8, .status = .C, .mapping = .{ .C = 0x13E8 } }, // # CHEROKEE SMALL LETTER TSV
    .{ .code = 0xABB9, .status = .C, .mapping = .{ .C = 0x13E9 } }, // # CHEROKEE SMALL LETTER WA
    .{ .code = 0xABBA, .status = .C, .mapping = .{ .C = 0x13EA } }, // # CHEROKEE SMALL LETTER WE
    .{ .code = 0xABBB, .status = .C, .mapping = .{ .C = 0x13EB } }, // # CHEROKEE SMALL LETTER WI
    .{ .code = 0xABBC, .status = .C, .mapping = .{ .C = 0x13EC } }, // # CHEROKEE SMALL LETTER WO
    .{ .code = 0xABBD, .status = .C, .mapping = .{ .C = 0x13ED } }, // # CHEROKEE SMALL LETTER WU
    .{ .code = 0xABBE, .status = .C, .mapping = .{ .C = 0x13EE } }, // # CHEROKEE SMALL LETTER WV
    .{ .code = 0xABBF, .status = .C, .mapping = .{ .C = 0x13EF } }, // # CHEROKEE SMALL LETTER YA
    .{ .code = 0xFB00, .status = .F, .mapping = .{ .F = &[_]u21{0x0066,0x0066,} } }, // # LATIN SMALL LIGATURE FF
    .{ .code = 0xFB01, .status = .F, .mapping = .{ .F = &[_]u21{0x0066,0x0069,} } }, // # LATIN SMALL LIGATURE FI
    .{ .code = 0xFB02, .status = .F, .mapping = .{ .F = &[_]u21{0x0066,0x006C,} } }, // # LATIN SMALL LIGATURE FL
    .{ .code = 0xFB03, .status = .F, .mapping = .{ .F = &[_]u21{0x0066,0x0066,0x0069,} } }, // # LATIN SMALL LIGATURE FFI
    .{ .code = 0xFB04, .status = .F, .mapping = .{ .F = &[_]u21{0x0066,0x0066,0x006C,} } }, // # LATIN SMALL LIGATURE FFL
    .{ .code = 0xFB05, .status = .F, .mapping = .{ .F = &[_]u21{0x0073,0x0074,} } }, // # LATIN SMALL LIGATURE LONG S T
    .{ .code = 0xFB06, .status = .F, .mapping = .{ .F = &[_]u21{0x0073,0x0074,} } }, // # LATIN SMALL LIGATURE ST
    .{ .code = 0xFB13, .status = .F, .mapping = .{ .F = &[_]u21{0x0574,0x0576,} } }, // # ARMENIAN SMALL LIGATURE MEN NOW
    .{ .code = 0xFB14, .status = .F, .mapping = .{ .F = &[_]u21{0x0574,0x0565,} } }, // # ARMENIAN SMALL LIGATURE MEN ECH
    .{ .code = 0xFB15, .status = .F, .mapping = .{ .F = &[_]u21{0x0574,0x056B,} } }, // # ARMENIAN SMALL LIGATURE MEN INI
    .{ .code = 0xFB16, .status = .F, .mapping = .{ .F = &[_]u21{0x057E,0x0576,} } }, // # ARMENIAN SMALL LIGATURE VEW NOW
    .{ .code = 0xFB17, .status = .F, .mapping = .{ .F = &[_]u21{0x0574,0x056D,} } }, // # ARMENIAN SMALL LIGATURE MEN XEH
    .{ .code = 0xFF21, .status = .C, .mapping = .{ .C = 0xFF41 } }, // # FULLWIDTH LATIN CAPITAL LETTER A
    .{ .code = 0xFF22, .status = .C, .mapping = .{ .C = 0xFF42 } }, // # FULLWIDTH LATIN CAPITAL LETTER B
    .{ .code = 0xFF23, .status = .C, .mapping = .{ .C = 0xFF43 } }, // # FULLWIDTH LATIN CAPITAL LETTER C
    .{ .code = 0xFF24, .status = .C, .mapping = .{ .C = 0xFF44 } }, // # FULLWIDTH LATIN CAPITAL LETTER D
    .{ .code = 0xFF25, .status = .C, .mapping = .{ .C = 0xFF45 } }, // # FULLWIDTH LATIN CAPITAL LETTER E
    .{ .code = 0xFF26, .status = .C, .mapping = .{ .C = 0xFF46 } }, // # FULLWIDTH LATIN CAPITAL LETTER F
    .{ .code = 0xFF27, .status = .C, .mapping = .{ .C = 0xFF47 } }, // # FULLWIDTH LATIN CAPITAL LETTER G
    .{ .code = 0xFF28, .status = .C, .mapping = .{ .C = 0xFF48 } }, // # FULLWIDTH LATIN CAPITAL LETTER H
    .{ .code = 0xFF29, .status = .C, .mapping = .{ .C = 0xFF49 } }, // # FULLWIDTH LATIN CAPITAL LETTER I
    .{ .code = 0xFF2A, .status = .C, .mapping = .{ .C = 0xFF4A } }, // # FULLWIDTH LATIN CAPITAL LETTER J
    .{ .code = 0xFF2B, .status = .C, .mapping = .{ .C = 0xFF4B } }, // # FULLWIDTH LATIN CAPITAL LETTER K
    .{ .code = 0xFF2C, .status = .C, .mapping = .{ .C = 0xFF4C } }, // # FULLWIDTH LATIN CAPITAL LETTER L
    .{ .code = 0xFF2D, .status = .C, .mapping = .{ .C = 0xFF4D } }, // # FULLWIDTH LATIN CAPITAL LETTER M
    .{ .code = 0xFF2E, .status = .C, .mapping = .{ .C = 0xFF4E } }, // # FULLWIDTH LATIN CAPITAL LETTER N
    .{ .code = 0xFF2F, .status = .C, .mapping = .{ .C = 0xFF4F } }, // # FULLWIDTH LATIN CAPITAL LETTER O
    .{ .code = 0xFF30, .status = .C, .mapping = .{ .C = 0xFF50 } }, // # FULLWIDTH LATIN CAPITAL LETTER P
    .{ .code = 0xFF31, .status = .C, .mapping = .{ .C = 0xFF51 } }, // # FULLWIDTH LATIN CAPITAL LETTER Q
    .{ .code = 0xFF32, .status = .C, .mapping = .{ .C = 0xFF52 } }, // # FULLWIDTH LATIN CAPITAL LETTER R
    .{ .code = 0xFF33, .status = .C, .mapping = .{ .C = 0xFF53 } }, // # FULLWIDTH LATIN CAPITAL LETTER S
    .{ .code = 0xFF34, .status = .C, .mapping = .{ .C = 0xFF54 } }, // # FULLWIDTH LATIN CAPITAL LETTER T
    .{ .code = 0xFF35, .status = .C, .mapping = .{ .C = 0xFF55 } }, // # FULLWIDTH LATIN CAPITAL LETTER U
    .{ .code = 0xFF36, .status = .C, .mapping = .{ .C = 0xFF56 } }, // # FULLWIDTH LATIN CAPITAL LETTER V
    .{ .code = 0xFF37, .status = .C, .mapping = .{ .C = 0xFF57 } }, // # FULLWIDTH LATIN CAPITAL LETTER W
    .{ .code = 0xFF38, .status = .C, .mapping = .{ .C = 0xFF58 } }, // # FULLWIDTH LATIN CAPITAL LETTER X
    .{ .code = 0xFF39, .status = .C, .mapping = .{ .C = 0xFF59 } }, // # FULLWIDTH LATIN CAPITAL LETTER Y
    .{ .code = 0xFF3A, .status = .C, .mapping = .{ .C = 0xFF5A } }, // # FULLWIDTH LATIN CAPITAL LETTER Z
    .{ .code = 0x10400, .status = .C, .mapping = .{ .C = 0x10428 } }, // # DESERET CAPITAL LETTER LONG I
    .{ .code = 0x10401, .status = .C, .mapping = .{ .C = 0x10429 } }, // # DESERET CAPITAL LETTER LONG E
    .{ .code = 0x10402, .status = .C, .mapping = .{ .C = 0x1042A } }, // # DESERET CAPITAL LETTER LONG A
    .{ .code = 0x10403, .status = .C, .mapping = .{ .C = 0x1042B } }, // # DESERET CAPITAL LETTER LONG AH
    .{ .code = 0x10404, .status = .C, .mapping = .{ .C = 0x1042C } }, // # DESERET CAPITAL LETTER LONG O
    .{ .code = 0x10405, .status = .C, .mapping = .{ .C = 0x1042D } }, // # DESERET CAPITAL LETTER LONG OO
    .{ .code = 0x10406, .status = .C, .mapping = .{ .C = 0x1042E } }, // # DESERET CAPITAL LETTER SHORT I
    .{ .code = 0x10407, .status = .C, .mapping = .{ .C = 0x1042F } }, // # DESERET CAPITAL LETTER SHORT E
    .{ .code = 0x10408, .status = .C, .mapping = .{ .C = 0x10430 } }, // # DESERET CAPITAL LETTER SHORT A
    .{ .code = 0x10409, .status = .C, .mapping = .{ .C = 0x10431 } }, // # DESERET CAPITAL LETTER SHORT AH
    .{ .code = 0x1040A, .status = .C, .mapping = .{ .C = 0x10432 } }, // # DESERET CAPITAL LETTER SHORT O
    .{ .code = 0x1040B, .status = .C, .mapping = .{ .C = 0x10433 } }, // # DESERET CAPITAL LETTER SHORT OO
    .{ .code = 0x1040C, .status = .C, .mapping = .{ .C = 0x10434 } }, // # DESERET CAPITAL LETTER AY
    .{ .code = 0x1040D, .status = .C, .mapping = .{ .C = 0x10435 } }, // # DESERET CAPITAL LETTER OW
    .{ .code = 0x1040E, .status = .C, .mapping = .{ .C = 0x10436 } }, // # DESERET CAPITAL LETTER WU
    .{ .code = 0x1040F, .status = .C, .mapping = .{ .C = 0x10437 } }, // # DESERET CAPITAL LETTER YEE
    .{ .code = 0x10410, .status = .C, .mapping = .{ .C = 0x10438 } }, // # DESERET CAPITAL LETTER H
    .{ .code = 0x10411, .status = .C, .mapping = .{ .C = 0x10439 } }, // # DESERET CAPITAL LETTER PEE
    .{ .code = 0x10412, .status = .C, .mapping = .{ .C = 0x1043A } }, // # DESERET CAPITAL LETTER BEE
    .{ .code = 0x10413, .status = .C, .mapping = .{ .C = 0x1043B } }, // # DESERET CAPITAL LETTER TEE
    .{ .code = 0x10414, .status = .C, .mapping = .{ .C = 0x1043C } }, // # DESERET CAPITAL LETTER DEE
    .{ .code = 0x10415, .status = .C, .mapping = .{ .C = 0x1043D } }, // # DESERET CAPITAL LETTER CHEE
    .{ .code = 0x10416, .status = .C, .mapping = .{ .C = 0x1043E } }, // # DESERET CAPITAL LETTER JEE
    .{ .code = 0x10417, .status = .C, .mapping = .{ .C = 0x1043F } }, // # DESERET CAPITAL LETTER KAY
    .{ .code = 0x10418, .status = .C, .mapping = .{ .C = 0x10440 } }, // # DESERET CAPITAL LETTER GAY
    .{ .code = 0x10419, .status = .C, .mapping = .{ .C = 0x10441 } }, // # DESERET CAPITAL LETTER EF
    .{ .code = 0x1041A, .status = .C, .mapping = .{ .C = 0x10442 } }, // # DESERET CAPITAL LETTER VEE
    .{ .code = 0x1041B, .status = .C, .mapping = .{ .C = 0x10443 } }, // # DESERET CAPITAL LETTER ETH
    .{ .code = 0x1041C, .status = .C, .mapping = .{ .C = 0x10444 } }, // # DESERET CAPITAL LETTER THEE
    .{ .code = 0x1041D, .status = .C, .mapping = .{ .C = 0x10445 } }, // # DESERET CAPITAL LETTER ES
    .{ .code = 0x1041E, .status = .C, .mapping = .{ .C = 0x10446 } }, // # DESERET CAPITAL LETTER ZEE
    .{ .code = 0x1041F, .status = .C, .mapping = .{ .C = 0x10447 } }, // # DESERET CAPITAL LETTER ESH
    .{ .code = 0x10420, .status = .C, .mapping = .{ .C = 0x10448 } }, // # DESERET CAPITAL LETTER ZHEE
    .{ .code = 0x10421, .status = .C, .mapping = .{ .C = 0x10449 } }, // # DESERET CAPITAL LETTER ER
    .{ .code = 0x10422, .status = .C, .mapping = .{ .C = 0x1044A } }, // # DESERET CAPITAL LETTER EL
    .{ .code = 0x10423, .status = .C, .mapping = .{ .C = 0x1044B } }, // # DESERET CAPITAL LETTER EM
    .{ .code = 0x10424, .status = .C, .mapping = .{ .C = 0x1044C } }, // # DESERET CAPITAL LETTER EN
    .{ .code = 0x10425, .status = .C, .mapping = .{ .C = 0x1044D } }, // # DESERET CAPITAL LETTER ENG
    .{ .code = 0x10426, .status = .C, .mapping = .{ .C = 0x1044E } }, // # DESERET CAPITAL LETTER OI
    .{ .code = 0x10427, .status = .C, .mapping = .{ .C = 0x1044F } }, // # DESERET CAPITAL LETTER EW
    .{ .code = 0x104B0, .status = .C, .mapping = .{ .C = 0x104D8 } }, // # OSAGE CAPITAL LETTER A
    .{ .code = 0x104B1, .status = .C, .mapping = .{ .C = 0x104D9 } }, // # OSAGE CAPITAL LETTER AI
    .{ .code = 0x104B2, .status = .C, .mapping = .{ .C = 0x104DA } }, // # OSAGE CAPITAL LETTER AIN
    .{ .code = 0x104B3, .status = .C, .mapping = .{ .C = 0x104DB } }, // # OSAGE CAPITAL LETTER AH
    .{ .code = 0x104B4, .status = .C, .mapping = .{ .C = 0x104DC } }, // # OSAGE CAPITAL LETTER BRA
    .{ .code = 0x104B5, .status = .C, .mapping = .{ .C = 0x104DD } }, // # OSAGE CAPITAL LETTER CHA
    .{ .code = 0x104B6, .status = .C, .mapping = .{ .C = 0x104DE } }, // # OSAGE CAPITAL LETTER EHCHA
    .{ .code = 0x104B7, .status = .C, .mapping = .{ .C = 0x104DF } }, // # OSAGE CAPITAL LETTER E
    .{ .code = 0x104B8, .status = .C, .mapping = .{ .C = 0x104E0 } }, // # OSAGE CAPITAL LETTER EIN
    .{ .code = 0x104B9, .status = .C, .mapping = .{ .C = 0x104E1 } }, // # OSAGE CAPITAL LETTER HA
    .{ .code = 0x104BA, .status = .C, .mapping = .{ .C = 0x104E2 } }, // # OSAGE CAPITAL LETTER HYA
    .{ .code = 0x104BB, .status = .C, .mapping = .{ .C = 0x104E3 } }, // # OSAGE CAPITAL LETTER I
    .{ .code = 0x104BC, .status = .C, .mapping = .{ .C = 0x104E4 } }, // # OSAGE CAPITAL LETTER KA
    .{ .code = 0x104BD, .status = .C, .mapping = .{ .C = 0x104E5 } }, // # OSAGE CAPITAL LETTER EHKA
    .{ .code = 0x104BE, .status = .C, .mapping = .{ .C = 0x104E6 } }, // # OSAGE CAPITAL LETTER KYA
    .{ .code = 0x104BF, .status = .C, .mapping = .{ .C = 0x104E7 } }, // # OSAGE CAPITAL LETTER LA
    .{ .code = 0x104C0, .status = .C, .mapping = .{ .C = 0x104E8 } }, // # OSAGE CAPITAL LETTER MA
    .{ .code = 0x104C1, .status = .C, .mapping = .{ .C = 0x104E9 } }, // # OSAGE CAPITAL LETTER NA
    .{ .code = 0x104C2, .status = .C, .mapping = .{ .C = 0x104EA } }, // # OSAGE CAPITAL LETTER O
    .{ .code = 0x104C3, .status = .C, .mapping = .{ .C = 0x104EB } }, // # OSAGE CAPITAL LETTER OIN
    .{ .code = 0x104C4, .status = .C, .mapping = .{ .C = 0x104EC } }, // # OSAGE CAPITAL LETTER PA
    .{ .code = 0x104C5, .status = .C, .mapping = .{ .C = 0x104ED } }, // # OSAGE CAPITAL LETTER EHPA
    .{ .code = 0x104C6, .status = .C, .mapping = .{ .C = 0x104EE } }, // # OSAGE CAPITAL LETTER SA
    .{ .code = 0x104C7, .status = .C, .mapping = .{ .C = 0x104EF } }, // # OSAGE CAPITAL LETTER SHA
    .{ .code = 0x104C8, .status = .C, .mapping = .{ .C = 0x104F0 } }, // # OSAGE CAPITAL LETTER TA
    .{ .code = 0x104C9, .status = .C, .mapping = .{ .C = 0x104F1 } }, // # OSAGE CAPITAL LETTER EHTA
    .{ .code = 0x104CA, .status = .C, .mapping = .{ .C = 0x104F2 } }, // # OSAGE CAPITAL LETTER TSA
    .{ .code = 0x104CB, .status = .C, .mapping = .{ .C = 0x104F3 } }, // # OSAGE CAPITAL LETTER EHTSA
    .{ .code = 0x104CC, .status = .C, .mapping = .{ .C = 0x104F4 } }, // # OSAGE CAPITAL LETTER TSHA
    .{ .code = 0x104CD, .status = .C, .mapping = .{ .C = 0x104F5 } }, // # OSAGE CAPITAL LETTER DHA
    .{ .code = 0x104CE, .status = .C, .mapping = .{ .C = 0x104F6 } }, // # OSAGE CAPITAL LETTER U
    .{ .code = 0x104CF, .status = .C, .mapping = .{ .C = 0x104F7 } }, // # OSAGE CAPITAL LETTER WA
    .{ .code = 0x104D0, .status = .C, .mapping = .{ .C = 0x104F8 } }, // # OSAGE CAPITAL LETTER KHA
    .{ .code = 0x104D1, .status = .C, .mapping = .{ .C = 0x104F9 } }, // # OSAGE CAPITAL LETTER GHA
    .{ .code = 0x104D2, .status = .C, .mapping = .{ .C = 0x104FA } }, // # OSAGE CAPITAL LETTER ZA
    .{ .code = 0x104D3, .status = .C, .mapping = .{ .C = 0x104FB } }, // # OSAGE CAPITAL LETTER ZHA
    .{ .code = 0x10C80, .status = .C, .mapping = .{ .C = 0x10CC0 } }, // # OLD HUNGARIAN CAPITAL LETTER A
    .{ .code = 0x10C81, .status = .C, .mapping = .{ .C = 0x10CC1 } }, // # OLD HUNGARIAN CAPITAL LETTER AA
    .{ .code = 0x10C82, .status = .C, .mapping = .{ .C = 0x10CC2 } }, // # OLD HUNGARIAN CAPITAL LETTER EB
    .{ .code = 0x10C83, .status = .C, .mapping = .{ .C = 0x10CC3 } }, // # OLD HUNGARIAN CAPITAL LETTER AMB
    .{ .code = 0x10C84, .status = .C, .mapping = .{ .C = 0x10CC4 } }, // # OLD HUNGARIAN CAPITAL LETTER EC
    .{ .code = 0x10C85, .status = .C, .mapping = .{ .C = 0x10CC5 } }, // # OLD HUNGARIAN CAPITAL LETTER ENC
    .{ .code = 0x10C86, .status = .C, .mapping = .{ .C = 0x10CC6 } }, // # OLD HUNGARIAN CAPITAL LETTER ECS
    .{ .code = 0x10C87, .status = .C, .mapping = .{ .C = 0x10CC7 } }, // # OLD HUNGARIAN CAPITAL LETTER ED
    .{ .code = 0x10C88, .status = .C, .mapping = .{ .C = 0x10CC8 } }, // # OLD HUNGARIAN CAPITAL LETTER AND
    .{ .code = 0x10C89, .status = .C, .mapping = .{ .C = 0x10CC9 } }, // # OLD HUNGARIAN CAPITAL LETTER E
    .{ .code = 0x10C8A, .status = .C, .mapping = .{ .C = 0x10CCA } }, // # OLD HUNGARIAN CAPITAL LETTER CLOSE E
    .{ .code = 0x10C8B, .status = .C, .mapping = .{ .C = 0x10CCB } }, // # OLD HUNGARIAN CAPITAL LETTER EE
    .{ .code = 0x10C8C, .status = .C, .mapping = .{ .C = 0x10CCC } }, // # OLD HUNGARIAN CAPITAL LETTER EF
    .{ .code = 0x10C8D, .status = .C, .mapping = .{ .C = 0x10CCD } }, // # OLD HUNGARIAN CAPITAL LETTER EG
    .{ .code = 0x10C8E, .status = .C, .mapping = .{ .C = 0x10CCE } }, // # OLD HUNGARIAN CAPITAL LETTER EGY
    .{ .code = 0x10C8F, .status = .C, .mapping = .{ .C = 0x10CCF } }, // # OLD HUNGARIAN CAPITAL LETTER EH
    .{ .code = 0x10C90, .status = .C, .mapping = .{ .C = 0x10CD0 } }, // # OLD HUNGARIAN CAPITAL LETTER I
    .{ .code = 0x10C91, .status = .C, .mapping = .{ .C = 0x10CD1 } }, // # OLD HUNGARIAN CAPITAL LETTER II
    .{ .code = 0x10C92, .status = .C, .mapping = .{ .C = 0x10CD2 } }, // # OLD HUNGARIAN CAPITAL LETTER EJ
    .{ .code = 0x10C93, .status = .C, .mapping = .{ .C = 0x10CD3 } }, // # OLD HUNGARIAN CAPITAL LETTER EK
    .{ .code = 0x10C94, .status = .C, .mapping = .{ .C = 0x10CD4 } }, // # OLD HUNGARIAN CAPITAL LETTER AK
    .{ .code = 0x10C95, .status = .C, .mapping = .{ .C = 0x10CD5 } }, // # OLD HUNGARIAN CAPITAL LETTER UNK
    .{ .code = 0x10C96, .status = .C, .mapping = .{ .C = 0x10CD6 } }, // # OLD HUNGARIAN CAPITAL LETTER EL
    .{ .code = 0x10C97, .status = .C, .mapping = .{ .C = 0x10CD7 } }, // # OLD HUNGARIAN CAPITAL LETTER ELY
    .{ .code = 0x10C98, .status = .C, .mapping = .{ .C = 0x10CD8 } }, // # OLD HUNGARIAN CAPITAL LETTER EM
    .{ .code = 0x10C99, .status = .C, .mapping = .{ .C = 0x10CD9 } }, // # OLD HUNGARIAN CAPITAL LETTER EN
    .{ .code = 0x10C9A, .status = .C, .mapping = .{ .C = 0x10CDA } }, // # OLD HUNGARIAN CAPITAL LETTER ENY
    .{ .code = 0x10C9B, .status = .C, .mapping = .{ .C = 0x10CDB } }, // # OLD HUNGARIAN CAPITAL LETTER O
    .{ .code = 0x10C9C, .status = .C, .mapping = .{ .C = 0x10CDC } }, // # OLD HUNGARIAN CAPITAL LETTER OO
    .{ .code = 0x10C9D, .status = .C, .mapping = .{ .C = 0x10CDD } }, // # OLD HUNGARIAN CAPITAL LETTER NIKOLSBURG OE
    .{ .code = 0x10C9E, .status = .C, .mapping = .{ .C = 0x10CDE } }, // # OLD HUNGARIAN CAPITAL LETTER RUDIMENTA OE
    .{ .code = 0x10C9F, .status = .C, .mapping = .{ .C = 0x10CDF } }, // # OLD HUNGARIAN CAPITAL LETTER OEE
    .{ .code = 0x10CA0, .status = .C, .mapping = .{ .C = 0x10CE0 } }, // # OLD HUNGARIAN CAPITAL LETTER EP
    .{ .code = 0x10CA1, .status = .C, .mapping = .{ .C = 0x10CE1 } }, // # OLD HUNGARIAN CAPITAL LETTER EMP
    .{ .code = 0x10CA2, .status = .C, .mapping = .{ .C = 0x10CE2 } }, // # OLD HUNGARIAN CAPITAL LETTER ER
    .{ .code = 0x10CA3, .status = .C, .mapping = .{ .C = 0x10CE3 } }, // # OLD HUNGARIAN CAPITAL LETTER SHORT ER
    .{ .code = 0x10CA4, .status = .C, .mapping = .{ .C = 0x10CE4 } }, // # OLD HUNGARIAN CAPITAL LETTER ES
    .{ .code = 0x10CA5, .status = .C, .mapping = .{ .C = 0x10CE5 } }, // # OLD HUNGARIAN CAPITAL LETTER ESZ
    .{ .code = 0x10CA6, .status = .C, .mapping = .{ .C = 0x10CE6 } }, // # OLD HUNGARIAN CAPITAL LETTER ET
    .{ .code = 0x10CA7, .status = .C, .mapping = .{ .C = 0x10CE7 } }, // # OLD HUNGARIAN CAPITAL LETTER ENT
    .{ .code = 0x10CA8, .status = .C, .mapping = .{ .C = 0x10CE8 } }, // # OLD HUNGARIAN CAPITAL LETTER ETY
    .{ .code = 0x10CA9, .status = .C, .mapping = .{ .C = 0x10CE9 } }, // # OLD HUNGARIAN CAPITAL LETTER ECH
    .{ .code = 0x10CAA, .status = .C, .mapping = .{ .C = 0x10CEA } }, // # OLD HUNGARIAN CAPITAL LETTER U
    .{ .code = 0x10CAB, .status = .C, .mapping = .{ .C = 0x10CEB } }, // # OLD HUNGARIAN CAPITAL LETTER UU
    .{ .code = 0x10CAC, .status = .C, .mapping = .{ .C = 0x10CEC } }, // # OLD HUNGARIAN CAPITAL LETTER NIKOLSBURG UE
    .{ .code = 0x10CAD, .status = .C, .mapping = .{ .C = 0x10CED } }, // # OLD HUNGARIAN CAPITAL LETTER RUDIMENTA UE
    .{ .code = 0x10CAE, .status = .C, .mapping = .{ .C = 0x10CEE } }, // # OLD HUNGARIAN CAPITAL LETTER EV
    .{ .code = 0x10CAF, .status = .C, .mapping = .{ .C = 0x10CEF } }, // # OLD HUNGARIAN CAPITAL LETTER EZ
    .{ .code = 0x10CB0, .status = .C, .mapping = .{ .C = 0x10CF0 } }, // # OLD HUNGARIAN CAPITAL LETTER EZS
    .{ .code = 0x10CB1, .status = .C, .mapping = .{ .C = 0x10CF1 } }, // # OLD HUNGARIAN CAPITAL LETTER ENT-SHAPED SIGN
    .{ .code = 0x10CB2, .status = .C, .mapping = .{ .C = 0x10CF2 } }, // # OLD HUNGARIAN CAPITAL LETTER US
    .{ .code = 0x118A0, .status = .C, .mapping = .{ .C = 0x118C0 } }, // # WARANG CITI CAPITAL LETTER NGAA
    .{ .code = 0x118A1, .status = .C, .mapping = .{ .C = 0x118C1 } }, // # WARANG CITI CAPITAL LETTER A
    .{ .code = 0x118A2, .status = .C, .mapping = .{ .C = 0x118C2 } }, // # WARANG CITI CAPITAL LETTER WI
    .{ .code = 0x118A3, .status = .C, .mapping = .{ .C = 0x118C3 } }, // # WARANG CITI CAPITAL LETTER YU
    .{ .code = 0x118A4, .status = .C, .mapping = .{ .C = 0x118C4 } }, // # WARANG CITI CAPITAL LETTER YA
    .{ .code = 0x118A5, .status = .C, .mapping = .{ .C = 0x118C5 } }, // # WARANG CITI CAPITAL LETTER YO
    .{ .code = 0x118A6, .status = .C, .mapping = .{ .C = 0x118C6 } }, // # WARANG CITI CAPITAL LETTER II
    .{ .code = 0x118A7, .status = .C, .mapping = .{ .C = 0x118C7 } }, // # WARANG CITI CAPITAL LETTER UU
    .{ .code = 0x118A8, .status = .C, .mapping = .{ .C = 0x118C8 } }, // # WARANG CITI CAPITAL LETTER E
    .{ .code = 0x118A9, .status = .C, .mapping = .{ .C = 0x118C9 } }, // # WARANG CITI CAPITAL LETTER O
    .{ .code = 0x118AA, .status = .C, .mapping = .{ .C = 0x118CA } }, // # WARANG CITI CAPITAL LETTER ANG
    .{ .code = 0x118AB, .status = .C, .mapping = .{ .C = 0x118CB } }, // # WARANG CITI CAPITAL LETTER GA
    .{ .code = 0x118AC, .status = .C, .mapping = .{ .C = 0x118CC } }, // # WARANG CITI CAPITAL LETTER KO
    .{ .code = 0x118AD, .status = .C, .mapping = .{ .C = 0x118CD } }, // # WARANG CITI CAPITAL LETTER ENY
    .{ .code = 0x118AE, .status = .C, .mapping = .{ .C = 0x118CE } }, // # WARANG CITI CAPITAL LETTER YUJ
    .{ .code = 0x118AF, .status = .C, .mapping = .{ .C = 0x118CF } }, // # WARANG CITI CAPITAL LETTER UC
    .{ .code = 0x118B0, .status = .C, .mapping = .{ .C = 0x118D0 } }, // # WARANG CITI CAPITAL LETTER ENN
    .{ .code = 0x118B1, .status = .C, .mapping = .{ .C = 0x118D1 } }, // # WARANG CITI CAPITAL LETTER ODD
    .{ .code = 0x118B2, .status = .C, .mapping = .{ .C = 0x118D2 } }, // # WARANG CITI CAPITAL LETTER TTE
    .{ .code = 0x118B3, .status = .C, .mapping = .{ .C = 0x118D3 } }, // # WARANG CITI CAPITAL LETTER NUNG
    .{ .code = 0x118B4, .status = .C, .mapping = .{ .C = 0x118D4 } }, // # WARANG CITI CAPITAL LETTER DA
    .{ .code = 0x118B5, .status = .C, .mapping = .{ .C = 0x118D5 } }, // # WARANG CITI CAPITAL LETTER AT
    .{ .code = 0x118B6, .status = .C, .mapping = .{ .C = 0x118D6 } }, // # WARANG CITI CAPITAL LETTER AM
    .{ .code = 0x118B7, .status = .C, .mapping = .{ .C = 0x118D7 } }, // # WARANG CITI CAPITAL LETTER BU
    .{ .code = 0x118B8, .status = .C, .mapping = .{ .C = 0x118D8 } }, // # WARANG CITI CAPITAL LETTER PU
    .{ .code = 0x118B9, .status = .C, .mapping = .{ .C = 0x118D9 } }, // # WARANG CITI CAPITAL LETTER HIYO
    .{ .code = 0x118BA, .status = .C, .mapping = .{ .C = 0x118DA } }, // # WARANG CITI CAPITAL LETTER HOLO
    .{ .code = 0x118BB, .status = .C, .mapping = .{ .C = 0x118DB } }, // # WARANG CITI CAPITAL LETTER HORR
    .{ .code = 0x118BC, .status = .C, .mapping = .{ .C = 0x118DC } }, // # WARANG CITI CAPITAL LETTER HAR
    .{ .code = 0x118BD, .status = .C, .mapping = .{ .C = 0x118DD } }, // # WARANG CITI CAPITAL LETTER SSUU
    .{ .code = 0x118BE, .status = .C, .mapping = .{ .C = 0x118DE } }, // # WARANG CITI CAPITAL LETTER SII
    .{ .code = 0x118BF, .status = .C, .mapping = .{ .C = 0x118DF } }, // # WARANG CITI CAPITAL LETTER VIYO
    .{ .code = 0x16E40, .status = .C, .mapping = .{ .C = 0x16E60 } }, // # MEDEFAIDRIN CAPITAL LETTER M
    .{ .code = 0x16E41, .status = .C, .mapping = .{ .C = 0x16E61 } }, // # MEDEFAIDRIN CAPITAL LETTER S
    .{ .code = 0x16E42, .status = .C, .mapping = .{ .C = 0x16E62 } }, // # MEDEFAIDRIN CAPITAL LETTER V
    .{ .code = 0x16E43, .status = .C, .mapping = .{ .C = 0x16E63 } }, // # MEDEFAIDRIN CAPITAL LETTER W
    .{ .code = 0x16E44, .status = .C, .mapping = .{ .C = 0x16E64 } }, // # MEDEFAIDRIN CAPITAL LETTER ATIU
    .{ .code = 0x16E45, .status = .C, .mapping = .{ .C = 0x16E65 } }, // # MEDEFAIDRIN CAPITAL LETTER Z
    .{ .code = 0x16E46, .status = .C, .mapping = .{ .C = 0x16E66 } }, // # MEDEFAIDRIN CAPITAL LETTER KP
    .{ .code = 0x16E47, .status = .C, .mapping = .{ .C = 0x16E67 } }, // # MEDEFAIDRIN CAPITAL LETTER P
    .{ .code = 0x16E48, .status = .C, .mapping = .{ .C = 0x16E68 } }, // # MEDEFAIDRIN CAPITAL LETTER T
    .{ .code = 0x16E49, .status = .C, .mapping = .{ .C = 0x16E69 } }, // # MEDEFAIDRIN CAPITAL LETTER G
    .{ .code = 0x16E4A, .status = .C, .mapping = .{ .C = 0x16E6A } }, // # MEDEFAIDRIN CAPITAL LETTER F
    .{ .code = 0x16E4B, .status = .C, .mapping = .{ .C = 0x16E6B } }, // # MEDEFAIDRIN CAPITAL LETTER I
    .{ .code = 0x16E4C, .status = .C, .mapping = .{ .C = 0x16E6C } }, // # MEDEFAIDRIN CAPITAL LETTER K
    .{ .code = 0x16E4D, .status = .C, .mapping = .{ .C = 0x16E6D } }, // # MEDEFAIDRIN CAPITAL LETTER A
    .{ .code = 0x16E4E, .status = .C, .mapping = .{ .C = 0x16E6E } }, // # MEDEFAIDRIN CAPITAL LETTER J
    .{ .code = 0x16E4F, .status = .C, .mapping = .{ .C = 0x16E6F } }, // # MEDEFAIDRIN CAPITAL LETTER E
    .{ .code = 0x16E50, .status = .C, .mapping = .{ .C = 0x16E70 } }, // # MEDEFAIDRIN CAPITAL LETTER B
    .{ .code = 0x16E51, .status = .C, .mapping = .{ .C = 0x16E71 } }, // # MEDEFAIDRIN CAPITAL LETTER C
    .{ .code = 0x16E52, .status = .C, .mapping = .{ .C = 0x16E72 } }, // # MEDEFAIDRIN CAPITAL LETTER U
    .{ .code = 0x16E53, .status = .C, .mapping = .{ .C = 0x16E73 } }, // # MEDEFAIDRIN CAPITAL LETTER YU
    .{ .code = 0x16E54, .status = .C, .mapping = .{ .C = 0x16E74 } }, // # MEDEFAIDRIN CAPITAL LETTER L
    .{ .code = 0x16E55, .status = .C, .mapping = .{ .C = 0x16E75 } }, // # MEDEFAIDRIN CAPITAL LETTER Q
    .{ .code = 0x16E56, .status = .C, .mapping = .{ .C = 0x16E76 } }, // # MEDEFAIDRIN CAPITAL LETTER HP
    .{ .code = 0x16E57, .status = .C, .mapping = .{ .C = 0x16E77 } }, // # MEDEFAIDRIN CAPITAL LETTER NY
    .{ .code = 0x16E58, .status = .C, .mapping = .{ .C = 0x16E78 } }, // # MEDEFAIDRIN CAPITAL LETTER X
    .{ .code = 0x16E59, .status = .C, .mapping = .{ .C = 0x16E79 } }, // # MEDEFAIDRIN CAPITAL LETTER D
    .{ .code = 0x16E5A, .status = .C, .mapping = .{ .C = 0x16E7A } }, // # MEDEFAIDRIN CAPITAL LETTER OE
    .{ .code = 0x16E5B, .status = .C, .mapping = .{ .C = 0x16E7B } }, // # MEDEFAIDRIN CAPITAL LETTER N
    .{ .code = 0x16E5C, .status = .C, .mapping = .{ .C = 0x16E7C } }, // # MEDEFAIDRIN CAPITAL LETTER R
    .{ .code = 0x16E5D, .status = .C, .mapping = .{ .C = 0x16E7D } }, // # MEDEFAIDRIN CAPITAL LETTER O
    .{ .code = 0x16E5E, .status = .C, .mapping = .{ .C = 0x16E7E } }, // # MEDEFAIDRIN CAPITAL LETTER AI
    .{ .code = 0x16E5F, .status = .C, .mapping = .{ .C = 0x16E7F } }, // # MEDEFAIDRIN CAPITAL LETTER Y
    .{ .code = 0x1E900, .status = .C, .mapping = .{ .C = 0x1E922 } }, // # ADLAM CAPITAL LETTER ALIF
    .{ .code = 0x1E901, .status = .C, .mapping = .{ .C = 0x1E923 } }, // # ADLAM CAPITAL LETTER DAALI
    .{ .code = 0x1E902, .status = .C, .mapping = .{ .C = 0x1E924 } }, // # ADLAM CAPITAL LETTER LAAM
    .{ .code = 0x1E903, .status = .C, .mapping = .{ .C = 0x1E925 } }, // # ADLAM CAPITAL LETTER MIIM
    .{ .code = 0x1E904, .status = .C, .mapping = .{ .C = 0x1E926 } }, // # ADLAM CAPITAL LETTER BA
    .{ .code = 0x1E905, .status = .C, .mapping = .{ .C = 0x1E927 } }, // # ADLAM CAPITAL LETTER SINNYIIYHE
    .{ .code = 0x1E906, .status = .C, .mapping = .{ .C = 0x1E928 } }, // # ADLAM CAPITAL LETTER PE
    .{ .code = 0x1E907, .status = .C, .mapping = .{ .C = 0x1E929 } }, // # ADLAM CAPITAL LETTER BHE
    .{ .code = 0x1E908, .status = .C, .mapping = .{ .C = 0x1E92A } }, // # ADLAM CAPITAL LETTER RA
    .{ .code = 0x1E909, .status = .C, .mapping = .{ .C = 0x1E92B } }, // # ADLAM CAPITAL LETTER E
    .{ .code = 0x1E90A, .status = .C, .mapping = .{ .C = 0x1E92C } }, // # ADLAM CAPITAL LETTER FA
    .{ .code = 0x1E90B, .status = .C, .mapping = .{ .C = 0x1E92D } }, // # ADLAM CAPITAL LETTER I
    .{ .code = 0x1E90C, .status = .C, .mapping = .{ .C = 0x1E92E } }, // # ADLAM CAPITAL LETTER O
    .{ .code = 0x1E90D, .status = .C, .mapping = .{ .C = 0x1E92F } }, // # ADLAM CAPITAL LETTER DHA
    .{ .code = 0x1E90E, .status = .C, .mapping = .{ .C = 0x1E930 } }, // # ADLAM CAPITAL LETTER YHE
    .{ .code = 0x1E90F, .status = .C, .mapping = .{ .C = 0x1E931 } }, // # ADLAM CAPITAL LETTER WAW
    .{ .code = 0x1E910, .status = .C, .mapping = .{ .C = 0x1E932 } }, // # ADLAM CAPITAL LETTER NUN
    .{ .code = 0x1E911, .status = .C, .mapping = .{ .C = 0x1E933 } }, // # ADLAM CAPITAL LETTER KAF
    .{ .code = 0x1E912, .status = .C, .mapping = .{ .C = 0x1E934 } }, // # ADLAM CAPITAL LETTER YA
    .{ .code = 0x1E913, .status = .C, .mapping = .{ .C = 0x1E935 } }, // # ADLAM CAPITAL LETTER U
    .{ .code = 0x1E914, .status = .C, .mapping = .{ .C = 0x1E936 } }, // # ADLAM CAPITAL LETTER JIIM
    .{ .code = 0x1E915, .status = .C, .mapping = .{ .C = 0x1E937 } }, // # ADLAM CAPITAL LETTER CHI
    .{ .code = 0x1E916, .status = .C, .mapping = .{ .C = 0x1E938 } }, // # ADLAM CAPITAL LETTER HA
    .{ .code = 0x1E917, .status = .C, .mapping = .{ .C = 0x1E939 } }, // # ADLAM CAPITAL LETTER QAAF
    .{ .code = 0x1E918, .status = .C, .mapping = .{ .C = 0x1E93A } }, // # ADLAM CAPITAL LETTER GA
    .{ .code = 0x1E919, .status = .C, .mapping = .{ .C = 0x1E93B } }, // # ADLAM CAPITAL LETTER NYA
    .{ .code = 0x1E91A, .status = .C, .mapping = .{ .C = 0x1E93C } }, // # ADLAM CAPITAL LETTER TU
    .{ .code = 0x1E91B, .status = .C, .mapping = .{ .C = 0x1E93D } }, // # ADLAM CAPITAL LETTER NHA
    .{ .code = 0x1E91C, .status = .C, .mapping = .{ .C = 0x1E93E } }, // # ADLAM CAPITAL LETTER VA
    .{ .code = 0x1E91D, .status = .C, .mapping = .{ .C = 0x1E93F } }, // # ADLAM CAPITAL LETTER KHA
    .{ .code = 0x1E91E, .status = .C, .mapping = .{ .C = 0x1E940 } }, // # ADLAM CAPITAL LETTER GBE
    .{ .code = 0x1E91F, .status = .C, .mapping = .{ .C = 0x1E941 } }, // # ADLAM CAPITAL LETTER ZAL
    .{ .code = 0x1E920, .status = .C, .mapping = .{ .C = 0x1E942 } }, // # ADLAM CAPITAL LETTER KPO
    .{ .code = 0x1E921, .status = .C, .mapping = .{ .C = 0x1E943 } }, // # ADLAM CAPITAL LETTER SHA
};
