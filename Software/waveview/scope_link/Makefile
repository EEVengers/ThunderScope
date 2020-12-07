SRC_DIR := src
OBJ_DIR := obj
BIN_DIR := bin
LOG_DIR := log

EXE := $(BIN_DIR)/scope
SRC := $(wildcard $(SRC_DIR)/*.cpp)
OBJ := $(SRC:$(SRC_DIR)/%.cpp=$(OBJ_DIR)/%.o)

CPPFLAGS := -Iinclude -MMD -MP -O3 -g
CPPOPT   := -fopt-info-loop-optimized
CPPMISS  := -fopt-info-vec-missed
CFLAGS   := -Wall
LDFLAGS  := -Llib
LDLIBS   := -lm -lftd3xx -lstdc++ -pthread

.PHONY: all clean

all: $(EXE)

debug: CPPFLAGS += -g
debug: $(EXE)

$(EXE): $(OBJ) | $(BIN_DIR)
	$(CC) $(LDFLAGS) $^ $(LDLIBS) -o $@

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.cpp | $(LOG_DIR) $(OBJ_DIR)
	$(CC) $(CPPFLAGS) $(CPPOPT)=$(LOG_DIR)/$(<F).opt $(CFLAGS) -c $< -o $@
	$(CC) $(CPPFLAGS) $(CPPMISS)=$(LOG_DIR)/$(<F).miss $(CFLAGS) -c $< -o $@

$(BIN_DIR) $(OBJ_DIR) $(LOG_DIR):
	mkdir -p $@

clean:
	@$(RM) -rv $(BIN_DIR) $(OBJ_DIR) $(LOG_DIR)

-include $(OBJ:.o=.d)
