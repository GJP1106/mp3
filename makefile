.PHONY:all
export BUILD_ROOT = $(shell pwd)
export HEAD_PATH = $(BUILD_ROOT)/inc
all:
	make -C lcd
	make -C usb
	make -C media
	make -C app

clean:
	rm -fr app/link_obj app/dep mp3 app/*.d
