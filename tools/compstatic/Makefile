CC := gcc
CFLAGS := -O3

SRCS = $(wildcard *.c)
OBJS = $(SRCS:%.c=%.o)

prog := compstatic

.PHONY: all clean

DEPDIR := .deps
DEPFLAGS = -MT $@ -MMD -MP -MF $(DEPDIR)/$*.d

all: $(prog)
	@:

clean:
	$(RM) -r $(DEPDIR) $(OBJS) $(prog) $(prog).exe

$(prog): $(OBJS)
	$(CC) $(LDFLAGS) -o $@ $^

$(OBJS): %.o: %.c
$(OBJS): %.o: %.c $(DEPDIR)/%.d | $(DEPDIR)
	$(CC) $(CFLAGS) $(DEPFLAGS) -c -o $@ $<
	@touch $@  # the compiler may write the .d after the .o (Apple clang); keep the .o newer

$(DEPDIR): ; @mkdir -p $@

DEPFILES := $(SRCS:%.c=$(DEPDIR)/%.d)
$(DEPFILES):

include $(wildcard $(DEPFILES))
