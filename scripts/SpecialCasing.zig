const std = @import("std");
const common = @import("./_common.zig");
const altStringEscape = @import("fmt-valueliteral").altStringEscape;

pub const do = common.Main(struct {
    pub const source_file = "SpecialCasing";

    pub const dest_file = "src/special_casing.zig";

    pub const dest_header =
        \\pub const SpecialCasing = struct {
        \\    code: u21,
        \\    lower: []const u21,
        \\    title: []const u21,
        \\    upper: []const u21,
        \\    condition: []const u8,
        \\};
        \\
        \\pub const data = [_]SpecialCasing{
        \\
    ;

    pub const dest_footer =
        \\};
        \\
    ;

    pub fn exec(alloc: std.mem.Allocator, line: []const u8, writer: anytype) !void {
        _ = alloc;
        const end = std.mem.indexOfScalar(u8, line, '#') orelse line.len;
        var it = std.mem.splitSequence(u8, line[0..end], "; ");

        try writer.writeAll("    .{");
        try writer.writeAll(" .code =");
        try common.printCodepoint(writer, it.next().?);
        try writer.writeAll(" .lower =");
        try common.printSeq(writer, it.next().?);
        try writer.writeAll(" .title =");
        try common.printSeq(writer, it.next().?);
        try writer.writeAll(" .upper =");
        try common.printSeq(writer, it.next().?);
        try writer.print(" .condition = \"{}\"", .{altStringEscape(it.next().?)});
        try writer.writeAll(" },\n");
    }
});
