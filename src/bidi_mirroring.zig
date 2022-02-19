// This file is part of the Unicode Character Database
// For documentation, see http://www.unicode.org/reports/tr44/
//
// Based on the source file: https://unicode.org/Public/13.0.0/ucd/BidiMirroring.txt
//

pub const Mirroring = struct {
    codepoint: u21,
    mirror: u21,
};

pub const data = [_]Mirroring{
    .{ .codepoint = 0x0028, .mirror = 0x0029 }, // LEFT PARENTHESIS
    .{ .codepoint = 0x0029, .mirror = 0x0028 }, // RIGHT PARENTHESIS
    .{ .codepoint = 0x003C, .mirror = 0x003E }, // LESS-THAN SIGN
    .{ .codepoint = 0x003E, .mirror = 0x003C }, // GREATER-THAN SIGN
    .{ .codepoint = 0x005B, .mirror = 0x005D }, // LEFT SQUARE BRACKET
    .{ .codepoint = 0x005D, .mirror = 0x005B }, // RIGHT SQUARE BRACKET
    .{ .codepoint = 0x007B, .mirror = 0x007D }, // LEFT CURLY BRACKET
    .{ .codepoint = 0x007D, .mirror = 0x007B }, // RIGHT CURLY BRACKET
    .{ .codepoint = 0x00AB, .mirror = 0x00BB }, // LEFT-POINTING DOUBLE ANGLE QUOTATION MARK
    .{ .codepoint = 0x00BB, .mirror = 0x00AB }, // RIGHT-POINTING DOUBLE ANGLE QUOTATION MARK
    .{ .codepoint = 0x0F3A, .mirror = 0x0F3B }, // TIBETAN MARK GUG RTAGS GYON
    .{ .codepoint = 0x0F3B, .mirror = 0x0F3A }, // TIBETAN MARK GUG RTAGS GYAS
    .{ .codepoint = 0x0F3C, .mirror = 0x0F3D }, // TIBETAN MARK ANG KHANG GYON
    .{ .codepoint = 0x0F3D, .mirror = 0x0F3C }, // TIBETAN MARK ANG KHANG GYAS
    .{ .codepoint = 0x169B, .mirror = 0x169C }, // OGHAM FEATHER MARK
    .{ .codepoint = 0x169C, .mirror = 0x169B }, // OGHAM REVERSED FEATHER MARK
    .{ .codepoint = 0x2039, .mirror = 0x203A }, // SINGLE LEFT-POINTING ANGLE QUOTATION MARK
    .{ .codepoint = 0x203A, .mirror = 0x2039 }, // SINGLE RIGHT-POINTING ANGLE QUOTATION MARK
    .{ .codepoint = 0x2045, .mirror = 0x2046 }, // LEFT SQUARE BRACKET WITH QUILL
    .{ .codepoint = 0x2046, .mirror = 0x2045 }, // RIGHT SQUARE BRACKET WITH QUILL
    .{ .codepoint = 0x207D, .mirror = 0x207E }, // SUPERSCRIPT LEFT PARENTHESIS
    .{ .codepoint = 0x207E, .mirror = 0x207D }, // SUPERSCRIPT RIGHT PARENTHESIS
    .{ .codepoint = 0x208D, .mirror = 0x208E }, // SUBSCRIPT LEFT PARENTHESIS
    .{ .codepoint = 0x208E, .mirror = 0x208D }, // SUBSCRIPT RIGHT PARENTHESIS
    .{ .codepoint = 0x2208, .mirror = 0x220B }, // ELEMENT OF
    .{ .codepoint = 0x2209, .mirror = 0x220C }, // NOT AN ELEMENT OF
    .{ .codepoint = 0x220A, .mirror = 0x220D }, // SMALL ELEMENT OF
    .{ .codepoint = 0x220B, .mirror = 0x2208 }, // CONTAINS AS MEMBER
    .{ .codepoint = 0x220C, .mirror = 0x2209 }, // DOES NOT CONTAIN AS MEMBER
    .{ .codepoint = 0x220D, .mirror = 0x220A }, // SMALL CONTAINS AS MEMBER
    .{ .codepoint = 0x2215, .mirror = 0x29F5 }, // DIVISION SLASH
    .{ .codepoint = 0x221F, .mirror = 0x2BFE }, // RIGHT ANGLE
    .{ .codepoint = 0x2220, .mirror = 0x29A3 }, // ANGLE
    .{ .codepoint = 0x2221, .mirror = 0x299B }, // MEASURED ANGLE
    .{ .codepoint = 0x2222, .mirror = 0x29A0 }, // SPHERICAL ANGLE
    .{ .codepoint = 0x2224, .mirror = 0x2AEE }, // DOES NOT DIVIDE
    .{ .codepoint = 0x223C, .mirror = 0x223D }, // TILDE OPERATOR
    .{ .codepoint = 0x223D, .mirror = 0x223C }, // REVERSED TILDE
    .{ .codepoint = 0x2243, .mirror = 0x22CD }, // ASYMPTOTICALLY EQUAL TO
    .{ .codepoint = 0x2245, .mirror = 0x224C }, // APPROXIMATELY EQUAL TO
    .{ .codepoint = 0x224C, .mirror = 0x2245 }, // ALL EQUAL TO
    .{ .codepoint = 0x2252, .mirror = 0x2253 }, // APPROXIMATELY EQUAL TO OR THE IMAGE OF
    .{ .codepoint = 0x2253, .mirror = 0x2252 }, // IMAGE OF OR APPROXIMATELY EQUAL TO
    .{ .codepoint = 0x2254, .mirror = 0x2255 }, // COLON EQUALS
    .{ .codepoint = 0x2255, .mirror = 0x2254 }, // EQUALS COLON
    .{ .codepoint = 0x2264, .mirror = 0x2265 }, // LESS-THAN OR EQUAL TO
    .{ .codepoint = 0x2265, .mirror = 0x2264 }, // GREATER-THAN OR EQUAL TO
    .{ .codepoint = 0x2266, .mirror = 0x2267 }, // LESS-THAN OVER EQUAL TO
    .{ .codepoint = 0x2267, .mirror = 0x2266 }, // GREATER-THAN OVER EQUAL TO
    .{ .codepoint = 0x2268, .mirror = 0x2269 }, // [BEST FIT] LESS-THAN BUT NOT EQUAL TO
    .{ .codepoint = 0x2269, .mirror = 0x2268 }, // [BEST FIT] GREATER-THAN BUT NOT EQUAL TO
    .{ .codepoint = 0x226A, .mirror = 0x226B }, // MUCH LESS-THAN
    .{ .codepoint = 0x226B, .mirror = 0x226A }, // MUCH GREATER-THAN
    .{ .codepoint = 0x226E, .mirror = 0x226F }, // [BEST FIT] NOT LESS-THAN
    .{ .codepoint = 0x226F, .mirror = 0x226E }, // [BEST FIT] NOT GREATER-THAN
    .{ .codepoint = 0x2270, .mirror = 0x2271 }, // [BEST FIT] NEITHER LESS-THAN NOR EQUAL TO
    .{ .codepoint = 0x2271, .mirror = 0x2270 }, // [BEST FIT] NEITHER GREATER-THAN NOR EQUAL TO
    .{ .codepoint = 0x2272, .mirror = 0x2273 }, // [BEST FIT] LESS-THAN OR EQUIVALENT TO
    .{ .codepoint = 0x2273, .mirror = 0x2272 }, // [BEST FIT] GREATER-THAN OR EQUIVALENT TO
    .{ .codepoint = 0x2274, .mirror = 0x2275 }, // [BEST FIT] NEITHER LESS-THAN NOR EQUIVALENT TO
    .{ .codepoint = 0x2275, .mirror = 0x2274 }, // [BEST FIT] NEITHER GREATER-THAN NOR EQUIVALENT TO
    .{ .codepoint = 0x2276, .mirror = 0x2277 }, // LESS-THAN OR GREATER-THAN
    .{ .codepoint = 0x2277, .mirror = 0x2276 }, // GREATER-THAN OR LESS-THAN
    .{ .codepoint = 0x2278, .mirror = 0x2279 }, // [BEST FIT] NEITHER LESS-THAN NOR GREATER-THAN
    .{ .codepoint = 0x2279, .mirror = 0x2278 }, // [BEST FIT] NEITHER GREATER-THAN NOR LESS-THAN
    .{ .codepoint = 0x227A, .mirror = 0x227B }, // PRECEDES
    .{ .codepoint = 0x227B, .mirror = 0x227A }, // SUCCEEDS
    .{ .codepoint = 0x227C, .mirror = 0x227D }, // PRECEDES OR EQUAL TO
    .{ .codepoint = 0x227D, .mirror = 0x227C }, // SUCCEEDS OR EQUAL TO
    .{ .codepoint = 0x227E, .mirror = 0x227F }, // [BEST FIT] PRECEDES OR EQUIVALENT TO
    .{ .codepoint = 0x227F, .mirror = 0x227E }, // [BEST FIT] SUCCEEDS OR EQUIVALENT TO
    .{ .codepoint = 0x2280, .mirror = 0x2281 }, // [BEST FIT] DOES NOT PRECEDE
    .{ .codepoint = 0x2281, .mirror = 0x2280 }, // [BEST FIT] DOES NOT SUCCEED
    .{ .codepoint = 0x2282, .mirror = 0x2283 }, // SUBSET OF
    .{ .codepoint = 0x2283, .mirror = 0x2282 }, // SUPERSET OF
    .{ .codepoint = 0x2284, .mirror = 0x2285 }, // [BEST FIT] NOT A SUBSET OF
    .{ .codepoint = 0x2285, .mirror = 0x2284 }, // [BEST FIT] NOT A SUPERSET OF
    .{ .codepoint = 0x2286, .mirror = 0x2287 }, // SUBSET OF OR EQUAL TO
    .{ .codepoint = 0x2287, .mirror = 0x2286 }, // SUPERSET OF OR EQUAL TO
    .{ .codepoint = 0x2288, .mirror = 0x2289 }, // [BEST FIT] NEITHER A SUBSET OF NOR EQUAL TO
    .{ .codepoint = 0x2289, .mirror = 0x2288 }, // [BEST FIT] NEITHER A SUPERSET OF NOR EQUAL TO
    .{ .codepoint = 0x228A, .mirror = 0x228B }, // [BEST FIT] SUBSET OF WITH NOT EQUAL TO
    .{ .codepoint = 0x228B, .mirror = 0x228A }, // [BEST FIT] SUPERSET OF WITH NOT EQUAL TO
    .{ .codepoint = 0x228F, .mirror = 0x2290 }, // SQUARE IMAGE OF
    .{ .codepoint = 0x2290, .mirror = 0x228F }, // SQUARE ORIGINAL OF
    .{ .codepoint = 0x2291, .mirror = 0x2292 }, // SQUARE IMAGE OF OR EQUAL TO
    .{ .codepoint = 0x2292, .mirror = 0x2291 }, // SQUARE ORIGINAL OF OR EQUAL TO
    .{ .codepoint = 0x2298, .mirror = 0x29B8 }, // CIRCLED DIVISION SLASH
    .{ .codepoint = 0x22A2, .mirror = 0x22A3 }, // RIGHT TACK
    .{ .codepoint = 0x22A3, .mirror = 0x22A2 }, // LEFT TACK
    .{ .codepoint = 0x22A6, .mirror = 0x2ADE }, // ASSERTION
    .{ .codepoint = 0x22A8, .mirror = 0x2AE4 }, // TRUE
    .{ .codepoint = 0x22A9, .mirror = 0x2AE3 }, // FORCES
    .{ .codepoint = 0x22AB, .mirror = 0x2AE5 }, // DOUBLE VERTICAL BAR DOUBLE RIGHT TURNSTILE
    .{ .codepoint = 0x22B0, .mirror = 0x22B1 }, // PRECEDES UNDER RELATION
    .{ .codepoint = 0x22B1, .mirror = 0x22B0 }, // SUCCEEDS UNDER RELATION
    .{ .codepoint = 0x22B2, .mirror = 0x22B3 }, // NORMAL SUBGROUP OF
    .{ .codepoint = 0x22B3, .mirror = 0x22B2 }, // CONTAINS AS NORMAL SUBGROUP
    .{ .codepoint = 0x22B4, .mirror = 0x22B5 }, // NORMAL SUBGROUP OF OR EQUAL TO
    .{ .codepoint = 0x22B5, .mirror = 0x22B4 }, // CONTAINS AS NORMAL SUBGROUP OR EQUAL TO
    .{ .codepoint = 0x22B6, .mirror = 0x22B7 }, // ORIGINAL OF
    .{ .codepoint = 0x22B7, .mirror = 0x22B6 }, // IMAGE OF
    .{ .codepoint = 0x22B8, .mirror = 0x27DC }, // MULTIMAP
    .{ .codepoint = 0x22C9, .mirror = 0x22CA }, // LEFT NORMAL FACTOR SEMIDIRECT PRODUCT
    .{ .codepoint = 0x22CA, .mirror = 0x22C9 }, // RIGHT NORMAL FACTOR SEMIDIRECT PRODUCT
    .{ .codepoint = 0x22CB, .mirror = 0x22CC }, // LEFT SEMIDIRECT PRODUCT
    .{ .codepoint = 0x22CC, .mirror = 0x22CB }, // RIGHT SEMIDIRECT PRODUCT
    .{ .codepoint = 0x22CD, .mirror = 0x2243 }, // REVERSED TILDE EQUALS
    .{ .codepoint = 0x22D0, .mirror = 0x22D1 }, // DOUBLE SUBSET
    .{ .codepoint = 0x22D1, .mirror = 0x22D0 }, // DOUBLE SUPERSET
    .{ .codepoint = 0x22D6, .mirror = 0x22D7 }, // LESS-THAN WITH DOT
    .{ .codepoint = 0x22D7, .mirror = 0x22D6 }, // GREATER-THAN WITH DOT
    .{ .codepoint = 0x22D8, .mirror = 0x22D9 }, // VERY MUCH LESS-THAN
    .{ .codepoint = 0x22D9, .mirror = 0x22D8 }, // VERY MUCH GREATER-THAN
    .{ .codepoint = 0x22DA, .mirror = 0x22DB }, // LESS-THAN EQUAL TO OR GREATER-THAN
    .{ .codepoint = 0x22DB, .mirror = 0x22DA }, // GREATER-THAN EQUAL TO OR LESS-THAN
    .{ .codepoint = 0x22DC, .mirror = 0x22DD }, // EQUAL TO OR LESS-THAN
    .{ .codepoint = 0x22DD, .mirror = 0x22DC }, // EQUAL TO OR GREATER-THAN
    .{ .codepoint = 0x22DE, .mirror = 0x22DF }, // EQUAL TO OR PRECEDES
    .{ .codepoint = 0x22DF, .mirror = 0x22DE }, // EQUAL TO OR SUCCEEDS
    .{ .codepoint = 0x22E0, .mirror = 0x22E1 }, // [BEST FIT] DOES NOT PRECEDE OR EQUAL
    .{ .codepoint = 0x22E1, .mirror = 0x22E0 }, // [BEST FIT] DOES NOT SUCCEED OR EQUAL
    .{ .codepoint = 0x22E2, .mirror = 0x22E3 }, // [BEST FIT] NOT SQUARE IMAGE OF OR EQUAL TO
    .{ .codepoint = 0x22E3, .mirror = 0x22E2 }, // [BEST FIT] NOT SQUARE ORIGINAL OF OR EQUAL TO
    .{ .codepoint = 0x22E4, .mirror = 0x22E5 }, // [BEST FIT] SQUARE IMAGE OF OR NOT EQUAL TO
    .{ .codepoint = 0x22E5, .mirror = 0x22E4 }, // [BEST FIT] SQUARE ORIGINAL OF OR NOT EQUAL TO
    .{ .codepoint = 0x22E6, .mirror = 0x22E7 }, // [BEST FIT] LESS-THAN BUT NOT EQUIVALENT TO
    .{ .codepoint = 0x22E7, .mirror = 0x22E6 }, // [BEST FIT] GREATER-THAN BUT NOT EQUIVALENT TO
    .{ .codepoint = 0x22E8, .mirror = 0x22E9 }, // [BEST FIT] PRECEDES BUT NOT EQUIVALENT TO
    .{ .codepoint = 0x22E9, .mirror = 0x22E8 }, // [BEST FIT] SUCCEEDS BUT NOT EQUIVALENT TO
    .{ .codepoint = 0x22EA, .mirror = 0x22EB }, // [BEST FIT] NOT NORMAL SUBGROUP OF
    .{ .codepoint = 0x22EB, .mirror = 0x22EA }, // [BEST FIT] DOES NOT CONTAIN AS NORMAL SUBGROUP
    .{ .codepoint = 0x22EC, .mirror = 0x22ED }, // [BEST FIT] NOT NORMAL SUBGROUP OF OR EQUAL TO
    .{ .codepoint = 0x22ED, .mirror = 0x22EC }, // [BEST FIT] DOES NOT CONTAIN AS NORMAL SUBGROUP OR EQUAL
    .{ .codepoint = 0x22F0, .mirror = 0x22F1 }, // UP RIGHT DIAGONAL ELLIPSIS
    .{ .codepoint = 0x22F1, .mirror = 0x22F0 }, // DOWN RIGHT DIAGONAL ELLIPSIS
    .{ .codepoint = 0x22F2, .mirror = 0x22FA }, // ELEMENT OF WITH LONG HORIZONTAL STROKE
    .{ .codepoint = 0x22F3, .mirror = 0x22FB }, // ELEMENT OF WITH VERTICAL BAR AT END OF HORIZONTAL STROKE
    .{ .codepoint = 0x22F4, .mirror = 0x22FC }, // SMALL ELEMENT OF WITH VERTICAL BAR AT END OF HORIZONTAL STROKE
    .{ .codepoint = 0x22F6, .mirror = 0x22FD }, // ELEMENT OF WITH OVERBAR
    .{ .codepoint = 0x22F7, .mirror = 0x22FE }, // SMALL ELEMENT OF WITH OVERBAR
    .{ .codepoint = 0x22FA, .mirror = 0x22F2 }, // CONTAINS WITH LONG HORIZONTAL STROKE
    .{ .codepoint = 0x22FB, .mirror = 0x22F3 }, // CONTAINS WITH VERTICAL BAR AT END OF HORIZONTAL STROKE
    .{ .codepoint = 0x22FC, .mirror = 0x22F4 }, // SMALL CONTAINS WITH VERTICAL BAR AT END OF HORIZONTAL STROKE
    .{ .codepoint = 0x22FD, .mirror = 0x22F6 }, // CONTAINS WITH OVERBAR
    .{ .codepoint = 0x22FE, .mirror = 0x22F7 }, // SMALL CONTAINS WITH OVERBAR
    .{ .codepoint = 0x2308, .mirror = 0x2309 }, // LEFT CEILING
    .{ .codepoint = 0x2309, .mirror = 0x2308 }, // RIGHT CEILING
    .{ .codepoint = 0x230A, .mirror = 0x230B }, // LEFT FLOOR
    .{ .codepoint = 0x230B, .mirror = 0x230A }, // RIGHT FLOOR
    .{ .codepoint = 0x2329, .mirror = 0x232A }, // LEFT-POINTING ANGLE BRACKET
    .{ .codepoint = 0x232A, .mirror = 0x2329 }, // RIGHT-POINTING ANGLE BRACKET
    .{ .codepoint = 0x2768, .mirror = 0x2769 }, // MEDIUM LEFT PARENTHESIS ORNAMENT
    .{ .codepoint = 0x2769, .mirror = 0x2768 }, // MEDIUM RIGHT PARENTHESIS ORNAMENT
    .{ .codepoint = 0x276A, .mirror = 0x276B }, // MEDIUM FLATTENED LEFT PARENTHESIS ORNAMENT
    .{ .codepoint = 0x276B, .mirror = 0x276A }, // MEDIUM FLATTENED RIGHT PARENTHESIS ORNAMENT
    .{ .codepoint = 0x276C, .mirror = 0x276D }, // MEDIUM LEFT-POINTING ANGLE BRACKET ORNAMENT
    .{ .codepoint = 0x276D, .mirror = 0x276C }, // MEDIUM RIGHT-POINTING ANGLE BRACKET ORNAMENT
    .{ .codepoint = 0x276E, .mirror = 0x276F }, // HEAVY LEFT-POINTING ANGLE QUOTATION MARK ORNAMENT
    .{ .codepoint = 0x276F, .mirror = 0x276E }, // HEAVY RIGHT-POINTING ANGLE QUOTATION MARK ORNAMENT
    .{ .codepoint = 0x2770, .mirror = 0x2771 }, // HEAVY LEFT-POINTING ANGLE BRACKET ORNAMENT
    .{ .codepoint = 0x2771, .mirror = 0x2770 }, // HEAVY RIGHT-POINTING ANGLE BRACKET ORNAMENT
    .{ .codepoint = 0x2772, .mirror = 0x2773 }, // LIGHT LEFT TORTOISE SHELL BRACKET ORNAMENT
    .{ .codepoint = 0x2773, .mirror = 0x2772 }, // LIGHT RIGHT TORTOISE SHELL BRACKET ORNAMENT
    .{ .codepoint = 0x2774, .mirror = 0x2775 }, // MEDIUM LEFT CURLY BRACKET ORNAMENT
    .{ .codepoint = 0x2775, .mirror = 0x2774 }, // MEDIUM RIGHT CURLY BRACKET ORNAMENT
    .{ .codepoint = 0x27C3, .mirror = 0x27C4 }, // OPEN SUBSET
    .{ .codepoint = 0x27C4, .mirror = 0x27C3 }, // OPEN SUPERSET
    .{ .codepoint = 0x27C5, .mirror = 0x27C6 }, // LEFT S-SHAPED BAG DELIMITER
    .{ .codepoint = 0x27C6, .mirror = 0x27C5 }, // RIGHT S-SHAPED BAG DELIMITER
    .{ .codepoint = 0x27C8, .mirror = 0x27C9 }, // REVERSE SOLIDUS PRECEDING SUBSET
    .{ .codepoint = 0x27C9, .mirror = 0x27C8 }, // SUPERSET PRECEDING SOLIDUS
    .{ .codepoint = 0x27CB, .mirror = 0x27CD }, // MATHEMATICAL RISING DIAGONAL
    .{ .codepoint = 0x27CD, .mirror = 0x27CB }, // MATHEMATICAL FALLING DIAGONAL
    .{ .codepoint = 0x27D5, .mirror = 0x27D6 }, // LEFT OUTER JOIN
    .{ .codepoint = 0x27D6, .mirror = 0x27D5 }, // RIGHT OUTER JOIN
    .{ .codepoint = 0x27DC, .mirror = 0x22B8 }, // LEFT MULTIMAP
    .{ .codepoint = 0x27DD, .mirror = 0x27DE }, // LONG RIGHT TACK
    .{ .codepoint = 0x27DE, .mirror = 0x27DD }, // LONG LEFT TACK
    .{ .codepoint = 0x27E2, .mirror = 0x27E3 }, // WHITE CONCAVE-SIDED DIAMOND WITH LEFTWARDS TICK
    .{ .codepoint = 0x27E3, .mirror = 0x27E2 }, // WHITE CONCAVE-SIDED DIAMOND WITH RIGHTWARDS TICK
    .{ .codepoint = 0x27E4, .mirror = 0x27E5 }, // WHITE SQUARE WITH LEFTWARDS TICK
    .{ .codepoint = 0x27E5, .mirror = 0x27E4 }, // WHITE SQUARE WITH RIGHTWARDS TICK
    .{ .codepoint = 0x27E6, .mirror = 0x27E7 }, // MATHEMATICAL LEFT WHITE SQUARE BRACKET
    .{ .codepoint = 0x27E7, .mirror = 0x27E6 }, // MATHEMATICAL RIGHT WHITE SQUARE BRACKET
    .{ .codepoint = 0x27E8, .mirror = 0x27E9 }, // MATHEMATICAL LEFT ANGLE BRACKET
    .{ .codepoint = 0x27E9, .mirror = 0x27E8 }, // MATHEMATICAL RIGHT ANGLE BRACKET
    .{ .codepoint = 0x27EA, .mirror = 0x27EB }, // MATHEMATICAL LEFT DOUBLE ANGLE BRACKET
    .{ .codepoint = 0x27EB, .mirror = 0x27EA }, // MATHEMATICAL RIGHT DOUBLE ANGLE BRACKET
    .{ .codepoint = 0x27EC, .mirror = 0x27ED }, // MATHEMATICAL LEFT WHITE TORTOISE SHELL BRACKET
    .{ .codepoint = 0x27ED, .mirror = 0x27EC }, // MATHEMATICAL RIGHT WHITE TORTOISE SHELL BRACKET
    .{ .codepoint = 0x27EE, .mirror = 0x27EF }, // MATHEMATICAL LEFT FLATTENED PARENTHESIS
    .{ .codepoint = 0x27EF, .mirror = 0x27EE }, // MATHEMATICAL RIGHT FLATTENED PARENTHESIS
    .{ .codepoint = 0x2983, .mirror = 0x2984 }, // LEFT WHITE CURLY BRACKET
    .{ .codepoint = 0x2984, .mirror = 0x2983 }, // RIGHT WHITE CURLY BRACKET
    .{ .codepoint = 0x2985, .mirror = 0x2986 }, // LEFT WHITE PARENTHESIS
    .{ .codepoint = 0x2986, .mirror = 0x2985 }, // RIGHT WHITE PARENTHESIS
    .{ .codepoint = 0x2987, .mirror = 0x2988 }, // Z NOTATION LEFT IMAGE BRACKET
    .{ .codepoint = 0x2988, .mirror = 0x2987 }, // Z NOTATION RIGHT IMAGE BRACKET
    .{ .codepoint = 0x2989, .mirror = 0x298A }, // Z NOTATION LEFT BINDING BRACKET
    .{ .codepoint = 0x298A, .mirror = 0x2989 }, // Z NOTATION RIGHT BINDING BRACKET
    .{ .codepoint = 0x298B, .mirror = 0x298C }, // LEFT SQUARE BRACKET WITH UNDERBAR
    .{ .codepoint = 0x298C, .mirror = 0x298B }, // RIGHT SQUARE BRACKET WITH UNDERBAR
    .{ .codepoint = 0x298D, .mirror = 0x2990 }, // LEFT SQUARE BRACKET WITH TICK IN TOP CORNER
    .{ .codepoint = 0x298E, .mirror = 0x298F }, // RIGHT SQUARE BRACKET WITH TICK IN BOTTOM CORNER
    .{ .codepoint = 0x298F, .mirror = 0x298E }, // LEFT SQUARE BRACKET WITH TICK IN BOTTOM CORNER
    .{ .codepoint = 0x2990, .mirror = 0x298D }, // RIGHT SQUARE BRACKET WITH TICK IN TOP CORNER
    .{ .codepoint = 0x2991, .mirror = 0x2992 }, // LEFT ANGLE BRACKET WITH DOT
    .{ .codepoint = 0x2992, .mirror = 0x2991 }, // RIGHT ANGLE BRACKET WITH DOT
    .{ .codepoint = 0x2993, .mirror = 0x2994 }, // LEFT ARC LESS-THAN BRACKET
    .{ .codepoint = 0x2994, .mirror = 0x2993 }, // RIGHT ARC GREATER-THAN BRACKET
    .{ .codepoint = 0x2995, .mirror = 0x2996 }, // DOUBLE LEFT ARC GREATER-THAN BRACKET
    .{ .codepoint = 0x2996, .mirror = 0x2995 }, // DOUBLE RIGHT ARC LESS-THAN BRACKET
    .{ .codepoint = 0x2997, .mirror = 0x2998 }, // LEFT BLACK TORTOISE SHELL BRACKET
    .{ .codepoint = 0x2998, .mirror = 0x2997 }, // RIGHT BLACK TORTOISE SHELL BRACKET
    .{ .codepoint = 0x299B, .mirror = 0x2221 }, // MEASURED ANGLE OPENING LEFT
    .{ .codepoint = 0x29A0, .mirror = 0x2222 }, // SPHERICAL ANGLE OPENING LEFT
    .{ .codepoint = 0x29A3, .mirror = 0x2220 }, // REVERSED ANGLE
    .{ .codepoint = 0x29A4, .mirror = 0x29A5 }, // ANGLE WITH UNDERBAR
    .{ .codepoint = 0x29A5, .mirror = 0x29A4 }, // REVERSED ANGLE WITH UNDERBAR
    .{ .codepoint = 0x29A8, .mirror = 0x29A9 }, // MEASURED ANGLE WITH OPEN ARM ENDING IN ARROW POINTING UP AND RIGHT
    .{ .codepoint = 0x29A9, .mirror = 0x29A8 }, // MEASURED ANGLE WITH OPEN ARM ENDING IN ARROW POINTING UP AND LEFT
    .{ .codepoint = 0x29AA, .mirror = 0x29AB }, // MEASURED ANGLE WITH OPEN ARM ENDING IN ARROW POINTING DOWN AND RIGHT
    .{ .codepoint = 0x29AB, .mirror = 0x29AA }, // MEASURED ANGLE WITH OPEN ARM ENDING IN ARROW POINTING DOWN AND LEFT
    .{ .codepoint = 0x29AC, .mirror = 0x29AD }, // MEASURED ANGLE WITH OPEN ARM ENDING IN ARROW POINTING RIGHT AND UP
    .{ .codepoint = 0x29AD, .mirror = 0x29AC }, // MEASURED ANGLE WITH OPEN ARM ENDING IN ARROW POINTING LEFT AND UP
    .{ .codepoint = 0x29AE, .mirror = 0x29AF }, // MEASURED ANGLE WITH OPEN ARM ENDING IN ARROW POINTING RIGHT AND DOWN
    .{ .codepoint = 0x29AF, .mirror = 0x29AE }, // MEASURED ANGLE WITH OPEN ARM ENDING IN ARROW POINTING LEFT AND DOWN
    .{ .codepoint = 0x29B8, .mirror = 0x2298 }, // CIRCLED REVERSE SOLIDUS
    .{ .codepoint = 0x29C0, .mirror = 0x29C1 }, // CIRCLED LESS-THAN
    .{ .codepoint = 0x29C1, .mirror = 0x29C0 }, // CIRCLED GREATER-THAN
    .{ .codepoint = 0x29C4, .mirror = 0x29C5 }, // SQUARED RISING DIAGONAL SLASH
    .{ .codepoint = 0x29C5, .mirror = 0x29C4 }, // SQUARED FALLING DIAGONAL SLASH
    .{ .codepoint = 0x29CF, .mirror = 0x29D0 }, // LEFT TRIANGLE BESIDE VERTICAL BAR
    .{ .codepoint = 0x29D0, .mirror = 0x29CF }, // VERTICAL BAR BESIDE RIGHT TRIANGLE
    .{ .codepoint = 0x29D1, .mirror = 0x29D2 }, // BOWTIE WITH LEFT HALF BLACK
    .{ .codepoint = 0x29D2, .mirror = 0x29D1 }, // BOWTIE WITH RIGHT HALF BLACK
    .{ .codepoint = 0x29D4, .mirror = 0x29D5 }, // TIMES WITH LEFT HALF BLACK
    .{ .codepoint = 0x29D5, .mirror = 0x29D4 }, // TIMES WITH RIGHT HALF BLACK
    .{ .codepoint = 0x29D8, .mirror = 0x29D9 }, // LEFT WIGGLY FENCE
    .{ .codepoint = 0x29D9, .mirror = 0x29D8 }, // RIGHT WIGGLY FENCE
    .{ .codepoint = 0x29DA, .mirror = 0x29DB }, // LEFT DOUBLE WIGGLY FENCE
    .{ .codepoint = 0x29DB, .mirror = 0x29DA }, // RIGHT DOUBLE WIGGLY FENCE
    .{ .codepoint = 0x29E8, .mirror = 0x29E9 }, // DOWN-POINTING TRIANGLE WITH LEFT HALF BLACK
    .{ .codepoint = 0x29E9, .mirror = 0x29E8 }, // DOWN-POINTING TRIANGLE WITH RIGHT HALF BLACK
    .{ .codepoint = 0x29F5, .mirror = 0x2215 }, // REVERSE SOLIDUS OPERATOR
    .{ .codepoint = 0x29F8, .mirror = 0x29F9 }, // BIG SOLIDUS
    .{ .codepoint = 0x29F9, .mirror = 0x29F8 }, // BIG REVERSE SOLIDUS
    .{ .codepoint = 0x29FC, .mirror = 0x29FD }, // LEFT-POINTING CURVED ANGLE BRACKET
    .{ .codepoint = 0x29FD, .mirror = 0x29FC }, // RIGHT-POINTING CURVED ANGLE BRACKET
    .{ .codepoint = 0x2A2B, .mirror = 0x2A2C }, // MINUS SIGN WITH FALLING DOTS
    .{ .codepoint = 0x2A2C, .mirror = 0x2A2B }, // MINUS SIGN WITH RISING DOTS
    .{ .codepoint = 0x2A2D, .mirror = 0x2A2E }, // PLUS SIGN IN LEFT HALF CIRCLE
    .{ .codepoint = 0x2A2E, .mirror = 0x2A2D }, // PLUS SIGN IN RIGHT HALF CIRCLE
    .{ .codepoint = 0x2A34, .mirror = 0x2A35 }, // MULTIPLICATION SIGN IN LEFT HALF CIRCLE
    .{ .codepoint = 0x2A35, .mirror = 0x2A34 }, // MULTIPLICATION SIGN IN RIGHT HALF CIRCLE
    .{ .codepoint = 0x2A3C, .mirror = 0x2A3D }, // INTERIOR PRODUCT
    .{ .codepoint = 0x2A3D, .mirror = 0x2A3C }, // RIGHTHAND INTERIOR PRODUCT
    .{ .codepoint = 0x2A64, .mirror = 0x2A65 }, // Z NOTATION DOMAIN ANTIRESTRICTION
    .{ .codepoint = 0x2A65, .mirror = 0x2A64 }, // Z NOTATION RANGE ANTIRESTRICTION
    .{ .codepoint = 0x2A79, .mirror = 0x2A7A }, // LESS-THAN WITH CIRCLE INSIDE
    .{ .codepoint = 0x2A7A, .mirror = 0x2A79 }, // GREATER-THAN WITH CIRCLE INSIDE
    .{ .codepoint = 0x2A7B, .mirror = 0x2A7C }, // [BEST FIT] LESS-THAN WITH QUESTION MARK ABOVE
    .{ .codepoint = 0x2A7C, .mirror = 0x2A7B }, // [BEST FIT] GREATER-THAN WITH QUESTION MARK ABOVE
    .{ .codepoint = 0x2A7D, .mirror = 0x2A7E }, // LESS-THAN OR SLANTED EQUAL TO
    .{ .codepoint = 0x2A7E, .mirror = 0x2A7D }, // GREATER-THAN OR SLANTED EQUAL TO
    .{ .codepoint = 0x2A7F, .mirror = 0x2A80 }, // LESS-THAN OR SLANTED EQUAL TO WITH DOT INSIDE
    .{ .codepoint = 0x2A80, .mirror = 0x2A7F }, // GREATER-THAN OR SLANTED EQUAL TO WITH DOT INSIDE
    .{ .codepoint = 0x2A81, .mirror = 0x2A82 }, // LESS-THAN OR SLANTED EQUAL TO WITH DOT ABOVE
    .{ .codepoint = 0x2A82, .mirror = 0x2A81 }, // GREATER-THAN OR SLANTED EQUAL TO WITH DOT ABOVE
    .{ .codepoint = 0x2A83, .mirror = 0x2A84 }, // LESS-THAN OR SLANTED EQUAL TO WITH DOT ABOVE RIGHT
    .{ .codepoint = 0x2A84, .mirror = 0x2A83 }, // GREATER-THAN OR SLANTED EQUAL TO WITH DOT ABOVE LEFT
    .{ .codepoint = 0x2A85, .mirror = 0x2A86 }, // [BEST FIT] LESS-THAN OR APPROXIMATE
    .{ .codepoint = 0x2A86, .mirror = 0x2A85 }, // [BEST FIT] GREATER-THAN OR APPROXIMATE
    .{ .codepoint = 0x2A87, .mirror = 0x2A88 }, // [BEST FIT] LESS-THAN AND SINGLE-LINE NOT EQUAL TO
    .{ .codepoint = 0x2A88, .mirror = 0x2A87 }, // [BEST FIT] GREATER-THAN AND SINGLE-LINE NOT EQUAL TO
    .{ .codepoint = 0x2A89, .mirror = 0x2A8A }, // [BEST FIT] LESS-THAN AND NOT APPROXIMATE
    .{ .codepoint = 0x2A8A, .mirror = 0x2A89 }, // [BEST FIT] GREATER-THAN AND NOT APPROXIMATE
    .{ .codepoint = 0x2A8B, .mirror = 0x2A8C }, // LESS-THAN ABOVE DOUBLE-LINE EQUAL ABOVE GREATER-THAN
    .{ .codepoint = 0x2A8C, .mirror = 0x2A8B }, // GREATER-THAN ABOVE DOUBLE-LINE EQUAL ABOVE LESS-THAN
    .{ .codepoint = 0x2A8D, .mirror = 0x2A8E }, // [BEST FIT] LESS-THAN ABOVE SIMILAR OR EQUAL
    .{ .codepoint = 0x2A8E, .mirror = 0x2A8D }, // [BEST FIT] GREATER-THAN ABOVE SIMILAR OR EQUAL
    .{ .codepoint = 0x2A8F, .mirror = 0x2A90 }, // [BEST FIT] LESS-THAN ABOVE SIMILAR ABOVE GREATER-THAN
    .{ .codepoint = 0x2A90, .mirror = 0x2A8F }, // [BEST FIT] GREATER-THAN ABOVE SIMILAR ABOVE LESS-THAN
    .{ .codepoint = 0x2A91, .mirror = 0x2A92 }, // LESS-THAN ABOVE GREATER-THAN ABOVE DOUBLE-LINE EQUAL
    .{ .codepoint = 0x2A92, .mirror = 0x2A91 }, // GREATER-THAN ABOVE LESS-THAN ABOVE DOUBLE-LINE EQUAL
    .{ .codepoint = 0x2A93, .mirror = 0x2A94 }, // LESS-THAN ABOVE SLANTED EQUAL ABOVE GREATER-THAN ABOVE SLANTED EQUAL
    .{ .codepoint = 0x2A94, .mirror = 0x2A93 }, // GREATER-THAN ABOVE SLANTED EQUAL ABOVE LESS-THAN ABOVE SLANTED EQUAL
    .{ .codepoint = 0x2A95, .mirror = 0x2A96 }, // SLANTED EQUAL TO OR LESS-THAN
    .{ .codepoint = 0x2A96, .mirror = 0x2A95 }, // SLANTED EQUAL TO OR GREATER-THAN
    .{ .codepoint = 0x2A97, .mirror = 0x2A98 }, // SLANTED EQUAL TO OR LESS-THAN WITH DOT INSIDE
    .{ .codepoint = 0x2A98, .mirror = 0x2A97 }, // SLANTED EQUAL TO OR GREATER-THAN WITH DOT INSIDE
    .{ .codepoint = 0x2A99, .mirror = 0x2A9A }, // DOUBLE-LINE EQUAL TO OR LESS-THAN
    .{ .codepoint = 0x2A9A, .mirror = 0x2A99 }, // DOUBLE-LINE EQUAL TO OR GREATER-THAN
    .{ .codepoint = 0x2A9B, .mirror = 0x2A9C }, // DOUBLE-LINE SLANTED EQUAL TO OR LESS-THAN
    .{ .codepoint = 0x2A9C, .mirror = 0x2A9B }, // DOUBLE-LINE SLANTED EQUAL TO OR GREATER-THAN
    .{ .codepoint = 0x2A9D, .mirror = 0x2A9E }, // [BEST FIT] SIMILAR OR LESS-THAN
    .{ .codepoint = 0x2A9E, .mirror = 0x2A9D }, // [BEST FIT] SIMILAR OR GREATER-THAN
    .{ .codepoint = 0x2A9F, .mirror = 0x2AA0 }, // [BEST FIT] SIMILAR ABOVE LESS-THAN ABOVE EQUALS SIGN
    .{ .codepoint = 0x2AA0, .mirror = 0x2A9F }, // [BEST FIT] SIMILAR ABOVE GREATER-THAN ABOVE EQUALS SIGN
    .{ .codepoint = 0x2AA1, .mirror = 0x2AA2 }, // DOUBLE NESTED LESS-THAN
    .{ .codepoint = 0x2AA2, .mirror = 0x2AA1 }, // DOUBLE NESTED GREATER-THAN
    .{ .codepoint = 0x2AA6, .mirror = 0x2AA7 }, // LESS-THAN CLOSED BY CURVE
    .{ .codepoint = 0x2AA7, .mirror = 0x2AA6 }, // GREATER-THAN CLOSED BY CURVE
    .{ .codepoint = 0x2AA8, .mirror = 0x2AA9 }, // LESS-THAN CLOSED BY CURVE ABOVE SLANTED EQUAL
    .{ .codepoint = 0x2AA9, .mirror = 0x2AA8 }, // GREATER-THAN CLOSED BY CURVE ABOVE SLANTED EQUAL
    .{ .codepoint = 0x2AAA, .mirror = 0x2AAB }, // SMALLER THAN
    .{ .codepoint = 0x2AAB, .mirror = 0x2AAA }, // LARGER THAN
    .{ .codepoint = 0x2AAC, .mirror = 0x2AAD }, // SMALLER THAN OR EQUAL TO
    .{ .codepoint = 0x2AAD, .mirror = 0x2AAC }, // LARGER THAN OR EQUAL TO
    .{ .codepoint = 0x2AAF, .mirror = 0x2AB0 }, // PRECEDES ABOVE SINGLE-LINE EQUALS SIGN
    .{ .codepoint = 0x2AB0, .mirror = 0x2AAF }, // SUCCEEDS ABOVE SINGLE-LINE EQUALS SIGN
    .{ .codepoint = 0x2AB1, .mirror = 0x2AB2 }, // [BEST FIT] PRECEDES ABOVE SINGLE-LINE NOT EQUAL TO
    .{ .codepoint = 0x2AB2, .mirror = 0x2AB1 }, // [BEST FIT] SUCCEEDS ABOVE SINGLE-LINE NOT EQUAL TO
    .{ .codepoint = 0x2AB3, .mirror = 0x2AB4 }, // PRECEDES ABOVE EQUALS SIGN
    .{ .codepoint = 0x2AB4, .mirror = 0x2AB3 }, // SUCCEEDS ABOVE EQUALS SIGN
    .{ .codepoint = 0x2AB5, .mirror = 0x2AB6 }, // [BEST FIT] PRECEDES ABOVE NOT EQUAL TO
    .{ .codepoint = 0x2AB6, .mirror = 0x2AB5 }, // [BEST FIT] SUCCEEDS ABOVE NOT EQUAL TO
    .{ .codepoint = 0x2AB7, .mirror = 0x2AB8 }, // [BEST FIT] PRECEDES ABOVE ALMOST EQUAL TO
    .{ .codepoint = 0x2AB8, .mirror = 0x2AB7 }, // [BEST FIT] SUCCEEDS ABOVE ALMOST EQUAL TO
    .{ .codepoint = 0x2AB9, .mirror = 0x2ABA }, // [BEST FIT] PRECEDES ABOVE NOT ALMOST EQUAL TO
    .{ .codepoint = 0x2ABA, .mirror = 0x2AB9 }, // [BEST FIT] SUCCEEDS ABOVE NOT ALMOST EQUAL TO
    .{ .codepoint = 0x2ABB, .mirror = 0x2ABC }, // DOUBLE PRECEDES
    .{ .codepoint = 0x2ABC, .mirror = 0x2ABB }, // DOUBLE SUCCEEDS
    .{ .codepoint = 0x2ABD, .mirror = 0x2ABE }, // SUBSET WITH DOT
    .{ .codepoint = 0x2ABE, .mirror = 0x2ABD }, // SUPERSET WITH DOT
    .{ .codepoint = 0x2ABF, .mirror = 0x2AC0 }, // SUBSET WITH PLUS SIGN BELOW
    .{ .codepoint = 0x2AC0, .mirror = 0x2ABF }, // SUPERSET WITH PLUS SIGN BELOW
    .{ .codepoint = 0x2AC1, .mirror = 0x2AC2 }, // SUBSET WITH MULTIPLICATION SIGN BELOW
    .{ .codepoint = 0x2AC2, .mirror = 0x2AC1 }, // SUPERSET WITH MULTIPLICATION SIGN BELOW
    .{ .codepoint = 0x2AC3, .mirror = 0x2AC4 }, // SUBSET OF OR EQUAL TO WITH DOT ABOVE
    .{ .codepoint = 0x2AC4, .mirror = 0x2AC3 }, // SUPERSET OF OR EQUAL TO WITH DOT ABOVE
    .{ .codepoint = 0x2AC5, .mirror = 0x2AC6 }, // SUBSET OF ABOVE EQUALS SIGN
    .{ .codepoint = 0x2AC6, .mirror = 0x2AC5 }, // SUPERSET OF ABOVE EQUALS SIGN
    .{ .codepoint = 0x2AC7, .mirror = 0x2AC8 }, // [BEST FIT] SUBSET OF ABOVE TILDE OPERATOR
    .{ .codepoint = 0x2AC8, .mirror = 0x2AC7 }, // [BEST FIT] SUPERSET OF ABOVE TILDE OPERATOR
    .{ .codepoint = 0x2AC9, .mirror = 0x2ACA }, // [BEST FIT] SUBSET OF ABOVE ALMOST EQUAL TO
    .{ .codepoint = 0x2ACA, .mirror = 0x2AC9 }, // [BEST FIT] SUPERSET OF ABOVE ALMOST EQUAL TO
    .{ .codepoint = 0x2ACB, .mirror = 0x2ACC }, // [BEST FIT] SUBSET OF ABOVE NOT EQUAL TO
    .{ .codepoint = 0x2ACC, .mirror = 0x2ACB }, // [BEST FIT] SUPERSET OF ABOVE NOT EQUAL TO
    .{ .codepoint = 0x2ACD, .mirror = 0x2ACE }, // SQUARE LEFT OPEN BOX OPERATOR
    .{ .codepoint = 0x2ACE, .mirror = 0x2ACD }, // SQUARE RIGHT OPEN BOX OPERATOR
    .{ .codepoint = 0x2ACF, .mirror = 0x2AD0 }, // CLOSED SUBSET
    .{ .codepoint = 0x2AD0, .mirror = 0x2ACF }, // CLOSED SUPERSET
    .{ .codepoint = 0x2AD1, .mirror = 0x2AD2 }, // CLOSED SUBSET OR EQUAL TO
    .{ .codepoint = 0x2AD2, .mirror = 0x2AD1 }, // CLOSED SUPERSET OR EQUAL TO
    .{ .codepoint = 0x2AD3, .mirror = 0x2AD4 }, // SUBSET ABOVE SUPERSET
    .{ .codepoint = 0x2AD4, .mirror = 0x2AD3 }, // SUPERSET ABOVE SUBSET
    .{ .codepoint = 0x2AD5, .mirror = 0x2AD6 }, // SUBSET ABOVE SUBSET
    .{ .codepoint = 0x2AD6, .mirror = 0x2AD5 }, // SUPERSET ABOVE SUPERSET
    .{ .codepoint = 0x2ADE, .mirror = 0x22A6 }, // SHORT LEFT TACK
    .{ .codepoint = 0x2AE3, .mirror = 0x22A9 }, // DOUBLE VERTICAL BAR LEFT TURNSTILE
    .{ .codepoint = 0x2AE4, .mirror = 0x22A8 }, // VERTICAL BAR DOUBLE LEFT TURNSTILE
    .{ .codepoint = 0x2AE5, .mirror = 0x22AB }, // DOUBLE VERTICAL BAR DOUBLE LEFT TURNSTILE
    .{ .codepoint = 0x2AEC, .mirror = 0x2AED }, // DOUBLE STROKE NOT SIGN
    .{ .codepoint = 0x2AED, .mirror = 0x2AEC }, // REVERSED DOUBLE STROKE NOT SIGN
    .{ .codepoint = 0x2AEE, .mirror = 0x2224 }, // DOES NOT DIVIDE WITH REVERSED NEGATION SLASH
    .{ .codepoint = 0x2AF7, .mirror = 0x2AF8 }, // TRIPLE NESTED LESS-THAN
    .{ .codepoint = 0x2AF8, .mirror = 0x2AF7 }, // TRIPLE NESTED GREATER-THAN
    .{ .codepoint = 0x2AF9, .mirror = 0x2AFA }, // DOUBLE-LINE SLANTED LESS-THAN OR EQUAL TO
    .{ .codepoint = 0x2AFA, .mirror = 0x2AF9 }, // DOUBLE-LINE SLANTED GREATER-THAN OR EQUAL TO
    .{ .codepoint = 0x2BFE, .mirror = 0x221F }, // REVERSED RIGHT ANGLE
    .{ .codepoint = 0x2E02, .mirror = 0x2E03 }, // LEFT SUBSTITUTION BRACKET
    .{ .codepoint = 0x2E03, .mirror = 0x2E02 }, // RIGHT SUBSTITUTION BRACKET
    .{ .codepoint = 0x2E04, .mirror = 0x2E05 }, // LEFT DOTTED SUBSTITUTION BRACKET
    .{ .codepoint = 0x2E05, .mirror = 0x2E04 }, // RIGHT DOTTED SUBSTITUTION BRACKET
    .{ .codepoint = 0x2E09, .mirror = 0x2E0A }, // LEFT TRANSPOSITION BRACKET
    .{ .codepoint = 0x2E0A, .mirror = 0x2E09 }, // RIGHT TRANSPOSITION BRACKET
    .{ .codepoint = 0x2E0C, .mirror = 0x2E0D }, // LEFT RAISED OMISSION BRACKET
    .{ .codepoint = 0x2E0D, .mirror = 0x2E0C }, // RIGHT RAISED OMISSION BRACKET
    .{ .codepoint = 0x2E1C, .mirror = 0x2E1D }, // LEFT LOW PARAPHRASE BRACKET
    .{ .codepoint = 0x2E1D, .mirror = 0x2E1C }, // RIGHT LOW PARAPHRASE BRACKET
    .{ .codepoint = 0x2E20, .mirror = 0x2E21 }, // LEFT VERTICAL BAR WITH QUILL
    .{ .codepoint = 0x2E21, .mirror = 0x2E20 }, // RIGHT VERTICAL BAR WITH QUILL
    .{ .codepoint = 0x2E22, .mirror = 0x2E23 }, // TOP LEFT HALF BRACKET
    .{ .codepoint = 0x2E23, .mirror = 0x2E22 }, // TOP RIGHT HALF BRACKET
    .{ .codepoint = 0x2E24, .mirror = 0x2E25 }, // BOTTOM LEFT HALF BRACKET
    .{ .codepoint = 0x2E25, .mirror = 0x2E24 }, // BOTTOM RIGHT HALF BRACKET
    .{ .codepoint = 0x2E26, .mirror = 0x2E27 }, // LEFT SIDEWAYS U BRACKET
    .{ .codepoint = 0x2E27, .mirror = 0x2E26 }, // RIGHT SIDEWAYS U BRACKET
    .{ .codepoint = 0x2E28, .mirror = 0x2E29 }, // LEFT DOUBLE PARENTHESIS
    .{ .codepoint = 0x2E29, .mirror = 0x2E28 }, // RIGHT DOUBLE PARENTHESIS
    .{ .codepoint = 0x3008, .mirror = 0x3009 }, // LEFT ANGLE BRACKET
    .{ .codepoint = 0x3009, .mirror = 0x3008 }, // RIGHT ANGLE BRACKET
    .{ .codepoint = 0x300A, .mirror = 0x300B }, // LEFT DOUBLE ANGLE BRACKET
    .{ .codepoint = 0x300B, .mirror = 0x300A }, // RIGHT DOUBLE ANGLE BRACKET
    .{ .codepoint = 0x300C, .mirror = 0x300D }, // [BEST FIT] LEFT CORNER BRACKET
    .{ .codepoint = 0x300D, .mirror = 0x300C }, // [BEST FIT] RIGHT CORNER BRACKET
    .{ .codepoint = 0x300E, .mirror = 0x300F }, // [BEST FIT] LEFT WHITE CORNER BRACKET
    .{ .codepoint = 0x300F, .mirror = 0x300E }, // [BEST FIT] RIGHT WHITE CORNER BRACKET
    .{ .codepoint = 0x3010, .mirror = 0x3011 }, // LEFT BLACK LENTICULAR BRACKET
    .{ .codepoint = 0x3011, .mirror = 0x3010 }, // RIGHT BLACK LENTICULAR BRACKET
    .{ .codepoint = 0x3014, .mirror = 0x3015 }, // LEFT TORTOISE SHELL BRACKET
    .{ .codepoint = 0x3015, .mirror = 0x3014 }, // RIGHT TORTOISE SHELL BRACKET
    .{ .codepoint = 0x3016, .mirror = 0x3017 }, // LEFT WHITE LENTICULAR BRACKET
    .{ .codepoint = 0x3017, .mirror = 0x3016 }, // RIGHT WHITE LENTICULAR BRACKET
    .{ .codepoint = 0x3018, .mirror = 0x3019 }, // LEFT WHITE TORTOISE SHELL BRACKET
    .{ .codepoint = 0x3019, .mirror = 0x3018 }, // RIGHT WHITE TORTOISE SHELL BRACKET
    .{ .codepoint = 0x301A, .mirror = 0x301B }, // LEFT WHITE SQUARE BRACKET
    .{ .codepoint = 0x301B, .mirror = 0x301A }, // RIGHT WHITE SQUARE BRACKET
    .{ .codepoint = 0xFE59, .mirror = 0xFE5A }, // SMALL LEFT PARENTHESIS
    .{ .codepoint = 0xFE5A, .mirror = 0xFE59 }, // SMALL RIGHT PARENTHESIS
    .{ .codepoint = 0xFE5B, .mirror = 0xFE5C }, // SMALL LEFT CURLY BRACKET
    .{ .codepoint = 0xFE5C, .mirror = 0xFE5B }, // SMALL RIGHT CURLY BRACKET
    .{ .codepoint = 0xFE5D, .mirror = 0xFE5E }, // SMALL LEFT TORTOISE SHELL BRACKET
    .{ .codepoint = 0xFE5E, .mirror = 0xFE5D }, // SMALL RIGHT TORTOISE SHELL BRACKET
    .{ .codepoint = 0xFE64, .mirror = 0xFE65 }, // SMALL LESS-THAN SIGN
    .{ .codepoint = 0xFE65, .mirror = 0xFE64 }, // SMALL GREATER-THAN SIGN
    .{ .codepoint = 0xFF08, .mirror = 0xFF09 }, // FULLWIDTH LEFT PARENTHESIS
    .{ .codepoint = 0xFF09, .mirror = 0xFF08 }, // FULLWIDTH RIGHT PARENTHESIS
    .{ .codepoint = 0xFF1C, .mirror = 0xFF1E }, // FULLWIDTH LESS-THAN SIGN
    .{ .codepoint = 0xFF1E, .mirror = 0xFF1C }, // FULLWIDTH GREATER-THAN SIGN
    .{ .codepoint = 0xFF3B, .mirror = 0xFF3D }, // FULLWIDTH LEFT SQUARE BRACKET
    .{ .codepoint = 0xFF3D, .mirror = 0xFF3B }, // FULLWIDTH RIGHT SQUARE BRACKET
    .{ .codepoint = 0xFF5B, .mirror = 0xFF5D }, // FULLWIDTH LEFT CURLY BRACKET
    .{ .codepoint = 0xFF5D, .mirror = 0xFF5B }, // FULLWIDTH RIGHT CURLY BRACKET
    .{ .codepoint = 0xFF5F, .mirror = 0xFF60 }, // FULLWIDTH LEFT WHITE PARENTHESIS
    .{ .codepoint = 0xFF60, .mirror = 0xFF5F }, // FULLWIDTH RIGHT WHITE PARENTHESIS
    .{ .codepoint = 0xFF62, .mirror = 0xFF63 }, // [BEST FIT] HALFWIDTH LEFT CORNER BRACKET
    .{ .codepoint = 0xFF63, .mirror = 0xFF62 }, // [BEST FIT] HALFWIDTH RIGHT CORNER BRACKET
};
