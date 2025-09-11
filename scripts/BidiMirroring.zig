const std = @import("std");
const common = @import("./_common.zig");

pub usingnamespace common.Main(struct {
    pub const source_file = "BidiMirroring";

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

    pub fn exec(alloc: std.mem.Allocator, line: []const u8, writer: anytype) !void {
        _ = alloc;
        var it = std.mem.tokenizeAny(u8, line, "; #");
        const c = it.next().?;
        const m = it.next().?;

        try writer.print("    .{{ .codepoint = 0x{s}, .mirror = 0x{s} }},\n", .{ c, m });
    }
});
