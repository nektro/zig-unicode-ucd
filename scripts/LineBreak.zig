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
        \\        AK, VI, AS, VF, AP,
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

    pub usingnamespace common.RangeEnum("category");
});
