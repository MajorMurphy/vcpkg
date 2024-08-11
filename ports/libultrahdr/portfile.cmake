vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO google/libultrahdr
    REF ea72bc86130eca7699abe689ccbeb4135266dbc5
    SHA512 60979a4afccd8fd06f226d46107d5508d07d73523dd21e825bfdd2efcd6fb9023d39e611ffe8d9d9af4668b731ddf60e12447f24b23ac1226fedece957354682
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
