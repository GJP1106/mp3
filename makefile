.PHONY:all

all:
	make -C lcd
	make -C usb
	make -C media
	make -C app

clean:
	rm -fr app/link_obj app/dep mp3
