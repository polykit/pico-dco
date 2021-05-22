cmake_minimum_required(VERSION 3.13)

include(pico_sdk_import.cmake)

project(pico-dco C CXX ASM)
set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 17)

pico_sdk_init()

add_executable(pico-dco
  pico-dco.c
  usb_descriptors.c
)

pico_generate_pio_header(pico-dco ${CMAKE_CURRENT_LIST_DIR}/pico-dco.pio)

pico_enable_stdio_usb(pico-dco 0)
pico_enable_stdio_uart(pico-dco 1)

target_include_directories(pico-dco PRIVATE ${CMAKE_CURRENT_LIST_DIR})
target_link_libraries(pico-dco PRIVATE pico_stdlib hardware_pio hardware_adc hardware_pwm tinyusb_device tinyusb_board)

target_compile_definitions(pico-dco PRIVATE
    PICO_DEFAULT_UART_TX_PIN=0
    PICO_DEFAULT_UART_RX_PIN=1
 )

pico_add_extra_outputs(pico-dco)
