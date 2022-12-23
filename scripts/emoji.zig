const std = @import("std");
const common = @import("./_common.zig");

pub usingnamespace common.Main(struct {
    pub const source_file = "emoji/emoji-data";

    pub const dest_file = "src/emoji.zig";

    pub const dest_header =
        \\pub const Emoji = struct {
        \\    from: u21,
        \\    to: u21,
        \\    category: enum {
        \\        Emoji,
        \\        Emoji_Presentation,
        \\        Emoji_Modifier,
        \\        Emoji_Modifier_Base,
        \\        Emoji_Component,
        \\        Extended_Pictographic,
        \\    },
        \\};
        \\
        \\pub const data = [_]Emoji{
        \\
    ;

    pub const dest_footer =
        \\};
        \\
    ;

    pub usingnamespace common.RangeEnum("category");
});
