const std = @import("std");
const common = @import("./_common.zig");

pub usingnamespace common.Main(struct {
    pub const source_file = "ScriptExtensions";

    pub const dest_file = "src/script_extensions.zig";

    pub const dest_header =
        \\pub const ScriptExtension = struct {
        \\    code: u21,
        \\    scripts: []const enum {
        \\        Beng,
        \\        Deva,
        \\        Dupl,
        \\        Grek,
        \\        Hani,
        \\        Latn,
        \\        Nand,
        \\        Arab,
        \\        Bopo,
        \\        Bugi,
        \\        Cprt,
        \\        Cyrl,
        \\        Geor,
        \\        Gran,
        \\        Gujr,
        \\        Guru,
        \\        Hira,
        \\        Knda,
        \\        Mong,
        \\        Cakm,
        \\        Kali,
        \\        Buhd,
        \\        Adlm,
        \\        Copt,
        \\        Rohg,
        \\        Syrc,
        \\        Thaa,
        \\        Java,
        \\        Linb,
        \\        Glag,
        \\        Perm,
        \\        Shrd,
        \\        Taml,
        \\        Khoj,
        \\        Mult,
        \\        Kana,
        \\        Phag,
        \\        Yezi,
        \\        Sylo,
        \\        Mymr,
        \\        Tale,
        \\        Lina,
        \\        Hano,
        \\        Tagb,
        \\        Tglg,
        \\        Dogr,
        \\        Kthi,
        \\        Mahj,
        \\        Hang,
        \\        Yiii,
        \\        Mlym,
        \\        Orya,
        \\        Telu,
        \\        Mand,
        \\        Mani,
        \\        Phlp,
        \\        Sogd,
        \\        Tirh,
        \\        Modi,
        \\        Sind,
        \\        Takr,
        \\        Gong,
        \\        Gonm,
        \\        Sinh,
        \\        Limb,
        \\    },
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
        var it = std.mem.tokenize(u8, line, "; ");

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
    var it = std.mem.split(u8, bytes, " ");
    while (it.next()) |item| {
        if (item.len == 0) continue;
        try writer.print(" .{s},", .{item});
    }
    try writer.writeAll(" }");
}
