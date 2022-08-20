all: bigsprite.d81

%.bin: %.png pngprepare
	./pngprepare gihires $< $@

pngprepare: pngprepare.c
	$(CC) -I/usr/local/include -L/usr/local/lib -g -O0 -o pngprepare pngprepare.c -lpng

PNGS = `*.png`

BINS = $(patsubst %.png,%.bin,$(PNGS))

muse.dat: $(BINS)
	rm -f bigsprite.prg
	rm -f muse.dat
	touch muse.dat
	for bin in $(BINS) ; do \
		cat $$bin >> muse.dat ; \
	done


# --------------------------------------------------

bigsprite.prg:
	c1541 -attach "C:\Users\gurcei\AppData\Roaming\xemu-lgb\mega65\hdos\11.D81" -read bigsprite bigsprite.prg

bigsprite.d81: muse.dat bigsprite.prg
	rm -f bigsprite.d81
	c1541 -format bigsprite,gi d81 bigsprite.d81
	c1541 -write bigsprite.prg bigsprite
	c1541 -write muse.dat
	c1541 -write bigsprite.el,s

clean:
	rm -f bigsprite.prg
	rm -f *.o
	rm -f *.bin
	rm -f *.dat

