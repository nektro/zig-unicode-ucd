// This file is part of the Unicode Character Database
// See http://www.unicode.org/reports/tr44/ for more information.
//
// Based on the source file: https://unicode.org/Public/13.0.0/ucd/BidiBrackets.txt
//

pub const BracketPairing = struct {
    codepoint: u21,
    pair: u21,
    type: Type,

    pub const Type = enum {
        o,
        c,
        n,
    };
};

pub const data = [_]BracketPairing{
    .{ .codepoint = 0x0028, .pair = 0x0029, .type = .o }, // LEFT PARENTHESIS
    .{ .codepoint = 0x0029, .pair = 0x0028, .type = .c }, // RIGHT PARENTHESIS
    .{ .codepoint = 0x005B, .pair = 0x005D, .type = .o }, // LEFT SQUARE BRACKET
    .{ .codepoint = 0x005D, .pair = 0x005B, .type = .c }, // RIGHT SQUARE BRACKET
    .{ .codepoint = 0x007B, .pair = 0x007D, .type = .o }, // LEFT CURLY BRACKET
    .{ .codepoint = 0x007D, .pair = 0x007B, .type = .c }, // RIGHT CURLY BRACKET
    .{ .codepoint = 0x0F3A, .pair = 0x0F3B, .type = .o }, // TIBETAN MARK GUG RTAGS GYON
    .{ .codepoint = 0x0F3B, .pair = 0x0F3A, .type = .c }, // TIBETAN MARK GUG RTAGS GYAS
    .{ .codepoint = 0x0F3C, .pair = 0x0F3D, .type = .o }, // TIBETAN MARK ANG KHANG GYON
    .{ .codepoint = 0x0F3D, .pair = 0x0F3C, .type = .c }, // TIBETAN MARK ANG KHANG GYAS
    .{ .codepoint = 0x169B, .pair = 0x169C, .type = .o }, // OGHAM FEATHER MARK
    .{ .codepoint = 0x169C, .pair = 0x169B, .type = .c }, // OGHAM REVERSED FEATHER MARK
    .{ .codepoint = 0x2045, .pair = 0x2046, .type = .o }, // LEFT SQUARE BRACKET WITH QUILL
    .{ .codepoint = 0x2046, .pair = 0x2045, .type = .c }, // RIGHT SQUARE BRACKET WITH QUILL
    .{ .codepoint = 0x207D, .pair = 0x207E, .type = .o }, // SUPERSCRIPT LEFT PARENTHESIS
    .{ .codepoint = 0x207E, .pair = 0x207D, .type = .c }, // SUPERSCRIPT RIGHT PARENTHESIS
    .{ .codepoint = 0x208D, .pair = 0x208E, .type = .o }, // SUBSCRIPT LEFT PARENTHESIS
    .{ .codepoint = 0x208E, .pair = 0x208D, .type = .c }, // SUBSCRIPT RIGHT PARENTHESIS
    .{ .codepoint = 0x2308, .pair = 0x2309, .type = .o }, // LEFT CEILING
    .{ .codepoint = 0x2309, .pair = 0x2308, .type = .c }, // RIGHT CEILING
    .{ .codepoint = 0x230A, .pair = 0x230B, .type = .o }, // LEFT FLOOR
    .{ .codepoint = 0x230B, .pair = 0x230A, .type = .c }, // RIGHT FLOOR
    .{ .codepoint = 0x2329, .pair = 0x232A, .type = .o }, // LEFT-POINTING ANGLE BRACKET
    .{ .codepoint = 0x232A, .pair = 0x2329, .type = .c }, // RIGHT-POINTING ANGLE BRACKET
    .{ .codepoint = 0x2768, .pair = 0x2769, .type = .o }, // MEDIUM LEFT PARENTHESIS ORNAMENT
    .{ .codepoint = 0x2769, .pair = 0x2768, .type = .c }, // MEDIUM RIGHT PARENTHESIS ORNAMENT
    .{ .codepoint = 0x276A, .pair = 0x276B, .type = .o }, // MEDIUM FLATTENED LEFT PARENTHESIS ORNAMENT
    .{ .codepoint = 0x276B, .pair = 0x276A, .type = .c }, // MEDIUM FLATTENED RIGHT PARENTHESIS ORNAMENT
    .{ .codepoint = 0x276C, .pair = 0x276D, .type = .o }, // MEDIUM LEFT-POINTING ANGLE BRACKET ORNAMENT
    .{ .codepoint = 0x276D, .pair = 0x276C, .type = .c }, // MEDIUM RIGHT-POINTING ANGLE BRACKET ORNAMENT
    .{ .codepoint = 0x276E, .pair = 0x276F, .type = .o }, // HEAVY LEFT-POINTING ANGLE QUOTATION MARK ORNAMENT
    .{ .codepoint = 0x276F, .pair = 0x276E, .type = .c }, // HEAVY RIGHT-POINTING ANGLE QUOTATION MARK ORNAMENT
    .{ .codepoint = 0x2770, .pair = 0x2771, .type = .o }, // HEAVY LEFT-POINTING ANGLE BRACKET ORNAMENT
    .{ .codepoint = 0x2771, .pair = 0x2770, .type = .c }, // HEAVY RIGHT-POINTING ANGLE BRACKET ORNAMENT
    .{ .codepoint = 0x2772, .pair = 0x2773, .type = .o }, // LIGHT LEFT TORTOISE SHELL BRACKET ORNAMENT
    .{ .codepoint = 0x2773, .pair = 0x2772, .type = .c }, // LIGHT RIGHT TORTOISE SHELL BRACKET ORNAMENT
    .{ .codepoint = 0x2774, .pair = 0x2775, .type = .o }, // MEDIUM LEFT CURLY BRACKET ORNAMENT
    .{ .codepoint = 0x2775, .pair = 0x2774, .type = .c }, // MEDIUM RIGHT CURLY BRACKET ORNAMENT
    .{ .codepoint = 0x27C5, .pair = 0x27C6, .type = .o }, // LEFT S-SHAPED BAG DELIMITER
    .{ .codepoint = 0x27C6, .pair = 0x27C5, .type = .c }, // RIGHT S-SHAPED BAG DELIMITER
    .{ .codepoint = 0x27E6, .pair = 0x27E7, .type = .o }, // MATHEMATICAL LEFT WHITE SQUARE BRACKET
    .{ .codepoint = 0x27E7, .pair = 0x27E6, .type = .c }, // MATHEMATICAL RIGHT WHITE SQUARE BRACKET
    .{ .codepoint = 0x27E8, .pair = 0x27E9, .type = .o }, // MATHEMATICAL LEFT ANGLE BRACKET
    .{ .codepoint = 0x27E9, .pair = 0x27E8, .type = .c }, // MATHEMATICAL RIGHT ANGLE BRACKET
    .{ .codepoint = 0x27EA, .pair = 0x27EB, .type = .o }, // MATHEMATICAL LEFT DOUBLE ANGLE BRACKET
    .{ .codepoint = 0x27EB, .pair = 0x27EA, .type = .c }, // MATHEMATICAL RIGHT DOUBLE ANGLE BRACKET
    .{ .codepoint = 0x27EC, .pair = 0x27ED, .type = .o }, // MATHEMATICAL LEFT WHITE TORTOISE SHELL BRACKET
    .{ .codepoint = 0x27ED, .pair = 0x27EC, .type = .c }, // MATHEMATICAL RIGHT WHITE TORTOISE SHELL BRACKET
    .{ .codepoint = 0x27EE, .pair = 0x27EF, .type = .o }, // MATHEMATICAL LEFT FLATTENED PARENTHESIS
    .{ .codepoint = 0x27EF, .pair = 0x27EE, .type = .c }, // MATHEMATICAL RIGHT FLATTENED PARENTHESIS
    .{ .codepoint = 0x2983, .pair = 0x2984, .type = .o }, // LEFT WHITE CURLY BRACKET
    .{ .codepoint = 0x2984, .pair = 0x2983, .type = .c }, // RIGHT WHITE CURLY BRACKET
    .{ .codepoint = 0x2985, .pair = 0x2986, .type = .o }, // LEFT WHITE PARENTHESIS
    .{ .codepoint = 0x2986, .pair = 0x2985, .type = .c }, // RIGHT WHITE PARENTHESIS
    .{ .codepoint = 0x2987, .pair = 0x2988, .type = .o }, // Z NOTATION LEFT IMAGE BRACKET
    .{ .codepoint = 0x2988, .pair = 0x2987, .type = .c }, // Z NOTATION RIGHT IMAGE BRACKET
    .{ .codepoint = 0x2989, .pair = 0x298A, .type = .o }, // Z NOTATION LEFT BINDING BRACKET
    .{ .codepoint = 0x298A, .pair = 0x2989, .type = .c }, // Z NOTATION RIGHT BINDING BRACKET
    .{ .codepoint = 0x298B, .pair = 0x298C, .type = .o }, // LEFT SQUARE BRACKET WITH UNDERBAR
    .{ .codepoint = 0x298C, .pair = 0x298B, .type = .c }, // RIGHT SQUARE BRACKET WITH UNDERBAR
    .{ .codepoint = 0x298D, .pair = 0x2990, .type = .o }, // LEFT SQUARE BRACKET WITH TICK IN TOP CORNER
    .{ .codepoint = 0x298E, .pair = 0x298F, .type = .c }, // RIGHT SQUARE BRACKET WITH TICK IN BOTTOM CORNER
    .{ .codepoint = 0x298F, .pair = 0x298E, .type = .o }, // LEFT SQUARE BRACKET WITH TICK IN BOTTOM CORNER
    .{ .codepoint = 0x2990, .pair = 0x298D, .type = .c }, // RIGHT SQUARE BRACKET WITH TICK IN TOP CORNER
    .{ .codepoint = 0x2991, .pair = 0x2992, .type = .o }, // LEFT ANGLE BRACKET WITH DOT
    .{ .codepoint = 0x2992, .pair = 0x2991, .type = .c }, // RIGHT ANGLE BRACKET WITH DOT
    .{ .codepoint = 0x2993, .pair = 0x2994, .type = .o }, // LEFT ARC LESS-THAN BRACKET
    .{ .codepoint = 0x2994, .pair = 0x2993, .type = .c }, // RIGHT ARC GREATER-THAN BRACKET
    .{ .codepoint = 0x2995, .pair = 0x2996, .type = .o }, // DOUBLE LEFT ARC GREATER-THAN BRACKET
    .{ .codepoint = 0x2996, .pair = 0x2995, .type = .c }, // DOUBLE RIGHT ARC LESS-THAN BRACKET
    .{ .codepoint = 0x2997, .pair = 0x2998, .type = .o }, // LEFT BLACK TORTOISE SHELL BRACKET
    .{ .codepoint = 0x2998, .pair = 0x2997, .type = .c }, // RIGHT BLACK TORTOISE SHELL BRACKET
    .{ .codepoint = 0x29D8, .pair = 0x29D9, .type = .o }, // LEFT WIGGLY FENCE
    .{ .codepoint = 0x29D9, .pair = 0x29D8, .type = .c }, // RIGHT WIGGLY FENCE
    .{ .codepoint = 0x29DA, .pair = 0x29DB, .type = .o }, // LEFT DOUBLE WIGGLY FENCE
    .{ .codepoint = 0x29DB, .pair = 0x29DA, .type = .c }, // RIGHT DOUBLE WIGGLY FENCE
    .{ .codepoint = 0x29FC, .pair = 0x29FD, .type = .o }, // LEFT-POINTING CURVED ANGLE BRACKET
    .{ .codepoint = 0x29FD, .pair = 0x29FC, .type = .c }, // RIGHT-POINTING CURVED ANGLE BRACKET
    .{ .codepoint = 0x2E22, .pair = 0x2E23, .type = .o }, // TOP LEFT HALF BRACKET
    .{ .codepoint = 0x2E23, .pair = 0x2E22, .type = .c }, // TOP RIGHT HALF BRACKET
    .{ .codepoint = 0x2E24, .pair = 0x2E25, .type = .o }, // BOTTOM LEFT HALF BRACKET
    .{ .codepoint = 0x2E25, .pair = 0x2E24, .type = .c }, // BOTTOM RIGHT HALF BRACKET
    .{ .codepoint = 0x2E26, .pair = 0x2E27, .type = .o }, // LEFT SIDEWAYS U BRACKET
    .{ .codepoint = 0x2E27, .pair = 0x2E26, .type = .c }, // RIGHT SIDEWAYS U BRACKET
    .{ .codepoint = 0x2E28, .pair = 0x2E29, .type = .o }, // LEFT DOUBLE PARENTHESIS
    .{ .codepoint = 0x2E29, .pair = 0x2E28, .type = .c }, // RIGHT DOUBLE PARENTHESIS
    .{ .codepoint = 0x3008, .pair = 0x3009, .type = .o }, // LEFT ANGLE BRACKET
    .{ .codepoint = 0x3009, .pair = 0x3008, .type = .c }, // RIGHT ANGLE BRACKET
    .{ .codepoint = 0x300A, .pair = 0x300B, .type = .o }, // LEFT DOUBLE ANGLE BRACKET
    .{ .codepoint = 0x300B, .pair = 0x300A, .type = .c }, // RIGHT DOUBLE ANGLE BRACKET
    .{ .codepoint = 0x300C, .pair = 0x300D, .type = .o }, // LEFT CORNER BRACKET
    .{ .codepoint = 0x300D, .pair = 0x300C, .type = .c }, // RIGHT CORNER BRACKET
    .{ .codepoint = 0x300E, .pair = 0x300F, .type = .o }, // LEFT WHITE CORNER BRACKET
    .{ .codepoint = 0x300F, .pair = 0x300E, .type = .c }, // RIGHT WHITE CORNER BRACKET
    .{ .codepoint = 0x3010, .pair = 0x3011, .type = .o }, // LEFT BLACK LENTICULAR BRACKET
    .{ .codepoint = 0x3011, .pair = 0x3010, .type = .c }, // RIGHT BLACK LENTICULAR BRACKET
    .{ .codepoint = 0x3014, .pair = 0x3015, .type = .o }, // LEFT TORTOISE SHELL BRACKET
    .{ .codepoint = 0x3015, .pair = 0x3014, .type = .c }, // RIGHT TORTOISE SHELL BRACKET
    .{ .codepoint = 0x3016, .pair = 0x3017, .type = .o }, // LEFT WHITE LENTICULAR BRACKET
    .{ .codepoint = 0x3017, .pair = 0x3016, .type = .c }, // RIGHT WHITE LENTICULAR BRACKET
    .{ .codepoint = 0x3018, .pair = 0x3019, .type = .o }, // LEFT WHITE TORTOISE SHELL BRACKET
    .{ .codepoint = 0x3019, .pair = 0x3018, .type = .c }, // RIGHT WHITE TORTOISE SHELL BRACKET
    .{ .codepoint = 0x301A, .pair = 0x301B, .type = .o }, // LEFT WHITE SQUARE BRACKET
    .{ .codepoint = 0x301B, .pair = 0x301A, .type = .c }, // RIGHT WHITE SQUARE BRACKET
    .{ .codepoint = 0xFE59, .pair = 0xFE5A, .type = .o }, // SMALL LEFT PARENTHESIS
    .{ .codepoint = 0xFE5A, .pair = 0xFE59, .type = .c }, // SMALL RIGHT PARENTHESIS
    .{ .codepoint = 0xFE5B, .pair = 0xFE5C, .type = .o }, // SMALL LEFT CURLY BRACKET
    .{ .codepoint = 0xFE5C, .pair = 0xFE5B, .type = .c }, // SMALL RIGHT CURLY BRACKET
    .{ .codepoint = 0xFE5D, .pair = 0xFE5E, .type = .o }, // SMALL LEFT TORTOISE SHELL BRACKET
    .{ .codepoint = 0xFE5E, .pair = 0xFE5D, .type = .c }, // SMALL RIGHT TORTOISE SHELL BRACKET
    .{ .codepoint = 0xFF08, .pair = 0xFF09, .type = .o }, // FULLWIDTH LEFT PARENTHESIS
    .{ .codepoint = 0xFF09, .pair = 0xFF08, .type = .c }, // FULLWIDTH RIGHT PARENTHESIS
    .{ .codepoint = 0xFF3B, .pair = 0xFF3D, .type = .o }, // FULLWIDTH LEFT SQUARE BRACKET
    .{ .codepoint = 0xFF3D, .pair = 0xFF3B, .type = .c }, // FULLWIDTH RIGHT SQUARE BRACKET
    .{ .codepoint = 0xFF5B, .pair = 0xFF5D, .type = .o }, // FULLWIDTH LEFT CURLY BRACKET
    .{ .codepoint = 0xFF5D, .pair = 0xFF5B, .type = .c }, // FULLWIDTH RIGHT CURLY BRACKET
    .{ .codepoint = 0xFF5F, .pair = 0xFF60, .type = .o }, // FULLWIDTH LEFT WHITE PARENTHESIS
    .{ .codepoint = 0xFF60, .pair = 0xFF5F, .type = .c }, // FULLWIDTH RIGHT WHITE PARENTHESIS
    .{ .codepoint = 0xFF62, .pair = 0xFF63, .type = .o }, // HALFWIDTH LEFT CORNER BRACKET
    .{ .codepoint = 0xFF63, .pair = 0xFF62, .type = .c }, // HALFWIDTH RIGHT CORNER BRACKET
};
