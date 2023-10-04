const std = @import("std");
const deps = @import("./deps.zig");

pub fn build(b: *std.build.Builder) void {
    const target = b.standardTargetOptions(.{});
    const mode = b.option(std.builtin.Mode, "mode", "") orelse .Debug;

    const step = b.option([]const u8, "step", "") orelse "run";

    if (std.mem.eql(u8, step, "run")) {
        addExeStep(b, target, mode, "zig-unicode-uca", "src/main.zig", "Run the app");
    }
    if (std.mem.eql(u8, step, "generate")) {
        addExeStep(b, target, mode, "generate", "generate.zig", "Generate the bindings");
    }
}

fn addExeStep(b: *std.build.Builder, target: std.zig.CrossTarget, mode: std.builtin.Mode, name: []const u8, root_src: []const u8, sdescription: []const u8) void {
    const exe = b.addExecutable(.{
        .name = name,
        .root_source_file = .{ .path = root_src },
        .target = target,
        .optimize = mode,
    });
    deps.addAllTo(exe);
    b.installArtifact(exe);

    const cmd = b.addRunArtifact(exe);
    cmd.step.dependOn(b.getInstallStep());
    if (b.args) |args| {
        cmd.addArgs(args);
    }

    const step = b.step("run", sdescription);
    step.dependOn(&cmd.step);
}
