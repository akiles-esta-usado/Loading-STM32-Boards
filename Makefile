# Platform IO Configuration
################################################################################

# https://docs.platformio.org/en/latest/boards/ststm32/nucleo_l476rg.html
BOARD=nucleo_l476rg

# FRAMEWORK=Arduino
# FRAMEWORK=CMSIS
# FRAMEWORK=libopencm3
# FRAMEWORK=Mbed
FRAMEWORK=stm32cube
# FRAMEWORK=Zephyr


search-boards:
	pio boards $(BOARD)

start-project:
	pio

config-show:
	pio project config

config-check:
	pio project config --lint

init:
	pio project init --board $(BOARD) --project-option framework=$(FRAMEWORK)

run:
	pio run --verbose