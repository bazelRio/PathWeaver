#workspace(name = "wpilib")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

RULES_JVM_EXTERNAL_TAG = "4.1"

RULES_JVM_EXTERNAL_SHA = "f36441aa876c4f6427bfb2d1f2d723b48e9d930b62662bf723ddfb8fc80f0140"

http_archive(
    name = "rules_jvm_external",
    sha256 = RULES_JVM_EXTERNAL_SHA,
    strip_prefix = "rules_jvm_external-%s" % RULES_JVM_EXTERNAL_TAG,
    url = "https://github.com/bazelbuild/rules_jvm_external/archive/%s.zip" % RULES_JVM_EXTERNAL_TAG,
)

http_archive(
    name = "rules_python",
    sha256 = "b6d46438523a3ec0f3cead544190ee13223a52f6a6765a29eae7b7cc24cc83a0",
    url = "https://github.com/bazelbuild/rules_python/releases/download/0.1.0/rules_python-0.1.0.tar.gz",
)

BUILD_FROM_SOURCE = True

# Setup WPI bazel rules repositories
load("//bazel_dependencies:load_repository_rules.bzl", "load_repository_rules")

load_repository_rules()

# Choose and initialize the actual repos
load("//bazel_dependencies:load_repositories.bzl", "load_repositories")

load_repositories(BUILD_FROM_SOURCE)

# Setup the alias for the repos
load("//bazel_dependencies:install_dependencies.bzl", "install_dependencies")

install_dependencies()

load("@maven//:defs.bzl", "pinned_maven_install")

pinned_maven_install()
