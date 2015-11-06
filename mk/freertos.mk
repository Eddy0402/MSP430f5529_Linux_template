FREERTOS_DIR = ./FreeRTOSV8.2.3/FreeRTOS/Source

INCLUDE_DIR += \
		  $(FREERTOS_DIR)/include \
		  $(FREERTOS_DIR)/portable/GCC/MSP430F5529 \


OBJECTS += \
		  $(FREERTOS_DIR)/croutine.o \
		  $(FREERTOS_DIR)/event_groups.o \
		  $(FREERTOS_DIR)/list.o \
		  $(FREERTOS_DIR)/queue.o \
		  $(FREERTOS_DIR)/tasks.o \
		  $(FREERTOS_DIR)/timers.o \
		  $(FREERTOS_DIR)/portable/MemMang/heap_1.o \
		  $(FREERTOS_DIR)/portable/GCC/MSP430F5529/port.o \





