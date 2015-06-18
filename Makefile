# Created by Andre Anjos <andre.anjos@idiap.ch>
# Wed 16 Jan 2013 18:00:08 CET

file=cv.tex
short=short_cv.tex

all: $(file:%.tex=%.pdf)

short: $(short:%.tex=%.pdf)

%.pdf: %.tex
	rubber --cache --pdf $<

.PHONY: clean mrproper

clean:
	rubber --clean --pdf $(file)
	rm -f *~ *.out

mrproper: clean
	rm -f $(file:%.tex=%.pdf) rubber.cache
