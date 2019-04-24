.PHONY:clean

SRCS = $(wildcard *.c)
OBJS = $(SRCS:.c=.o)
DEPS = $(SRCS:.c=.d)
all:$(BIN) $(OBJS) $(DEPS)
ifneq ("$(wildcard $(DEPS))","")
include $(DEPS)
endif
$(BIN):$(OBJS)
	gcc -o $@ $^ ../lcd/lcd.o ../usb/usb.o ../media/media.o
%.o:%.c
	gcc -o $@ -c $(filter %.c,$^)

%.d:%.c
	gcc -MM $^ > $@

clean:
	rm -f $(BIN) $(OBJS) $(DEPS)