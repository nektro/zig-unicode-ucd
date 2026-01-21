const std = @import("std");
const common = @import("./_common.zig");

pub usingnamespace common.Main(struct {
    pub const source_file = "DerivedNormalizationProps";

    pub const dest_file = "src/derived_normalization_props.zig";

    pub const dest_header =
        \\const ucd = @import("./lib.zig");
        \\
        \\pub const Range = struct {
        \\    from: u21,
        \\    to: u21,
        \\};
        \\
    ;

    pub const dest_footer = "";

    var sections: std.StringArrayHashMapUnmanaged(std.ArrayListUnmanaged([]const u8)) = .{};

    pub fn exec(alloc: std.mem.Allocator, line: []const u8, writer: anytype) !void {
        _ = writer;
        var it = std.mem.tokenizeAny(u8, line, " ; ");

        const cp_range = it.next().?;
        const rest = it.rest();

        const gop = try sections.getOrPut(alloc, try alloc.dupe(u8, rest));
        if (!gop.found_existing) gop.value_ptr.* = .{};
        try gop.value_ptr.append(alloc, try alloc.dupe(u8, cp_range));
    }

    pub fn after(alloc: std.mem.Allocator, writer: anytype) !void {
        _ = alloc;

        {
            const list = sections.fetchSwapRemove("Full_Composition_Exclusion ").?;
            try writer.writeAll("\n");
            try writer.writeAll("pub const full_composition_exclusion = struct {\n");
            try writer.writeAll("    pub const data = [_]u21{\n");
            for (list.value.items) |item| {
                if (std.mem.indexOf(u8, item, "..") == null) {
                    try writer.writeAll("        0x");
                    try writer.writeAll(item);
                    try writer.writeAll(",\n");
                }
            }
            try writer.writeAll("    };\n");
            try writer.writeAll("    pub const data_range = [_]Range{\n");
            for (list.value.items) |item| {
                if (std.mem.indexOf(u8, item, "..")) |idx| {
                    try writer.writeAll("        .{ .from = 0x");
                    try writer.writeAll(item[0..idx]);
                    try writer.writeAll(", .to = 0x");
                    try writer.writeAll(item[idx + 2 ..]);
                    try writer.writeAll(" },\n");
                }
            }
            try writer.writeAll("    };\n");
            try writer.writeAll("};\n");
        }
        {
            // "NFD_QC; N "
            const list = sections.fetchSwapRemove("NFD_QC; N ").?;
            try writer.writeAll("\n");
            try writer.writeAll("pub const nfd_qc_n = struct {\n");
            try writer.writeAll("    pub const data = [_]u21{\n");
            for (list.value.items) |item| {
                if (std.mem.indexOf(u8, item, "..") == null) {
                    try writer.writeAll("        0x");
                    try writer.writeAll(item);
                    try writer.writeAll(",\n");
                }
            }
            try writer.writeAll("    };\n");
            try writer.writeAll("    pub const data_range = [_]Range{\n");
            for (list.value.items) |item| {
                if (std.mem.indexOf(u8, item, "..")) |idx| {
                    try writer.writeAll("        .{ .from = 0x");
                    try writer.writeAll(item[0..idx]);
                    try writer.writeAll(", .to = 0x");
                    try writer.writeAll(item[idx + 2 ..]);
                    try writer.writeAll(" },\n");
                }
            }
            try writer.writeAll("    };\n");
            try writer.writeAll("};\n");
        }
        {
            // "NFC_QC; N "
            const list = sections.fetchSwapRemove("NFC_QC; N ").?;
            try writer.writeAll("\n");
            try writer.writeAll("pub const nfc_qc_n = struct {\n");
            try writer.writeAll("    pub const data = [_]u21{\n");
            for (list.value.items) |item| {
                if (std.mem.indexOf(u8, item, "..") == null) {
                    try writer.writeAll("        0x");
                    try writer.writeAll(item);
                    try writer.writeAll(",\n");
                }
            }
            try writer.writeAll("    };\n");
            try writer.writeAll("    pub const data_range = [_]Range{\n");
            for (list.value.items) |item| {
                if (std.mem.indexOf(u8, item, "..")) |idx| {
                    try writer.writeAll("        .{ .from = 0x");
                    try writer.writeAll(item[0..idx]);
                    try writer.writeAll(", .to = 0x");
                    try writer.writeAll(item[idx + 2 ..]);
                    try writer.writeAll(" },\n");
                }
            }
            try writer.writeAll("    };\n");
            try writer.writeAll("};\n");
        }
        {
            // "NFC_QC; M "
            const list = sections.fetchSwapRemove("NFC_QC; M ").?;
            try writer.writeAll("\n");
            try writer.writeAll("pub const nfc_qc_m = struct {\n");
            try writer.writeAll("    pub const data = [_]u21{\n");
            for (list.value.items) |item| {
                if (std.mem.indexOf(u8, item, "..") == null) {
                    try writer.writeAll("        0x");
                    try writer.writeAll(item);
                    try writer.writeAll(",\n");
                }
            }
            try writer.writeAll("    };\n");
            try writer.writeAll("    pub const data_range = [_]Range{\n");
            for (list.value.items) |item| {
                if (std.mem.indexOf(u8, item, "..")) |idx| {
                    try writer.writeAll("        .{ .from = 0x");
                    try writer.writeAll(item[0..idx]);
                    try writer.writeAll(", .to = 0x");
                    try writer.writeAll(item[idx + 2 ..]);
                    try writer.writeAll(" },\n");
                }
            }
            try writer.writeAll("    };\n");
            try writer.writeAll("};\n");
        }
        {
            // "NFKD_QC; N "
            const list = sections.fetchSwapRemove("NFKD_QC; N ").?;
            try writer.writeAll("\n");
            try writer.writeAll("pub const nfkd_qc_n = struct {\n");
            try writer.writeAll("    pub const data = [_]u21{\n");
            for (list.value.items) |item| {
                if (std.mem.indexOf(u8, item, "..") == null) {
                    try writer.writeAll("        0x");
                    try writer.writeAll(item);
                    try writer.writeAll(",\n");
                }
            }
            try writer.writeAll("    };\n");
            try writer.writeAll("    pub const data_range = [_]Range{\n");
            for (list.value.items) |item| {
                if (std.mem.indexOf(u8, item, "..")) |idx| {
                    try writer.writeAll("        .{ .from = 0x");
                    try writer.writeAll(item[0..idx]);
                    try writer.writeAll(", .to = 0x");
                    try writer.writeAll(item[idx + 2 ..]);
                    try writer.writeAll(" },\n");
                }
            }
            try writer.writeAll("    };\n");
            try writer.writeAll("};\n");
        }
        {
            // "NFKC_QC; N "
            const list = sections.fetchSwapRemove("NFKC_QC; N ").?;
            try writer.writeAll("\n");
            try writer.writeAll("pub const nfkc_qc_n = struct {\n");
            try writer.writeAll("    pub const data = [_]u21{\n");
            for (list.value.items) |item| {
                if (std.mem.indexOf(u8, item, "..") == null) {
                    try writer.writeAll("        0x");
                    try writer.writeAll(item);
                    try writer.writeAll(",\n");
                }
            }
            try writer.writeAll("    };\n");
            try writer.writeAll("    pub const data_range = [_]Range{\n");
            for (list.value.items) |item| {
                if (std.mem.indexOf(u8, item, "..")) |idx| {
                    try writer.writeAll("        .{ .from = 0x");
                    try writer.writeAll(item[0..idx]);
                    try writer.writeAll(", .to = 0x");
                    try writer.writeAll(item[idx + 2 ..]);
                    try writer.writeAll(" },\n");
                }
            }
            try writer.writeAll("    };\n");
            try writer.writeAll("};\n");
        }
        {
            // "NFKC_QC; M "
            const list = sections.fetchSwapRemove("NFKC_QC; M ").?;
            try writer.writeAll("\n");
            try writer.writeAll("pub const nfkc_qc_m = struct {\n");
            try writer.writeAll("    pub const data = [_]u21{\n");
            for (list.value.items) |item| {
                if (std.mem.indexOf(u8, item, "..") == null) {
                    try writer.writeAll("        0x");
                    try writer.writeAll(item);
                    try writer.writeAll(",\n");
                }
            }
            try writer.writeAll("    };\n");
            try writer.writeAll("    pub const data_range = [_]Range{\n");
            for (list.value.items) |item| {
                if (std.mem.indexOf(u8, item, "..")) |idx| {
                    try writer.writeAll("        .{ .from = 0x");
                    try writer.writeAll(item[0..idx]);
                    try writer.writeAll(", .to = 0x");
                    try writer.writeAll(item[idx + 2 ..]);
                    try writer.writeAll(" },\n");
                }
            }
            try writer.writeAll("    };\n");
            try writer.writeAll("};\n");
        }
        {
            // NFKC_CF
        }
        {
            // NFKC_SCF
        }
        {
            // "Changes_When_NFKC_Casefolded "
            const list = sections.fetchSwapRemove("Changes_When_NFKC_Casefolded ").?;
            try writer.writeAll("\n");
            try writer.writeAll("pub const changes_when_nfc_casefolded = struct {\n");
            try writer.writeAll("    pub const data = [_]u21{\n");
            for (list.value.items) |item| {
                if (std.mem.indexOf(u8, item, "..") == null) {
                    try writer.writeAll("        0x");
                    try writer.writeAll(item);
                    try writer.writeAll(",\n");
                }
            }
            try writer.writeAll("    };\n");
            try writer.writeAll("    pub const data_range = [_]Range{\n");
            for (list.value.items) |item| {
                if (std.mem.indexOf(u8, item, "..")) |idx| {
                    try writer.writeAll("        .{ .from = 0x");
                    try writer.writeAll(item[0..idx]);
                    try writer.writeAll(", .to = 0x");
                    try writer.writeAll(item[idx + 2 ..]);
                    try writer.writeAll(" },\n");
                }
            }
            try writer.writeAll("    };\n");
            try writer.writeAll("};\n");
        }
    }
});
