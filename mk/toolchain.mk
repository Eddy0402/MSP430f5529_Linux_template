GCC_DIR =  ~/ti/gcc
SUPPORT_FILE_DIRECTORY = $(GCC_DIR)/include/
CC             = $(GCC_DIR)/bin/msp430-elf-gcc
OBJCOPY        = $(GCC_DIR)/bin/msp430-elf-objcopy
GDB            = $(GCC_DIR)/bin/msp430-elf-gdb
GDB_SERVER     = $(GCC_DIR)/bin/gdb_agent_console
GDB_SERVER_DAT = $(GCC_DIR)/msp430.dat

# absolute path because of running as root
FLASH_LIBDIR = /home/eddy/ti/MSP430Flasher_1.3.7
FLASH        = $(FLASH_LIBDIR)/MSP430Flasher

DEVICE       = msp430f5529

