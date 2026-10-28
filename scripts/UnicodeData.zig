const std = @import("std");
const common = @import("./_common.zig");
const altStringEscape = @import("fmt-valueliteral").altStringEscape;

pub const do = common.Main(struct {
    pub const source_file = "UnicodeData";

    pub const dest_file = "src/unicode_data.zig";

    pub const dest_header =
        \\const ucd = @import("./lib.zig");
        \\const std = @import("std");
        \\const extras = @import("extras");
        \\
        \\const data_soa = extras.StaticMultiList(Codepoint).initComptime(&data).items;
        \\pub const data_code = data_soa[0][0..].*;
        \\pub const data_name = data_soa[1][0..].*;
        \\pub const data_gc = data_soa[2][0..].*;
        \\pub const data_ccc = data_soa[3][0..].*;
        \\pub const data_bc = data_soa[4][0..].*;
        \\pub const data_decomp = data_soa[5][0..].*;
        \\pub const data_decomp_map = data_soa[6][0..].*;
        \\pub const data_nt_dec = data_soa[7][0..].*;
        \\pub const data_nt_dig = data_soa[8][0..].*;
        \\pub const data_nt_num = data_soa[9][0..].*;
        \\pub const data_bm = data_soa[10][0..].*;
        \\pub const data_sum = data_soa[11][0..].*;
        \\pub const data_slm = data_soa[12][0..].*;
        \\pub const data_stm = data_soa[13][0..].*;
        \\
        \\pub const Codepoint = struct {
        \\    u21, // U+ code
        \\    []const u8, // name
        \\    ucd.GeneralCategory,
        \\    u8, // Canonical_Combining_Class
        \\    ucd.BidiClass,
        \\    Decomposition, // __none for none
        \\    []const u21, // decomposition mapping, empty for none
        \\    []const u8, // Numeric_Type=Decimal value
        \\    []const u8, // Numeric_Type=Digit value
        \\    []const u8, // Numeric_Type=Numeric value
        \\    bool, // Bidi_Mirrored?
        \\    ?u21, // Simple_Uppercase_Mapping
        \\    ?u21, // Simple_Lowercase_Mapping
        \\    ?u21, // Simple_Titlecase_Mapping
        \\};
        \\
        \\pub const Decomposition = enum {
        \\    __none,
        \\    __canonical,
        \\    noBreak,
        \\    compat,
        \\    super,
        \\    fraction,
        \\    sub,
        \\    font,
        \\    circle,
        \\    wide,
        \\    vertical,
        \\    square,
        \\    isolated,
        \\    final,
        \\    initial,
        \\    medial,
        \\    small,
        \\    narrow,
        \\};
        \\
        \\pub fn find(cp: u21) usize {
        \\    return binarySearchClosest(u21, &data_code, cp, compare);
        \\}
        \\
        \\fn binarySearchClosest(comptime T: type, items: []const T, context: anytype, comptime compareFn: fn (@TypeOf(context), T) std.math.Order) usize {
        \\    var low: usize = 0;
        \\    var high: usize = items.len;
        \\    while (low < high) {
        \\        const mid = low + (high - low) / 2;
        \\        switch (compareFn(context, items[mid])) {
        \\            .eq => return mid,
        \\            .gt => low = mid + 1,
        \\            .lt => high = mid,
        \\        }
        \\    }
        \\    std.debug.assert(low == high);
        \\    return high;
        \\}
        \\
        \\pub fn compare(needle: u21, row: u21) std.math.Order {
        \\    if (needle < row) return .lt;
        \\    if (needle > row) return .gt;
        \\    return .eq;
        \\}
        \\
        \\const data = [_]Codepoint{
        \\
    ;

    pub const dest_footer =
        \\};
        \\
    ;

    pub fn exec(alloc: std.mem.Allocator, line: []const u8, writer: anytype) !void {
        _ = alloc;
        var it = std.mem.splitScalar(u8, line, ';');

        try writer.writeAll("    .{");
        try writer.print(" 0x{s},", .{it.next().?});
        try writer.print(" \"{}\",", .{altStringEscape(it.next().?)});
        try writer.print(" .{s},", .{it.next().?});
        try writer.print(" {s},", .{it.next().?});
        try writer.print(" .{s},", .{it.next().?});
        {
            var next = it.next().?;
            if (next.len > 0) {
                if (std.mem.indexOfScalar(u8, next, '>')) |idx| {
                    try writer.print(" .{s},", .{next[1..idx]});
                    next = next[idx + 2 ..];
                } else {
                    try writer.writeAll(" .__canonical,");
                }
                var jt = std.mem.splitScalar(u8, next, ' ');
                try writer.writeAll(" &.{");
                while (jt.next()) |sp| {
                    try writer.writeAll("0x");
                    try writer.writeAll(sp);
                    if (jt.index != null) try writer.writeAll(",");
                }
                try writer.writeAll("},");
            } else {
                try writer.writeAll(" .__none,");
                try writer.writeAll(" &.{},");
            }
        }
        try writer.print(" \"{}\",", .{altStringEscape(it.next().?)});
        try writer.print(" \"{}\",", .{altStringEscape(it.next().?)});
        try writer.print(" \"{}\",", .{altStringEscape(it.next().?)});
        try writer.print(" {},", .{std.mem.eql(u8, it.next().?, "Y")});
        _ = it.next().?; // [skip] Unicode_1_Name (Obsolete as of 6.2.0)
        _ = it.next().?; // [skip] ISO_Comment (Obsolete as of 5.2.0; Deprecated and Stabilized as of 6.0.0)
        if (common.nullify(it.next())) |res| try writer.print(" 0x{s},", .{res}) else try writer.writeAll(" null,");
        if (common.nullify(it.next())) |res| try writer.print(" 0x{s},", .{res}) else try writer.writeAll(" null,");
        if (common.nullify(it.next())) |res| try writer.print(" 0x{s},", .{res}) else try writer.writeAll(" null,");

        try writer.writeAll(" },\n");
    }
});
