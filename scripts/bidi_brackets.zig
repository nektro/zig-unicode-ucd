const std = @import("std");
const common = @import("./_common.zig");

pub usingnamespace common.Main(struct {
    pub const source_file = "BidiBrackets";

    pub const dest_file = "src/bidi_brackets.zig";

    pub const dest_header =
        \\pub const BracketPairing = struct {
        \\    codepoint: u21,
        \\    pair: u21,
        \\    type: Type,
        \\
        \\    pub const Type = enum {
        \\        o,
        \\        c,
        \\        n,
        \\    };
        \\};
        \\
        \\pub const data = [_]BracketPairing{
        \\
    ;

    pub const dest_footer =
        \\};
        \\
    ;

    pub fn exec(alloc: std.mem.Allocator, line: []const u8, writer: anytype) !bool {
        _ = alloc;

        var it = std.mem.split(u8, line, ";");
        const a = std.mem.trim(u8, it.next().?, " ");
        const b = std.mem.trim(u8, it.next().?, " ");
        const c = std.mem.trim(u8, it.next().?, " ");

        try writer.print("    .{{ .codepoint = 0x{s}, .pair = 0x{s}, .type = .{s} }}, // {s}\n", .{ a, b, c[0..1], c[4..] });
        return true;
    }
});
