const std = @import("std");
const common = @import("./_common.zig");

pub usingnamespace common.Main(struct {
    pub const source_file = "CaseFolding";

    pub const dest_file = "src/case_folding.zig";

    pub const dest_header =
        \\pub const CaseFolding = struct {
        \\    code: u21,
        \\    status: Status,
        \\    mapping: Mapping,
        \\
        \\    pub const Status = enum {
        \\        C,
        \\        F,
        \\        S,
        \\        T,
        \\    };
        \\
        \\    pub const Mapping = union(Status) {
        \\        C: u21,
        \\        F: []const u21,
        \\        S: u21,
        \\        T: u21,
        \\    };
        \\};
        \\
        \\pub const data = [_]CaseFolding{
        \\
    ;

    pub const dest_footer =
        \\};
        \\
    ;

    pub fn exec(alloc: std.mem.Allocator, line: []const u8, writer: anytype) !void {
        _ = alloc;
        var it = std.mem.split(u8, line, "; ");
        const code = it.next().?;
        const status = it.next().?;
        try writer.print("    .{{ .code = 0x{s}, .status = .{s}, .mapping = .{{ .{s} =", .{ code, status, status });

        switch (std.meta.stringToEnum(enum { C, F, S, T }, status) orelse @panic(status)) {
            .C, .S, .T => {
                const mapping = it.next().?;
                try writer.print(" 0x{s}", .{mapping});
            },
            .F => {
                const mapping = it.next().?;
                var jt = std.mem.split(u8, mapping, " ");
                try writer.writeAll(" &[_]u21{");
                while (jt.next()) |jtem| {
                    try writer.print("0x{s},", .{jtem});
                }
                try writer.writeAll("}");
            },
        }
        try writer.writeAll(" } }, // ");
        try writer.writeAll(it.rest());
        try writer.writeAll("\n");
    }
});
