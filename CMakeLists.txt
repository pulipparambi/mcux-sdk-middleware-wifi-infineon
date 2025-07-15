cmake_minimum_required(VERSION 3.20.0)

if(CONFIG_MCUX_COMPONENT_WIFI_INFINEON)

    # Add library to avoid mcux warning
    add_library(wifi_infineon INTERFACE)

    include(cmake/whd-expansion.cmake)
    include(cmake/wifi-resources.cmake)
    include(cmake/wifi-connection-manager.cmake)

target_compile_definitions(${MCUX_SDK_PROJECT_NAME} PUBLIC
	CYBSP_WIFI_CAPABLE
	CY_WIFI_COUNTRY=WHD_COUNTRY_UNITED_STATES
	NVRAM_IMAGE_SIZE=6355
	NVRAM_IMAGE_NAME="../../../../wifi-resources/nvram/COMPONENT_WIFI6/COMPONENT_55500/COMPONENT_CYW955513SDM2WLIPA/cyw955513sdm2wlipa.txt"
	BLHS_SUPPORT
	TRXV5
	CY_DISABLE_XMC7000_DATA_CACHE
	WHD_NETWORK_LWIP
	WHD_RTOS
	WHD_FREERTOS
	WHD_CUSTOM_HAL
	IMXRT
	WHD_USE_WCM
)
endif()
