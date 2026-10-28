const std = @import("std");
const common = @import("./_common.zig");
const altStringEscape = @import("fmt-valueliteral").altStringEscape;

pub const do = common.Main(struct {
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

    pub fn exec(alloc: std.mem.Allocator, line: []const u8, writer: anytype) !void {
        _ = alloc;
        var it = std.mem.splitScalar(u8, line, ';');

        try writer.print("    .{{ .name = \"{}\", .sequence = &[_]u21{{", .{altStringEscape(it.next().?)});

        var jt = std.mem.tokenizeScalar(u8, it.next().?, ' ');
        while (jt.next()) |jtem| {
            try writer.print(" 0x{s},", .{jtem});
        }
        try writer.writeAll(" } },\n");
    }
});
