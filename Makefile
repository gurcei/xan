all: bigsprite.d81

%.bin: %.png pngprepare
	./pngprepare gihires $< $@

oli/%.bin: oli/%.png pngprepare
	./pngprepare 80x50_32 $< $@

pngprepare: pngprepare.c
	$(CC) -I/usr/local/include -L/usr/local/lib -g -O0 -o pngprepare pngprepare.c -lpng

addpalette: addpalette.c
	$(CC) -I/usr/local/include -L/usr/local/lib -g -O0 -o addpalette addpalette.c

PNGS = $(shell ls *.png)
BINS = $(patsubst %.png,%.bin,$(PNGS))

OLIPNGS = $(shell ls oli/*.png)
OLIBINS = $(patsubst %.png,%.bin,$(OLIPNGS))

muse.dat: $(BINS) $(OLIBINS) addpalette
	rm -f bigsprite.prg
	rm -f muse.dat
	touch muse.dat
	for bin in $(BINS) ; do \
		cat $$bin >> muse.dat ; \
	done
	./addpalette
	cat oli/s00.bin >> muse.dat

oli.dat: $(OLIBINS)
	rm -f oli.dat
	touch oli.dat
	for bin in $(OLIBINS) ; do \
		if [ "$$bin" != "oli/s00.bin" ] ; then \
			cat $$bin >> oli.dat ; \
		fi \
	done

pushdat: muse.dat
	c1541 -attach "C:\Users\gurcei\AppData\Roaming\xemu-lgb\mega65\hdos\11.D81" -delete muse.dat -write muse.dat
	c1541 -attach "C:\Users\gurcei\AppData\Roaming\xemu-lgb\mega65\hdos\11.D81" -delete oli.dat -write oli.dat

getbas:
	c1541 -attach "C:\Users\gurcei\AppData\Roaming\xemu-lgb\mega65\hdos\MEGA65.D81" -read grab grab.prg
	petcat -65 -o grab.bas -- grab.prg

bigsprite.prg:
	c1541 -attach "C:\Users\gurcei\AppData\Roaming\xemu-lgb\mega65\hdos\11.D81" -read bigsprite bigsprite.prg

bigsprite.d81: muse.dat bigsprite.prg
	rm -f bigsprite.prg
	c1541 -attach "C:\Users\gurcei\AppData\Roaming\xemu-lgb\mega65\hdos\11.D81" -read bigsprite bigsprite.prg
	rm -f bigsprite.d81
	c1541 -format bigsprite,gi d81 bigsprite.d81
	c1541 -attach bigsprite.d81 -write bigsprite.prg bigsprite
	c1541 -attach bigsprite.d81 -write muse.dat -write oli.dat
	c1541 -attach bigsprite.d81 -write bigsprite.el bigsprite.el,s

clean:
	rm -f bigsprite.prg bigsprite.d81
	rm -f *.o
	rm -f *.bin
	rm -f *.dat

