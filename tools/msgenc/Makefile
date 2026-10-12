CXX := g++
CXXFLAGS := -std=c++17 -O2 -Wall -Wno-switch -Wno-unused-but-set-variable
CFLAGS   := -O2 -Wall -Wno-switch
LDFLAGS  :=

ifeq ($(DEBUG),)
CXXFLAGS += -DNDEBUG
endif

DEPDIR := .deps
DEPFLAGS = -MT $@ -MMD -MP -MF $(DEPDIR)/$*.d

SRCS := \
	msgenc.cpp \
	Options.cpp \
	MessagesConverter.cpp \
	MessagesDecoder.cpp \
	MessagesEncoder.cpp \
	Gmm.cpp \
	pugixml.cpp

OBJS := $(SRCS:%.cpp=%.o)

.PHONY: all clean

all: msgenc
	@:

clean:
	$(RM) -r msgenc msgenc.exe $(OBJS) $(DEPDIR)

msgenc: $(OBJS)
	$(CXX) $(LDFLAGS) -o $@ $^

%.o: %.cpp
%.o: %.cpp $(DEPDIR)/%.d | $(DEPDIR)
	$(CXX) $(CXXFLAGS) $(DEPFLAGS) -c -o $@ $<
	@touch $@  # the compiler may write the .d after the .o (Apple clang); keep the .o newer

$(DEPDIR): ; @mkdir -p $@

DEPFILES := $(SRCS:%.cpp=$(DEPDIR)/%.d)
$(DEPFILES):

include $(wildcard $(DEPFILES))
