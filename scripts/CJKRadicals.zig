const std = @import("std");
const common = @import("./_common.zig");

pub usingnamespace common.Main(struct {
    pub const source_url = "https://unicode.org/Public/" ++ common.version ++ "/ucd/CJKRadicals.txt";

    pub const dest_file = "src/cjk_radicals.zig";

    pub const dest_header =
        \\pub const CJKRadical = struct {
        \\    number: u8,
        \\    simplified: bool,
        \\    character: u21,
        \\    ideograph: u21,
        \\};
        \\
        \\pub const data = [_]CJKRadical{
        \\
    ;

    pub const dest_footer =
        \\};
        \\
    ;

    pub fn exec(alloc: std.mem.Allocator, line: []const u8, writer: anytype) !bool {
        _ = alloc;
        var it = std.mem.tokenize(u8, line, "; ");
        var n = it.next().?;
        const s = std.mem.endsWith(u8, n, "'");
        const c = it.next().?;
        const i = it.next().?;
        n = std.mem.trimRight(u8, n, "'");

        try writer.print("    .{{ .number = {s}, .simplified = {}, .character = 0x{s}, .ideograph = 0x{s} }},\n", .{ n, s, c, i });
        return true;
    }
});
