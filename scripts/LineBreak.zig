const std = @import("std");
const common = @import("./_common.zig");

pub usingnamespace common.Main(struct {
    pub const source_file = "LineBreak";

    pub const dest_file = "src/line_break.zig";

    pub const dest_header =
        \\pub const LineBreak = struct {
        \\    from: u21,
        \\    to: u21,
        \\    category: enum {
        \\        BK, CM, CR, GL, LF, NL, SP, WJ, ZW, ZWJ,
        \\        AI, AL, B2, BA, BB, CB, CJ, CL, CP, EB,
        \\        EM, EX, H2, H3, HL, HY, ID, IN, IS, JL,
        \\        JT, JV, NS, NU, OP, PO, PR, QU, RI, SA,
        \\        SG, SY, XX,
        \\    },
        \\};
        \\
        \\pub const data = [_]LineBreak{
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
            try writer.print("    .{{ .from = 0x{s}, .to = 0x{s}, .category = .{s} }},\n", .{ start, end, next });
        } else {
            try writer.print("    .{{ .from = 0x{s}, .to = 0x{s}, .category = .{s} }},\n", .{ first, first, next });
        }

        return true;
    }
});
