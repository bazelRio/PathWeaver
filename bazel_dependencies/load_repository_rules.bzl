load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")

def load_repository_rules():
    # native.local_repository(
    #     name = "wpi_bazel_rules",
    #     # path = "C:/Users/PJ/Documents/GitHub/wpilib/original/bazel_rules/wpi-bazel-rules",
    #     path = "/wpi-bazel-rules",
    # )

    git_repository(
        name = "wpi_bazel_rules",
        commit = "c69cbd8788f7ddf7ab06e01f1d8a2ce54bae9073",
        remote = "https://github.com/bazelRio/wpi-bazel-rules",
        shallow_since = "1627349829 -0400",
    )

    # native.local_repository(
    #     name = "wpi_bazel_deps",
    #     # path = "C:/Users/PJ/Documents/GitHub/wpilib/original/bazel_rules/wpi-bazel-deps-rules",
    #     path = "/wpi-bazel-deps-rules",
    # )

    git_repository(
        name = "wpi_bazel_deps",
        commit = "f73b4513e93f23fe507d26e436e9352cd087cf87",
        remote = "https://github.com/bazelRio/wpi-bazel-deps-rules",
        shallow_since = "1627277567 -0400",
    )
