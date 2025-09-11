const std = @import("std");
const common = @import("./_common.zig");

pub usingnamespace common.Main(struct {
    pub const source_file = "EmojiSources";

    pub const dest_file = "src/emoji_sources.zig";

    pub const dest_header =
        \\pub const ShiftJISMap = struct {
        \\    code: u21,
        \\    docomo: u21,
        \\    kddi: u21,
        \\    softbank: u21,
        \\};
        \\
        \\pub const data = [_]ShiftJISMap{
        \\
    ;

    pub const dest_footer =
        \\};
        \\
    ;

    pub fn exec(alloc: std.mem.Allocator, line: []const u8, writer: anytype) !void {
        _ = alloc;
        if (std.mem.count(u8, line, " ") > 0) return;
        var it = std.mem.splitScalar(u8, line, ';');
        const code = it.next().?;
        // FIXME remove @as and temp vars after switch off stage1
        const docomo = common.nullify(it.next().?) orelse @as([]const u8, "0");
        const kddi = common.nullify(it.next().?) orelse @as([]const u8, "0");
        const softbank = common.nullify(it.next().?) orelse @as([]const u8, "0");

        try writer.print("    .{{ .code = 0x{s}, .docomo = 0x{s}, .kddi = 0x{s}, .softbank = 0x{s} }},\n", .{
            code,
            docomo,
            kddi,
            softbank,
        });
    }
});
