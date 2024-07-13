vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO google/libultrahdr
    REF c0c184568d38c8b1cb0ad79a5a86f02a69bc522f
    SHA512 05cf6e847ce7424cd1a521d4bd88aba17f509c8fd989fedb12b6f095fd5ff04cdc06bd881ec9dd2ed9ecf1b16c57383face1c04e1acfa42fe4d397e30a315e70
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
