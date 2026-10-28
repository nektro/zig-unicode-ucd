const std = @import("std");
const common = @import("./_common.zig");
const extras = @import("extras");
const altStringEscape = @import("fmt-valueliteral").altStringEscape;

pub const do = common.Main(struct {
    pub const source_file = "PropertyValueAliases";

    pub const dest_file = "src/property_value_aliases.zig";

    pub const dest_header =
        \\const std = @import("std");
        \\
        \\pub const data = [_][3][:0]const u8{
        \\
    ;

    pub const dest_footer =
        \\};
    ;

    pub fn exec(alloc: std.mem.Allocator, line: []const u8, writer: anytype) !void {
        _ = alloc;
        const end = std.mem.indexOfScalar(u8, line, '#') orelse line.len;
        var it = std.mem.tokenizeAny(u8, line[0..end], "; ");

        var vals = [_][]const u8{
            it.next().?,
            it.next().?,
            it.next().?,
        };
        flip(std.fmt.parseInt(u32, vals[1], 10)) catch {
            vals[1] = vals[2];
            vals[2] = it.next().?;
        };

        try writer.print("    .{{ \"{}\", \"{}\", \"{}\" }},\n", .{
            altStringEscape(vals[0]),
            altStringEscape(vals[1]),
            altStringEscape(vals[2]),
        });

        while (it.next()) |more| {
            try writer.print("    .{{ \"{}\", \"{}\", \"{}\" }},\n", .{
                altStringEscape(vals[0]),
                altStringEscape(more),
                altStringEscape(vals[2]),
            });
        }
    }
});

fn flip(foo: anytype) !void {
    _ = foo catch return;
    return error.ExpectedError;
}
