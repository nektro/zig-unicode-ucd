const std = @import("std");
const common = @import("./_common.zig");

pub usingnamespace common.Main(struct {
    pub const source_file = "Jamo";

    pub const dest_file = "src/jamo.zig";

    pub const dest_header =
        \\pub const Jamo = struct {
        \\    code: u21,
        \\    short_name: []const u8,
        \\};
        \\
        \\pub const data = [_]Jamo{
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
        const actual = if (std.mem.eql(u8, next, "#")) "" else next;

        try writer.print("    .{{ .code = 0x{s}, .short_name = \"{}\" }},\n", .{ first, std.zig.fmtEscapes(actual) });

        return true;
    }
});
