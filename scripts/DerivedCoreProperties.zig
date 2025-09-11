const std = @import("std");
const common = @import("./_common.zig");

pub usingnamespace common.Main(struct {
    pub const source_file = "DerivedCoreProperties";

    pub const dest_file = "src/derived_core_properties.zig";

    pub const dest_header =
        \\pub const CoreProperty = struct {
        \\    from: u21,
        \\    to: u21,
        \\    property: Property,
        \\
        \\    pub const Property = enum {
        \\        Math,
        \\        Alphabetic,
        \\        Lowercase,
        \\        Uppercase,
        \\        Cased,
        \\        Case_Ignorable,
        \\        Changes_When_Lowercased,
        \\        Changes_When_Uppercased,
        \\        Changes_When_Titlecased,
        \\        Changes_When_Casefolded,
        \\        Changes_When_Casemapped,
        \\        ID_Start,
        \\        ID_Continue,
        \\        XID_Start,
        \\        XID_Continue,
        \\        Default_Ignorable_Code_Point,
        \\        Grapheme_Extend,
        \\        Grapheme_Base,
        \\        Grapheme_Link,
        \\        InCB,
        \\    };
        \\};
        \\
        \\pub const data = [_]CoreProperty{
        \\
    ;

    pub const dest_footer =
        \\};
        \\
    ;

    pub fn exec(alloc: std.mem.Allocator, line: []const u8, writer: anytype) !void {
        _ = alloc;
        var it = std.mem.tokenizeAny(u8, line, "; ");

        {
            const range = it.next().?;
            if (std.mem.indexOf(u8, range, "..")) |index| {
                try writer.print("    .{{ .from = 0x{s}, .to = 0x{s},", .{ range[0..index], range[index + 2 ..] });
            } else {
                try writer.print("    .{{ .from = 0x{s}, .to = 0x{s},", .{ range, range });
            }
        }
        {
            const prop = it.next().?;
            try writer.print(" .property = .{s} }},\n", .{prop});
        }
    }
});
