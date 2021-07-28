"""
Gets the pathweaver specific maven dependencies
"""

def get_pathweaver_maven_deps():
    artifacts = [
        "org.ejml:ejml-simple:0.38",
        "javax.measure:unit-api:2.0",
        "org.fxmisc.easybind:easybind:1.0.3",
        "si.uom:si-units:2.0.1",
        "systems.uom:systems-common:2.0",
        "tech.units:indriya:2.0.1",
        "com.google.code.gson:gson:2.8.5",
        "org.apache.commons:commons-csv:1.5",
    ]

    return artifacts
