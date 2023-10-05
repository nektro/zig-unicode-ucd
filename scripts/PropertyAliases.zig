const std = @import("std");
const common = @import("./_common.zig");

pub usingnamespace common.Main(struct {
    pub const source_file = "PropertyAliases";

    pub const dest_file = "src/property_aliases.zig";

    pub const dest_header =
        \\const std = @import("std");
        \\
        \\pub const data = [_][2][]const u8{
        \\
    ;

    pub const dest_footer =
        \\};
    ;

    pub fn exec(alloc: std.mem.Allocator, line: []const u8, writer: anytype) !void {
        _ = alloc;
        const end = std.mem.indexOfScalar(u8, line, '#') orelse line.len;
        var it = std.mem.tokenize(u8, line[0..end], "; ");

        const short = it.next().?;
        const long = it.next().?;
        try writer.print("    .{{ \"{}\", \"{}\" }},\n", .{
            std.zig.fmtEscapes(short),
            std.zig.fmtEscapes(long),
        });
        while (it.next()) |more| {
            try writer.print("    .{{ \"{}\", \"{}\" }},\n", .{
                std.zig.fmtEscapes(more),
                std.zig.fmtEscapes(long),
            });
        }
    }
});
