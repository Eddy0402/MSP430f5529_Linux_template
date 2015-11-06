MAKDIR = mk
MAK = $(wildcard $(MAKDIR)/*.mk)
include $(MAK)

GCC_DIR =  ~/ti/gcc/bin
SUPPORT_FILE_DIRECTORY = ~/ti/gcc/include/
CC           = $(GCC_DIR)/msp430-elf-gcc
OBJCOPY      = $(GCC_DIR)/msp430-elf-objcopy
GDB          = $(GCC_DIR)/msp430-elf-gdb
# absolute path because of running root
FLASH_LIBDIR = /home/eddy/ti/MSP430Flasher_1.3.7
FLASH        = /home/eddy/ti/MSP430Flasher_1.3.7/MSP430Flasher

DEVICE       = msp430f5529

ELFOUT=$(DEVICE).out
FIRMWARE=$(DEVICE).hex

INCLUDE_DIR += \
			   include
OBJECTS += \
		   main.o

INCLUDES = $(addprefix -I,$(INCLUDE_DIR))

CFLAGS = -I $(SUPPORT_FILE_DIRECTORY) $(INCLUDES) -mmcu=$(DEVICE) -O2 -g
LFLAGS = -L $(SUPPORT_FILE_DIRECTORY) -T $(DEVICE).ld

all: $(FIRMWARE)

$(FIRMWARE): $(ELFOUT)
	$(OBJCOPY) -Oihex $? $@

$(ELFOUT): ${OBJECTS}
	$(CC) $(CFLAGS) $(LFLAGS) $? -o $@

debug: all
	$(GDB) $(DEVICE)

flash:
	LD_LIBRARY_PATH=$(FLASH_LIBDIR) $(FLASH) -w $(FIRMWARE) -v -g -z [VCC]
	LD_LIBRARY_PATH=$(FLASH_LIBDIR) $(FLASH) -r [Firmware Output.txt,MAIN]

clean:
	rm -rf $(OBJECTS) $(FIRMWARE) $(ELFOUT)
