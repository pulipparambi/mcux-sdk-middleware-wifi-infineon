include_guard(GLOBAL)

message("${CMAKE_CURRENT_LIST_FILE}   MFG TEST is included.")

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
${CMAKE_CURRENT_LIST_DIR}/../wifi-mfg-test-app/source/mfg_test_common.c
${CMAKE_CURRENT_LIST_DIR}/../wifi-mfg-test-app/target/COMPONENT_WCM/mfg_test_comp_ioctl.c
)
target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
${CMAKE_CURRENT_LIST_DIR}/../wifi-mfg-test-app/include/
${CMAKE_CURRENT_LIST_DIR}/../wifi-mfg-test-app/source/
${CMAKE_CURRENT_LIST_DIR}/../wifi-mfg-test-app/target/COMPONENT_WCM/
)
