const std = @import("std");
const common = @import("./_common.zig");

pub usingnamespace common.Main(struct {
    pub const source_file = "Scripts";

    pub const dest_file = "src/scripts.zig";

    pub const dest_header =
        \\const ucd = @import("./lib.zig");
        \\
        \\pub const Scripts = struct {
        \\    from: u21,
        \\    to: u21,
        \\    script: ucd.ScriptLong,
        \\};
        \\
        \\pub const data = [_]Scripts{
        \\
    ;

    pub const dest_footer =
        \\};
        \\
    ;

    pub usingnamespace common.RangeEnum("script");
});
