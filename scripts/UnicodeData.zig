const std = @import("std");
const common = @import("./_common.zig");

pub usingnamespace common.Main(struct {
    pub const source_file = "UnicodeData";

    pub const dest_file = "src/unicode_data.zig";

    pub const dest_header =
        \\const ucd = @import("./lib.zig");
        \\
        \\pub const Codepoint = struct {
        \\    u21, // U+ code
        \\    []const u8, // name
        \\    ucd.GeneralCategory,
        \\    u8, // Canonical_Combining_Class
        \\    ucd.BidiClass,
        \\    bool, // decomposes, see UCA
        \\    []const u8, // Numeric_Type=Decimal value
        \\    []const u8, // Numeric_Type=Digit value
        \\    []const u8, // Numeric_Type=Numeric value
        \\    bool, // Bidi_Mirrored?
        \\    ?u21, // Simple_Uppercase_Mapping
        \\    ?u21, // Simple_Lowercase_Mapping
        \\    ?u21, // Simple_Titlecase_Mapping
        \\};
        \\
        \\pub const data = [_]Codepoint{
        \\
    ;

    pub const dest_footer =
        \\};
        \\
    ;

    pub fn exec(alloc: std.mem.Allocator, line: []const u8, writer: anytype) !void {
        _ = alloc;
        var it = std.mem.splitScalar(u8, line, ';');

        try writer.writeAll("    .{");
        try writer.print(" 0x{s},", .{it.next().?});
        try writer.print(" \"{}\",", .{std.zig.fmtEscapes(it.next().?)});
        try writer.print(" .{s},", .{it.next().?});
        try writer.print(" {s},", .{it.next().?});
        try writer.print(" .{s},", .{it.next().?});
        try writer.print(" {},", .{std.mem.startsWith(u8, it.next().?, "<")});
        try writer.print(" \"{}\",", .{std.zig.fmtEscapes(it.next().?)});
        try writer.print(" \"{}\",", .{std.zig.fmtEscapes(it.next().?)});
        try writer.print(" \"{}\",", .{std.zig.fmtEscapes(it.next().?)});
        try writer.print(" {},", .{std.mem.eql(u8, it.next().?, "Y")});
        _ = it.next().?; // [skip] Unicode_1_Name (Obsolete as of 6.2.0)
        _ = it.next().?; // [skip] ISO_Comment (Obsolete as of 5.2.0; Deprecated and Stabilized as of 6.0.0)
        if (common.nullify(it.next())) |res| try writer.print(" 0x{s},", .{res}) else try writer.writeAll(" null,");
        if (common.nullify(it.next())) |res| try writer.print(" 0x{s},", .{res}) else try writer.writeAll(" null,");
        if (common.nullify(it.next())) |res| try writer.print(" 0x{s},", .{res}) else try writer.writeAll(" null,");

        try writer.writeAll(" },\n");
    }
});
