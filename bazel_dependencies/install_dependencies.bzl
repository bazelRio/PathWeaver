load("@local_allwpilib//:repo.bzl", "third_party_allwpilib")
load("@wpi_bazel_deps//third_party:com_fasterxml_jackson_core.bzl", "get_fasterxml_maven_deps")
load("@wpi_bazel_deps//third_party:org_openjfx_javafx.bzl", "get_javafx_maven_deps")
load("@wpi_bazel_deps//third_party:org_juni_jupiter_junit5.bzl", "get_junit5_maven_deps")
load("@rules_jvm_external//:defs.bzl", "maven_install")
load("//bazel_dependencies:maven_dependencies.bzl", "get_pathweaver_maven_deps")

def install_dependencies():
    artifacts, repositories = third_party_allwpilib()

    artifacts += get_pathweaver_maven_deps()
    artifacts += get_fasterxml_maven_deps()
    artifacts += get_junit5_maven_deps()
    artifacts += get_javafx_maven_deps()

    maven_install(
        name = "maven",
        artifacts = artifacts,
        repositories = repositories + ["https://repo1.maven.org/maven2"],
        maven_install_json = "//bazel_dependencies:maven_install.json",
    )
