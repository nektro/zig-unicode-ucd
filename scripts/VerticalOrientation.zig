const std = @import("std");
const common = @import("./_common.zig");

pub usingnamespace common.Main(struct {
    pub const source_file = "VerticalOrientation";

    pub const dest_file = "src/vertical_orientation.zig";

    pub const dest_header =
        \\pub const VerticalOrientation = struct {
        \\    from: u21,
        \\    to: u21,
        \\    orientation: enum {
        \\        R,
        \\        U,
        \\        Tr,
        \\        Tu,
        \\    },
        \\};
        \\
        \\pub const data = [_]VerticalOrientation{
        \\
    ;

    pub const dest_footer =
        \\};
        \\
    ;

    pub usingnamespace common.RangeEnum("orientation");
});
