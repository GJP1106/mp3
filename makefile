.PHONY:all clean install uninstall
export BUILD_ROOT = $(shell pwd)
export HEAD_PATH = $(BUILD_ROOT)/inc
all:
	make -C lcd
	make -C usb
	make -C media
	make -C app
	make -C math

clean:
	rm -fr app/link_obj app/dep mp3 app/*.d app/lib_obj
	rm -rf lib/*.a
install:
	cp mp3 /usr/bin
	cp lib/libmath.so lib/ext_lib/librmvb.so /usr/lib

uninstall:
	rm -rf /usr/bin/mp3
	rm -rf /usr/lib/libmath.so
	rm -rf /usr/lib/librmvb.so
