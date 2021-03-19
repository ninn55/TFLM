CC = gcc
CXX = g++

SRC_DIRS = .
BUILD_DIR = $(SRC_DIRS)/build

MKDIR = mkdir -p

SRCS = $(shell find $(SRC_DIRS) -name *.cc) $(shell find $(SRC_DIRS) -name *.c)

$(SRCS) := $(addprefix $(SRC_DIRS)/, $(SRCS))

OBJS = $(patsubst %.cc,%.o,$(patsubst %.c,%.o,$(SRCS)))

OBJS := $(addprefix $(BUILD_DIR)/, $(OBJS))

INC=\
-I$(SRC_DIRS) \
-I$(SRC_DIRS)/third_party/gemmlowp \
-I$(SRC_DIRS)/third_party/flatbuffers/include \
-I$(SRC_DIRS)/third_party/ruy

CXXFLAGS = $(INC) -O3 -DNDEBUG --std=c++11 -g -DTF_LITE_STATIC_MEMORY

CCFLAGS = $(INC) -O3 -DNDEBUG --std=c99 -g

LDFLAGS = -lm

TARGET_EXEC = hello_world

.PHONY: 
	clean

all: $(BUILD_DIR)/$(TARGET_EXEC)

$(BUILD_DIR):
	$(MKDIR) $@

$(BUILD_DIR)/%.o: %.c $(BUILD_DIR)
	$(MKDIR) $(dir $@)
	$(CC) $(CCFLAGS) -c $< -o $@

$(BUILD_DIR)/%.o: %.cc $(BUILD_DIR)
	$(MKDIR) $(dir $@)
	$(CXX) $(CXXFLAGS) -c $< -o $@

$(BUILD_DIR)/$(TARGET_EXEC) : $(OBJS) $(BUILD_DIR)
	$(CXX) $(LDFLAGS) $(OBJS) -o $@

clean:
	rm -rf $(BUILD_DIR)