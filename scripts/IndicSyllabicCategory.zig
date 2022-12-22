const std = @import("std");
const common = @import("./_common.zig");

pub usingnamespace common.Main(struct {
    pub const source_file = "IndicSyllabicCategory";

    pub const dest_file = "src/indic_syllabic_category.zig";

    pub const dest_header =
        \\pub const IndicSyllabicCategory = struct {
        \\    code: u21,
        \\    category: enum {
        \\        Bindu,
        \\        Visarga,
        \\        Avagraha,
        \\        Nukta,
        \\        Virama,
        \\        Pure_Killer,
        \\        Invisible_Stacker,
        \\        Vowel_Independent,
        \\        Vowel_Dependent,
        \\        Vowel,
        \\        Consonant_Placeholder,
        \\        Consonant,
        \\        Consonant_Dead,
        \\        Consonant_With_Stacker,
        \\        Consonant_Prefixed,
        \\        Consonant_Preceding_Repha,
        \\        Consonant_Initial_Postfixed,
        \\        Consonant_Succeeding_Repha,
        \\        Consonant_Subjoined,
        \\        Consonant_Medial,
        \\        Consonant_Final,
        \\        Consonant_Head_Letter,
        \\        Modifying_Letter,
        \\        Tone_Letter,
        \\        Tone_Mark,
        \\        Gemination_Mark,
        \\        Cantillation_Mark,
        \\        Register_Shifter,
        \\        Syllable_Modifier,
        \\        Consonant_Killer,
        \\        Non_Joiner,
        \\        Joiner,
        \\        Number_Joiner,
        \\        Number,
        \\        Brahmi_Joining_Number,
        \\    },
        \\};
        \\
        \\pub const data = [_]IndicSyllabicCategory{
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
            const start = try std.fmt.parseInt(u21, first[0..index], 16);
            const end = try std.fmt.parseInt(u21, first[index + 2 ..], 16);
            var i = start;
            while (i <= end) : (i += 1) {
                try writer.print("    .{{ .code = 0x{X}, .category = .{s} }},\n", .{ i, next });
            }
        } else {
            try writer.print("    .{{ .code = 0x{s}, .category = .{s} }},\n", .{ first, next });
        }

        return true;
    }
});
