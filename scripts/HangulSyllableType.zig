const std = @import("std");
const common = @import("./_common.zig");

pub usingnamespace common.Main(struct {
    pub const source_file = "HangulSyllableType";

    pub const dest_file = "src/hangul_syllable_type.zig";

    pub const dest_header =
        \\const ucd = @import("./lib.zig");
        \\
        \\pub const HangulSyllableType = struct {
        \\    from: u21,
        \\    to: u21,
        \\    prop: ucd.HangulSyllableType,
        \\};
        \\
        \\pub const data = [_]HangulSyllableType{
        \\
    ;

    pub const dest_footer =
        \\};
        \\
    ;

    pub fn exec(alloc: std.mem.Allocator, line: []const u8, writer: anytype) !void {
        _ = alloc;
        var it = std.mem.tokenize(u8, line, "; ");

        {
            const range = it.next().?;
            if (std.mem.indexOf(u8, range, "..")) |index| {
                try writer.print("    .{{ .from = 0x{s}, .to = 0x{s},", .{ range[0..index], range[index + 2 ..] });
            } else {
                try writer.print("    .{{ .from = 0x{s}, .to = 0x{s},", .{ range, range });
            }
        }
        {
            const prop = it.next().?;
            try writer.print(" .prop = .{s} }},\n", .{prop});
        }
    }
});
