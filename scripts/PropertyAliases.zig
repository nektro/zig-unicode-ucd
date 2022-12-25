const std = @import("std");
const common = @import("./_common.zig");

pub usingnamespace common.Main(struct {
    pub const source_file = "PropertyAliases";

    pub const dest_file = "src/property_aliases.zig";

    pub const dest_header =
        \\const std = @import("std");
        \\
        \\pub const data = blk: {
        \\    @setEvalBranchQuota(4000);
        \\    const map = std.ComptimeStringMap([]const u8, .{
        \\
    ;

    pub const dest_footer =
        \\    });
        \\    break :blk map;
        \\};
    ;

    pub fn exec(alloc: std.mem.Allocator, line: []const u8, writer: anytype) !bool {
        _ = alloc;
        var it = std.mem.tokenize(u8, line, "; ");

        try writer.print("        .{{ \"{}\", \"{}\" }},\n", .{
            std.zig.fmtEscapes(it.next().?),
            std.zig.fmtEscapes(it.next().?),
        });

        return true;
    }
});
