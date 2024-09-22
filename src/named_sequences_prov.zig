// This file is part of the Unicode Character Database
// For documentation, see http://www.unicode.org/reports/tr44/
//
// Based on the source file: https://unicode.org/Public/16.0.0/ucd/NamedSequencesProv.txt
//
// zig fmt: off

pub const NamedSequence = struct {
    name: []const u8,
    sequence: []const u21,
};

pub const data = [_]NamedSequence{
};
