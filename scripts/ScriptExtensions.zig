const std = @import("std");
const common = @import("./_common.zig");

pub usingnamespace common.Main(struct {
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
                try writer.print("    .{{ .code = 0x{X}, .scripts = {} }},\n", .{ i, fmtScripts(untilComment(it.rest())) });
            }
        } else {
            try writer.print("    .{{ .code = 0x{s}, .scripts = {} }},\n", .{ first, fmtScripts(untilComment(it.rest())) });
        }
    }
});

fn untilComment(input: []const u8) []const u8 {
    return input[0..std.mem.indexOfScalar(u8, input, '#').?];
}

fn fmtScripts(bytes: []const u8) std.fmt.Formatter(formatScripts) {
    return .{ .data = bytes };
}

fn formatScripts(bytes: []const u8, comptime fmt: []const u8, options: std.fmt.FormatOptions, writer: anytype) !void {
    _ = fmt;
    _ = options;
    try writer.writeAll("&.{");
    var it = std.mem.splitScalar(u8, bytes, ' ');
    while (it.next()) |item| {
        if (item.len == 0) continue;
        try writer.print(" .{s},", .{item});
    }
    try writer.writeAll(" }");
}
