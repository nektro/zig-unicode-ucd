const std = @import("std");
const common = @import("./_common.zig");

pub usingnamespace common.Main(struct {
    pub const source_file = "LineBreak";

    pub const dest_file = "src/line_break.zig";

    pub const dest_header =
        \\const ucd = @import("./lib.zig");
        \\
        \\pub const LineBreak = struct {
        \\    from: u21,
        \\    to: u21,
        \\    category: ucd.LineBreak,
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
