include_guard(GLOBAL)

if(CONFIG_MCUX_COMPONENT_WIFI_INFINEON.wifi-resources)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
	  ${CMAKE_CURRENT_LIST_DIR}/../wifi-resources/
	  ${CMAKE_CURRENT_LIST_DIR}/../wifi-resources/clm/
)
if( CONFIG_USE_middleware_wifi_host_driver_mfg_firmware )

target_compile_definitions(${MCUX_SDK_PROJECT_NAME} PUBLIC

	FW_IMAGE_NAME="./COMPONENT_55500/COMPONENT_SM/55500A1-mfgtest.trxcse"
	CLM_IMAGE_NAME="../../../../wifi-resources/clm/COMPONENT_WIFI6/COMPONENT_55500/COMPONENT_CYW955513SDM2WLIPA/55500A1.clm_blob"
)

else()

target_compile_definitions(${MCUX_SDK_PROJECT_NAME} PUBLIC

	FW_IMAGE_NAME="./COMPONENT_55500/COMPONENT_SM/55500A1.trxcse"
	CLM_IMAGE_NAME="../../../../wifi-resources/clm/COMPONENT_WIFI6/COMPONENT_55500/COMPONENT_CYW955513SDM2WLIPA/55500A1.clm_blob"
)

endif()

#This is only for finding FW size value in generic way.
if( CONFIG_USE_middleware_wifi_host_driver_mfg_firmware )

set(FW_IMAGE_NAME "./whd-expansion/WHD/COMPONENT_WIFI6/resources/firmware/COMPONENT_55500/COMPONENT_SM/55500A1-mfgtest.trxcse")

else()

set(FW_IMAGE_NAME "./whd-expansion/WHD/COMPONENT_WIFI6/resources/firmware/COMPONENT_55500/COMPONENT_SM/55500A1.trxcse")

endif()

set(CLM_IMAGE_NAME "./wifi-resources/clm/COMPONENT_WIFI6/COMPONENT_55500/COMPONENT_CYW955513SDM2WLIPA/55500A1.clm_blob")

file(SIZE "${CMAKE_CURRENT_SOURCE_DIR}/${FW_IMAGE_NAME}" FW_IMAGE_SIZE)
file(SIZE "${CMAKE_CURRENT_SOURCE_DIR}/${CLM_IMAGE_NAME}" CLM_IMAGE_SIZE)

target_compile_definitions(${MCUX_SDK_PROJECT_NAME} PUBLIC
   FW_IMAGE_SIZE=${FW_IMAGE_SIZE}
   CLM_IMAGE_SIZE=${CLM_IMAGE_SIZE}
)

endif()
