CC65=	/usr/local/bin/cc65
CL65=	/usr/local/bin/cl65
COPTS=	-t c64 -O -Or -Oi -Os --cpu 6502
LOPTS=	-C gidemo.cfg

all: bigsprite.d81

run:
	#open -a /Applications/Vice/x64.app/Contents/MacOS/x64 gidemo.d64
	#/Applications/Vice/x64.app/Contents/MacOS/x64 -reu -reusize 16384 -reuimage data.reu  -moncommands commands.txt gidemo.d64 &
	cmd /c "start c:/Users/gurcei/Downloads/GTK3VICE-3.3-win32-r35872/x64.exe --reuimage data.reu gidemo.d64"

%.bin: %.png pngprepare
	./pngprepare gihires $< $@

pngprepare: pngprepare.c
	$(CC) -I/usr/local/include -L/usr/local/lib -g -O0 -o pngprepare pngprepare.c -lpng

PNGS = m1_01.png \
			 m1_02.png \
			 m1_03.png \
			 m1_04.png \
			 m1_05.png \
			 m1_06.png \
			 m2_01.png \
			 m2_02.png \
			 m2_03.png \
			 m2_04.png \
			 m2_05.png \
			 m2_06.png


BINS = $(patsubst %.png,%.bin,$(PNGS))

muse.dat: $(BINS)
	rm -f muse.dat
	touch muse.dat
	for bin in $(BINS) ; do \
		cat $$bin >> muse.dat ; \
	done


# --------------------------------------------------

gidemo.prg gidemo.lbl: data.reu $(ASSFILES) gidemo.cfg
	$(CL65) $(COPTS) $(LOPTS) -vm -l gidemo.list -m gidemo.map -Ln gidemo.lbl -o gidemo.prg $(ASSFILES)

gidemo.d64: gidemo.prg
	rm -f gidemo.d64
	cbmconvert -v2 -D4o gidemo.d64 gidemo.prg

clean:
	rm -f gidemo.map
	rm -f gidemo.prg
	rm -f main.s main.o
	rm -f gidemo.list
	rm -f gidemo.d64
	rm -f asciih ascii.h ascii8x8.bin
	rm -f data.reu
	rm -f *.bin *.bin.bmp_meta *.bin.segs_meta

