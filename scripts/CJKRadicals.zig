const std = @import("std");
const common = @import("./_common.zig");

pub usingnamespace common.Main(struct {
    pub const source_file = "CJKRadicals";

    pub const dest_file = "src/cjk_radicals.zig";

    pub const dest_header =
        \\pub const CJKRadical = struct {
        \\    number: u8,
        \\    simplified: bool,
        \\    character: ?u21,
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

    pub fn exec(alloc: std.mem.Allocator, line: []const u8, writer: anytype) !void {
        _ = alloc;
        var it = std.mem.splitSequence(u8, line, "; ");
        var n = it.next().?;
        const s = std.mem.endsWith(u8, n, "'");
        const c = it.next().?;
        const i = it.next().?;
        n = std.mem.trimRight(u8, n, "'");

        try writer.writeAll("    .{");
        try writer.print(" .number = {s},", .{n});
        try writer.print(" .simplified = {},", .{s});
        try writer.writeAll(" .character =");
        if (common.nullify(c)) |res| try common.printCodepoint(writer, res) else try writer.writeAll(" null,");
        try writer.print(" .ideograph = 0x{s}", .{i});
        try writer.writeAll(" },\n");
    }
});
