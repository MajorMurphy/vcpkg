vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO google/libultrahdr
    REF 3250b81e55890c8ce73edbc807f2d3c9c48385c5
    SHA512 c53db218772eeedcf3085ee66f5e69345e486731d2701ebed028ebe226a12440d23a8aa0db4be5386d207658ccada150d8ffec267e338c9c5923fcd19f13cda8
    HEAD_REF master
)
vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
)

vcpkg_cmake_build()

file(INSTALL "${SOURCE_PATH}/ultrahdr_api.h" DESTINATION "${CURRENT_PACKAGES_DIR}/include" FILES_MATCHING PATTERN "*.h")
file(INSTALL "${SOURCE_PATH}/lib/include" DESTINATION "${CURRENT_PACKAGES_DIR}" FILES_MATCHING PATTERN "*.h")
file(INSTALL "${SOURCE_PATH}/README.md" DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}")
file(INSTALL "${SOURCE_PATH}/LICENSE" DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}" RENAME copyright)
