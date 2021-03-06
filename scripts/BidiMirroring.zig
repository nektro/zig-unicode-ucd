const std = @import("std");
const common = @import("./_common.zig");

pub usingnamespace common.Main(struct {
    pub const source_url = "https://unicode.org/Public/" ++ common.version ++ "/ucd/BidiMirroring.txt";

    pub const dest_file = "src/bidi_mirroring.zig";

    pub const dest_header =
        \\pub const Mirroring = struct {
        \\    codepoint: u21,
        \\    mirror: u21,
        \\};
        \\
        \\pub const data = [_]Mirroring{
        \\
    ;

    pub const dest_footer =
        \\};
        \\
    ;

    pub fn exec(alloc: std.mem.Allocator, line: []const u8, writer: anytype) !bool {
        _ = alloc;
        var it = std.mem.tokenize(u8, line, "; #");
        const c = it.next().?;
        const m = it.next().?;
        const t = it.rest();

        try writer.print("    .{{ .codepoint = 0x{s}, .mirror = 0x{s} }}, // {s}\n", .{ c, m, t });
        return true;
    }
});
