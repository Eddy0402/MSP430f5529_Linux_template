MSP430 code template
====================

# Select project type

Checkout following tags in git:

+ asm
+ freertos
+ baremetal\_c

# Dependencies

+ MSP430Flasher: http://www.ti.com/tool/msp430-flasher
+ MSPGCC: http://www.ti.com/tool/msp430-gcc-opensource

# Configure

Modify the variable (GCC\_DIR, FLASH\_LIBDIR) in mk/toolchain.mk to path of above dependencies

# Buildsystem

Make targets:

+ all:
  - all source files under SRC folder defined in Makefile and FreeRTOS is
  compiled, linked and converted to firmware format. Header file dependencies
  is handled automatically.

+ debug
  - Starts GDB server and GDB, check tools/gdbscript for initialize script.

+ flash

+ clean
