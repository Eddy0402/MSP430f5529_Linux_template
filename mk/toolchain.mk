GCC_DIR =  ~/ti/gcc/bin
SUPPORT_FILE_DIRECTORY = ~/ti/gcc/include/
CC             = $(GCC_DIR)/msp430-elf-gcc
OBJCOPY        = $(GCC_DIR)/msp430-elf-objcopy
GDB            = $(GCC_DIR)/msp430-elf-gdb
GDB_SERVER     = $(GCC_DIR)/gdb_agent_console
GDB_SERVER_DAT = $(GCC_DIR)/../msp430.dat
# absolute path because of running root
FLASH_LIBDIR = /home/eddy/ti/MSP430Flasher_1.3.7
FLASH        = /home/eddy/ti/MSP430Flasher_1.3.7/MSP430Flasher

DEVICE       = msp430f5529

