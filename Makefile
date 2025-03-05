CC = gcc
CFLAGS = -Wall -Wextra -std=c99 -g -O0

ifeq ($(DEBUG),1)
	CFLAGS += -DCLOX_DEBUG
else
	CFLAGS += -UDEBUG_PRINT_CODE -UDEBUG_TRACE_EXECUTION
endif

SRC_DIR = src
BUILD_DIR = build
SRC_FILES = $(wildcard $(SRC_DIR)/*.c)
OBJ_FILES = $(patsubst $(SRC_DIR)/%.c, $(BUILD_DIR)/%.o, $(SRC_FILES))
TARGET = $(BUILD_DIR)/clox


$(TARGET): $(OBJ_FILES)
	mkdir -p $(BUILD_DIR)
	$(CC) $(CFLAGS) $(OBJ_FILES) -o $(TARGET)

$(BUILD_DIR)/%.o: $(SRC_DIR)/%.c
	mkdir -p $(BUILD_DIR)
	$(CC) $(CFLAGS) -c $< -o $@

.PHONY: run clean build

build: $(TARGET)

run: $(TARGET)
	./$(TARGET) $(filter-out $@,$(MAKECMDGOALS))

clean:
	rm -rf $(BUILD_DIR)

%:
	@: