# Created by Andre Anjos <andre.anjos@idiap.ch>
# Wed 16 Jan 2013 18:00:08 CET

MAINFILE=cv.tex
PDFFILE=$(MAINFILE:%.tex=%.pdf)
.PHONY : FORCE_MAKE filtered.bib clean

all: $(PDFFILE)

%.pdf: %.tex FORCE_MAKE
	latexmk $<

filtered.bib: publications.bib
	pixi run filter-bib $< $@

clean:
	latexmk -C
	@rm -vf $(PDFFILE)
	@rm -vf $(shell find . -name "*~") filtered.bib
