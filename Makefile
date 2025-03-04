CC = gcc
CFLAGS = -Wall -Wextra -std=c99 -g -O0
SRC_DIR = src
BUILD_DIR = build
SRC_FILES = $(wildcard $(SRC_DIR)/*.c)
OBJ_FILES = $(patsubst $(SRC_DIR)/%.c, $(BUILD_DIR)/%.o, $(SRC_FILES))
TARGET = $(BUILD_DIR)/clox

# Ensure build directory exists before any build targets
$(shell mkdir -p $(BUILD_DIR))

$(TARGET): $(BUILD_DIR) $(OBJ_FILES)
	$(CC) $(CFLAGS) $(OBJ_FILES) -o $(TARGET)

$(BUILD_DIR)/%.o: $(SRC_DIR)/%.c
	$(CC) $(CFLAGS) -c $< -o $@

.PHONY: run clean build

build: $(TARGET)

run: $(TARGET)
	./$(TARGET) $(filter-out $@,$(MAKECMDGOALS))

clean:
	rm -rf $(BUILD_DIR)

%:
	@: