
%.2bpp: %.png
	rgbgfx -o $@ $<


aoc_2021_11.o: aoc_2021_11.asm digits.2bpp
	rgbasm -o $@ $<

%.gb: %.o
	rgblink -t -n $*.sym -o $@ $<
	rgbfix -v -p 0 $@
