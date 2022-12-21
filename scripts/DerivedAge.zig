const std = @import("std");
const common = @import("./_common.zig");

pub usingnamespace common.Main(struct {
    pub const source_file = "DerivedAge";

    pub const dest_file = "src/derived_age.zig";

    pub const dest_header =
        \\pub const Age = struct {
        \\    from: u21,
        \\    to: u21,
        \\    since: [2]u8,
        \\};
        \\
        \\pub const data = [_]Age{
        \\
    ;

    pub const dest_footer =
        \\};
        \\
    ;

    pub fn exec(alloc: std.mem.Allocator, line: []const u8, writer: anytype) !bool {
        _ = alloc;
        var it = std.mem.tokenize(u8, line, "; ");

        {
            const range = it.next().?;
            if (std.mem.indexOf(u8, range, "..")) |index| {
                try writer.print("    .{{ .from = 0x{s}, .to = 0x{s},", .{ range[0..index], range[index + 2 ..] });
            } else {
                try writer.print("    .{{ .from = 0x{s}, .to = 0x{s},", .{ range, range });
            }
        }
        {
            const added = it.next().?;
            var jt = std.mem.split(u8, added, ".");
            const major = jt.next().?;
            const minor = jt.next().?;
            try writer.print(" .since = .{{ {s},{s} }} }},\n", .{ major, minor });
        }

        return true;
    }
});
