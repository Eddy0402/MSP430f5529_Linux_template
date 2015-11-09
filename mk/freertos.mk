FREERTOS_DIR = FreeRTOSV8.2.3/FreeRTOS/Source

INCLUDE_DIR += \
		  $(FREERTOS_DIR)/include \
		  $(FREERTOS_DIR)/portable/GCC/MSP430F5529 \


SRC += \
		  $(FREERTOS_DIR)/croutine.c \
		  $(FREERTOS_DIR)/event_groups.c \
		  $(FREERTOS_DIR)/list.c \
		  $(FREERTOS_DIR)/queue.c \
		  $(FREERTOS_DIR)/tasks.c \
		  $(FREERTOS_DIR)/timers.c \
		  $(FREERTOS_DIR)/portable/MemMang/heap_1.c \
		  $(FREERTOS_DIR)/portable/GCC/MSP430F5529/port.c \





