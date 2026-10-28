const std = @import("std");
const common = @import("./_common.zig");

pub const do = common.Main(struct {
    pub const source_file = "ScriptExtensions";

    pub const dest_file = "src/script_extensions.zig";

    pub const dest_header =
        \\const ucd = @import("./lib.zig");
        \\
        \\pub const ScriptExtension = struct {
        \\    code: u21,
        \\    scripts: []const ucd.Script,
        \\};
        \\
        \\pub const data = [_]ScriptExtension{
        \\
    ;

    pub const dest_footer =
        \\};
        \\
    ;

    pub fn exec(alloc: std.mem.Allocator, line: []const u8, writer: anytype) !void {
        _ = alloc;
        var it = std.mem.tokenizeAny(u8, line, "; ");

        const first = it.next().?;

        if (std.mem.indexOf(u8, first, "..")) |index| {
            const start = try std.fmt.parseInt(u21, first[0..index], 16);
            const end = try std.fmt.parseInt(u21, first[index + 2 ..], 16);
            var i = start;
            while (i <= end) : (i += 1) {
                try writer.print("    .{{ .code = 0x{X}, .scripts = {} }},\n", .{ i, fmtScripts(it.rest()) });
            }
        } else {
            try writer.print("    .{{ .code = 0x{s}, .scripts = {} }},\n", .{ first, fmtScripts(it.rest()) });
        }
    }
});

fn fmtScripts(bytes: []const u8) FormatScripts {
    return .{ .data = bytes };
}
const FormatScripts = struct {
    data: []const u8,

    pub fn nprint(self: FormatScripts, writer: anytype) !void {
        try writer.writeAll("&.{");
        var it = std.mem.splitScalar(u8, self.data, ' ');
        while (it.next()) |item| {
            if (item.len == 0) continue;
            try writer.print(" .{s},", .{item});
        }
        try writer.writeAll(" }");
    }
};
