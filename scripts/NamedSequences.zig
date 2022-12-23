const std = @import("std");
const common = @import("./_common.zig");

pub usingnamespace common.Main(struct {
    pub const source_file = "NamedSequences";

    pub const dest_file = "src/named_sequences.zig";

    pub const dest_header =
        \\pub const NamedSequence = struct {
        \\    name: []const u8,
        \\    sequence: []const u21,
        \\};
        \\
        \\pub const data = [_]NamedSequence{
        \\
    ;

    pub const dest_footer =
        \\};
        \\
    ;

    pub fn exec(alloc: std.mem.Allocator, line: []const u8, writer: anytype) !bool {
        _ = alloc;
        var it = std.mem.split(u8, line, ";");

        try writer.print("    .{{ .name = \"{}\", .sequence = &[_]u21{{", .{std.zig.fmtEscapes(it.next().?)});

        var jt = std.mem.tokenize(u8, it.next().?, " ");
        while (jt.next()) |jtem| {
            try writer.print(" 0x{s},", .{jtem});
        }
        try writer.writeAll(" } },\n");

        return true;
    }
});
