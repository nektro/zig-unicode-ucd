const std = @import("std");
const common = @import("./_common.zig");

pub usingnamespace common.Main(struct {
    pub const source_file = "NameAliases";

    pub const dest_file = "src/name_aliases.zig";

    pub const dest_header =
        \\pub const NameAlias = struct {
        \\    code: u21,
        \\    alias: []const u8,
        \\    type: Type,
        \\
        \\    pub const Type = enum {
        \\        correction,
        \\        control,
        \\        alternate,
        \\        figment,
        \\        abbreviation,
        \\    };
        \\};
        \\
        \\pub const data = [_]NameAlias{
        \\
    ;

    pub const dest_footer =
        \\};
        \\
    ;

    pub fn exec(alloc: std.mem.Allocator, line: []const u8, writer: anytype) !void {
        _ = alloc;
        var it = std.mem.split(u8, line, ";");

        try writer.print("    .{{ .code = 0x{s}, .alias = \"{}\", .type = .{s} }},\n", .{
            it.next().?,
            std.zig.fmtEscapes(it.next().?),
            it.next().?,
        });
    }
});
