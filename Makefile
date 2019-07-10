DTC      = dtc
DTCFLAGS = -@ -I dts -O dtb
OVERLAYS = sleepi2.dtbo

all: $(OVERLAYS)

sleepi2.dtbo: sleepi2.dts

%.dtbo: %.dts
	$(DTC) $(DTCFLAGS) -o $@ $<

install: $(OVERLAYS)
	install -d $(DESTDIR)/boot/overlays
	install -m 644 $(OVERLAYS) $(DESTDIR)/boot/overlays

clean:
	rm -f *.dtbo
