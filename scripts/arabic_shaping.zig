const std = @import("std");
const common = @import("./_common.zig");

pub usingnamespace common.Main(struct {
    pub const source_file = "ArabicShaping";

    pub const dest_file = "src/arabic_shaping.zig";

    pub const dest_header =
        \\pub const Shaping = struct {
        \\    codepoint: u21,
        \\    schematic_name: []const u8,
        \\    joining_type: Joining.Type,
        \\    joining_group: Joining.Group,
        \\};
        \\
        \\pub const Joining = struct {
        \\    pub const Type = enum {
        \\        U,
        \\        D,
        \\        R,
        \\        C,
        \\        T,
        \\        L,
        \\    };
        \\
        \\    pub const Group = enum {
        \\        No_Joining_Group,
        \\        YEH,
        \\        ALEF,
        \\        WAW,
        \\        BEH,
        \\        TEH_MARBUTA,
        \\        HAH,
        \\        DAL,
        \\        REH,
        \\        SEEN,
        \\        SAD,
        \\        TAH,
        \\        AIN,
        \\        GAF,
        \\        FARSI_YEH,
        \\        FEH,
        \\        QAF,
        \\        KAF,
        \\        LAM,
        \\        MEEM,
        \\        NOON,
        \\        HEH,
        \\        SWASH_KAF,
        \\        NYA,
        \\        KNOTTED_HEH,
        \\        HEH_GOAL,
        \\        TEH_MARBUTA_GOAL,
        \\        YEH_WITH_TAIL,
        \\        YEH_BARREE,
        \\        ALAPH,
        \\        BETH,
        \\        GAMAL,
        \\        DALATH_RISH,
        \\        HE,
        \\        SYRIAC_WAW,
        \\        ZAIN,
        \\        HETH,
        \\        TETH,
        \\        YUDH,
        \\        YUDH_HE,
        \\        KAPH,
        \\        LAMADH,
        \\        MIM,
        \\        NUN,
        \\        SEMKATH,
        \\        FINAL_SEMKATH,
        \\        E,
        \\        PE,
        \\        REVERSED_PE,
        \\        SADHE,
        \\        QAPH,
        \\        SHIN,
        \\        TAW,
        \\        ZHAIN,
        \\        KHAPH,
        \\        FE,
        \\        BURUSHASKI_YEH_BARREE,
        \\        MALAYALAM_NGA,
        \\        MALAYALAM_JA,
        \\        MALAYALAM_NYA,
        \\        MALAYALAM_TTA,
        \\        MALAYALAM_NNA,
        \\        MALAYALAM_NNNA,
        \\        MALAYALAM_BHA,
        \\        MALAYALAM_RA,
        \\        MALAYALAM_LLA,
        \\        MALAYALAM_LLLA,
        \\        MALAYALAM_SSA,
        \\        ROHINGYA_YEH,
        \\        STRAIGHT_WAW,
        \\        AFRICAN_FEH,
        \\        AFRICAN_QAF,
        \\        AFRICAN_NOON,
        \\        MANICHAEAN_ALEPH,
        \\        MANICHAEAN_BETH,
        \\        MANICHAEAN_GIMEL,
        \\        MANICHAEAN_DALETH,
        \\        MANICHAEAN_WAW,
        \\        MANICHAEAN_ZAYIN,
        \\        MANICHAEAN_HETH,
        \\        MANICHAEAN_TETH,
        \\        MANICHAEAN_YODH,
        \\        MANICHAEAN_KAPH,
        \\        MANICHAEAN_LAMEDH,
        \\        MANICHAEAN_DHAMEDH,
        \\        MANICHAEAN_THAMEDH,
        \\        MANICHAEAN_MEM,
        \\        MANICHAEAN_NUN,
        \\        MANICHAEAN_SAMEKH,
        \\        MANICHAEAN_AYIN,
        \\        MANICHAEAN_PE,
        \\        MANICHAEAN_SADHE,
        \\        MANICHAEAN_QOPH,
        \\        MANICHAEAN_RESH,
        \\        MANICHAEAN_TAW,
        \\        MANICHAEAN_ONE,
        \\        MANICHAEAN_FIVE,
        \\        MANICHAEAN_TEN,
        \\        MANICHAEAN_TWENTY,
        \\        MANICHAEAN_HUNDRED,
        \\        HANIFI_ROHINGYA_PA,
        \\        HANIFI_ROHINGYA_KINNA_YA,
        \\    };
        \\};
        \\
        \\pub const data = [_]Shaping{
        \\
    ;

    pub const dest_footer =
        \\};
        \\
    ;

    pub fn exec(alloc: std.mem.Allocator, line: []const u8, writer: anytype) !bool {
        var it = std.mem.split(u8, line, ";");
        const c = std.mem.trim(u8, it.next().?, " ");
        const n = std.mem.trim(u8, it.next().?, " ");
        const t = std.mem.trim(u8, it.next().?, " ");
        const g = std.mem.trim(u8, it.next().?, " ");
        const g2 = try std.mem.replaceOwned(u8, alloc, g, " ", "_");

        try common.stringToEnum(@import("../src/lib.zig").arabic_shaping.Joining.Type, t);
        try common.stringToEnum(@import("../src/lib.zig").arabic_shaping.Joining.Group, g2);

        try writer.print("    .{{ .codepoint = 0x{s}, .schematic_name = \"{s}\", .joining_type = .{s}, .joining_group = .{s} }},\n", .{ c, n, t, g2 });
        return true;
    }
});
