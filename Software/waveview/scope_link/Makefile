SRC_DIR := src
OBJ_DIR := obj
BIN_DIR := bin

EXE := $(BIN_DIR)/scope
SRC := $(wildcard $(SRC_DIR)/*.cpp)
OBJ := $(SRC:$(SRC_DIR)/%.cpp=$(OBJ_DIR)/%.o)

CPPFLAGS := -Iinclude -MMD -MP -O3
CFLAGS   := -Wall
LDFLAGS  := -Llib
LDLIBS   := -lm -lftd3xx -lstdc++ -pthread

.PHONY: all clean

all: $(EXE)

debug: CPPFLAGS += -g
debug: $(EXE)

linux: CPPFLAGS += -DON_LINUX
linux: $(EXE)

linuxdebug: CPPFLAGS += -DON_LINUX
linuxdebug: debug


$(EXE): $(OBJ) | $(BIN_DIR)
	$(CC) $(LDFLAGS) $^ $(LDLIBS) -o $@

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.cpp | $(OBJ_DIR)
	$(CC) $(CPPFLAGS) $(CFLAGS) -c $< -o $@

$(BIN_DIR) $(OBJ_DIR):
	mkdir -p $@

clean:
	@$(RM) -rv $(BIN_DIR) $(OBJ_DIR)

-include $(OBJ:.o=.d)
