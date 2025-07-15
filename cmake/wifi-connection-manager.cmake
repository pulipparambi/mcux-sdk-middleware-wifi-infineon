include_guard(GLOBAL)

if(CONFIG_MCUX_COMPONENT_WIFI_INFINEON.wifi-connection-manager)

# message("${CMAKE_CURRENT_LIST_FILE} component is included.")

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
${CMAKE_CURRENT_LIST_DIR}/../wifi-connection-manager/source/cy_wcm.c
)
target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
${CMAKE_CURRENT_LIST_DIR}/../wifi-connection-manager/include/
${CMAKE_CURRENT_LIST_DIR}/../wifi-connection-manager/source/COMPONENT_55500
${CMAKE_CURRENT_LIST_DIR}/../whd-expansion/External
)

endif()
