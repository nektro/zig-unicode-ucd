// This file is part of the Unicode Character Database
// For documentation, see http://www.unicode.org/reports/tr44/
//
// Based on the source file: https://unicode.org/Public/13.0.0/ucd/NamedSequencesProv.txt
//
// zig fmt: off

pub const NamedSequence = struct {
    name: []const u8,
    sequence: []const u21,
};

pub const data = [_]NamedSequence{
    .{ .name = "DEVANAGARI SEQUENCE FOR LETTER QA", .sequence = &[_]u21{ 0x0915, 0x093C, } },
    .{ .name = "DEVANAGARI SEQUENCE FOR LETTER KHHA", .sequence = &[_]u21{ 0x0916, 0x093C, } },
    .{ .name = "DEVANAGARI SEQUENCE FOR LETTER GHHA", .sequence = &[_]u21{ 0x0917, 0x093C, } },
    .{ .name = "DEVANAGARI SEQUENCE FOR LETTER ZA", .sequence = &[_]u21{ 0x091C, 0x093C, } },
    .{ .name = "DEVANAGARI SEQUENCE FOR LETTER DDDHA", .sequence = &[_]u21{ 0x0921, 0x093C, } },
    .{ .name = "DEVANAGARI SEQUENCE FOR LETTER RHA", .sequence = &[_]u21{ 0x0922, 0x093C, } },
    .{ .name = "DEVANAGARI SEQUENCE FOR LETTER FA", .sequence = &[_]u21{ 0x092B, 0x093C, } },
    .{ .name = "DEVANAGARI SEQUENCE FOR LETTER YYA", .sequence = &[_]u21{ 0x092F, 0x093C, } },
    .{ .name = "BENGALI SEQUENCE FOR LETTER RRA", .sequence = &[_]u21{ 0x09A1, 0x09BC, } },
    .{ .name = "BENGALI SEQUENCE FOR LETTER RHA", .sequence = &[_]u21{ 0x09A2, 0x09BC, } },
    .{ .name = "BENGALI SEQUENCE FOR LETTER YYA", .sequence = &[_]u21{ 0x09AF, 0x09BC, } },
    .{ .name = "GURMUKHI SEQUENCE FOR LETTER LLA", .sequence = &[_]u21{ 0x0A32, 0x0A3C, } },
    .{ .name = "GURMUKHI SEQUENCE FOR LETTER SHA", .sequence = &[_]u21{ 0x0A38, 0x0A3C, } },
    .{ .name = "GURMUKHI SEQUENCE FOR LETTER KHHA", .sequence = &[_]u21{ 0x0A16, 0x0A3C, } },
    .{ .name = "GURMUKHI SEQUENCE FOR LETTER GHHA", .sequence = &[_]u21{ 0x0A17, 0x0A3C, } },
    .{ .name = "GURMUKHI SEQUENCE FOR LETTER ZA", .sequence = &[_]u21{ 0x0A1C, 0x0A3C, } },
    .{ .name = "GURMUKHI SEQUENCE FOR LETTER FA", .sequence = &[_]u21{ 0x0A2B, 0x0A3C, } },
    .{ .name = "ORIYA SEQUENCE FOR LETTER RRA", .sequence = &[_]u21{ 0x0B21, 0x0B3C, } },
    .{ .name = "ORIYA SEQUENCE FOR LETTER RHA", .sequence = &[_]u21{ 0x0B22, 0x0B3C, } },
};
