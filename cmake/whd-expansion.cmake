include_guard(GLOBAL)

if(CONFIG_MCUX_COMPONENT_WIFI_INFINEON.whd-expansion)

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
${CMAKE_CURRENT_LIST_DIR}/../whd-expansion/WHD/COMPONENT_WIFI6/src/whd_ap.c
${CMAKE_CURRENT_LIST_DIR}/../whd-expansion/WHD/COMPONENT_WIFI6/src/whd_buffer_api.c
${CMAKE_CURRENT_LIST_DIR}/../whd-expansion/WHD/COMPONENT_WIFI6/src/whd_cdc_bdc.c
${CMAKE_CURRENT_LIST_DIR}/../whd-expansion/WHD/COMPONENT_WIFI6/src/whd_chip.c
${CMAKE_CURRENT_LIST_DIR}/../whd-expansion/WHD/COMPONENT_WIFI6/src/whd_chip_constants.c
${CMAKE_CURRENT_LIST_DIR}/../whd-expansion/WHD/COMPONENT_WIFI6/src/whd_clm.c
${CMAKE_CURRENT_LIST_DIR}/../whd-expansion/WHD/COMPONENT_WIFI6/src/whd_commonring.c
${CMAKE_CURRENT_LIST_DIR}/../whd-expansion/WHD/COMPONENT_WIFI6/src/whd_debug.c
${CMAKE_CURRENT_LIST_DIR}/../whd-expansion/WHD/COMPONENT_WIFI6/src/whd_events.c
${CMAKE_CURRENT_LIST_DIR}/../whd-expansion/WHD/COMPONENT_WIFI6/src/whd_flowring.c
${CMAKE_CURRENT_LIST_DIR}/../whd-expansion/WHD/COMPONENT_WIFI6/src/whd_hal_port.c
${CMAKE_CURRENT_LIST_DIR}/../whd-expansion/WHD/COMPONENT_WIFI6/src/whd_logging.c
${CMAKE_CURRENT_LIST_DIR}/../whd-expansion/WHD/COMPONENT_WIFI6/src/whd_management.c
${CMAKE_CURRENT_LIST_DIR}/../whd-expansion/WHD/COMPONENT_WIFI6/src/whd_msgbuf_txrx.c
${CMAKE_CURRENT_LIST_DIR}/../whd-expansion/WHD/COMPONENT_WIFI6/src/whd_network_if.c
${CMAKE_CURRENT_LIST_DIR}/../whd-expansion/WHD/COMPONENT_WIFI6/src/whd_proto.c
${CMAKE_CURRENT_LIST_DIR}/../whd-expansion/WHD/COMPONENT_WIFI6/src/whd_resource_if.c
${CMAKE_CURRENT_LIST_DIR}/../whd-expansion/WHD/COMPONENT_WIFI6/src/whd_ring.c
${CMAKE_CURRENT_LIST_DIR}/../whd-expansion/WHD/COMPONENT_WIFI6/src/whd_sdpcm.c
${CMAKE_CURRENT_LIST_DIR}/../whd-expansion/WHD/COMPONENT_WIFI6/src/whd_thread.c
${CMAKE_CURRENT_LIST_DIR}/../whd-expansion/WHD/COMPONENT_WIFI6/src/whd_utils.c
${CMAKE_CURRENT_LIST_DIR}/../whd-expansion/WHD/COMPONENT_WIFI6/src/whd_wifi.c
${CMAKE_CURRENT_LIST_DIR}/../whd-expansion/WHD/COMPONENT_WIFI6/src/whd_wifi_api.c
${CMAKE_CURRENT_LIST_DIR}/../whd-expansion/WHD/COMPONENT_WIFI6/src/whd_wifi_p2p.c

${CMAKE_CURRENT_LIST_DIR}/../whd-expansion/WHD/COMPONENT_WIFI6/src/bus_protocols/whd_bus.c
${CMAKE_CURRENT_LIST_DIR}/../whd-expansion/WHD/COMPONENT_WIFI6/src/bus_protocols/whd_bus_common.c
${CMAKE_CURRENT_LIST_DIR}/../whd-expansion/WHD/COMPONENT_WIFI6/src/bus_protocols/whd_bus_sdio_protocol.c
${CMAKE_CURRENT_LIST_DIR}/../whd-expansion/WHD/COMPONENT_WIFI6/resources/resource_imp/whd_resources.c

${CMAKE_CURRENT_LIST_DIR}/../whd-expansion/External/cy_log.c
${CMAKE_CURRENT_LIST_DIR}/../whd-expansion/External/hal/COMPONENT_IMXRT/cyhal_gpio.c
${CMAKE_CURRENT_LIST_DIR}/../whd-expansion/External/hal/COMPONENT_IMXRT/whd_custom_hal_sdio.c

${CMAKE_CURRENT_LIST_DIR}/../whd-expansion/External/network/COMPONENT_LWIP/whd_network_buffer_lwip.c
${CMAKE_CURRENT_LIST_DIR}/../whd-expansion/External/network/COMPONENT_LWIP/whd_network_mw_core.c
${CMAKE_CURRENT_LIST_DIR}/../whd-expansion/External/network/COMPONENT_LWIP/whd_lwip_dhcp_server.c

${CMAKE_CURRENT_LIST_DIR}/../whd-expansion/External/rtos/COMPONENT_FREERTOS/cy_worker_thread.c
${CMAKE_CURRENT_LIST_DIR}/../whd-expansion/External/rtos/COMPONENT_FREERTOS/cyabs_rtos_freertos.c
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
${CMAKE_CURRENT_LIST_DIR}/../whd-expansion/

${CMAKE_CURRENT_LIST_DIR}/../whd-expansion/WHD/COMPONENT_WIFI6/resources/resource_imp/

${CMAKE_CURRENT_LIST_DIR}/../whd-expansion/WHD/COMPONENT_WIFI6/inc/
${CMAKE_CURRENT_LIST_DIR}/../whd-expansion/WHD/COMPONENT_WIFI6/src/
${CMAKE_CURRENT_LIST_DIR}/../whd-expansion/WHD/COMPONENT_WIFI6/src/bus_protocols/
${CMAKE_CURRENT_LIST_DIR}/../whd-expansion/WHD/COMPONENT_WIFI6/src/include/
${CMAKE_CURRENT_LIST_DIR}/../whd-expansion/External/apps/
${CMAKE_CURRENT_LIST_DIR}/../whd-expansion/External/bsp/
${CMAKE_CURRENT_LIST_DIR}/../whd-expansion/External/hal/
${CMAKE_CURRENT_LIST_DIR}/../whd-expansion/External/network/COMPONENT_LWIP/
${CMAKE_CURRENT_LIST_DIR}/../whd-expansion/External/rtos/COMPONENT_FREERTOS/
${CMAKE_CURRENT_LIST_DIR}/../whd-expansion/External/hal/COMPONENT_IMXRT/
${CMAKE_CURRENT_LIST_DIR}/../whd-expansion/External/rtos/
${CMAKE_CURRENT_LIST_DIR}/../whd-expansion/WHD/COMPONENT_WIFI6/resources/firmware/
${CMAKE_CURRENT_LIST_DIR}/../whd-expansion/WHD/COMPONENT_WIFI6/resources/clm/
${CMAKE_CURRENT_LIST_DIR}/../whd-expansion/WHD/COMPONENT_WIFI6/resources/
)

endif()
