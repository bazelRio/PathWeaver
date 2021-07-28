load("@wpi_bazel_deps//allwpilib:load_allwpilib_from_maven.bzl", "load_allwpilib_from_maven")
load("@wpi_bazel_deps//allwpilib:load_allwpilib_from_source.bzl", "load_allwpilib_from_source")

def load_repositories(build_from_source):
    WPILIB_VERSION = "2021.3.1"

    if build_from_source:
        load_allwpilib_from_source(parent_version = WPILIB_VERSION, git_repository_args = {
            "commit": "bcaa4cbfad2dce661b29fe6bf69cf81b19568ed1",
            "shallow_since": "1627276707 -0400",
            "remote": "https://github.com/bazelRio/allwpilib.git",
        })
        # load_allwpilib_from_source(parent_version = WPILIB_VERSION, local_repository_path = "/allwpilib")

    else:
        load_allwpilib_from_maven(version = WPILIB_VERSION)
