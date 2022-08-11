# Created by Andre Anjos <andre.anjos@idiap.ch>
# Wed 16 Jan 2013 18:00:08 CET

.PHONY : FORCE_MAKE filtered.bib clean

all:
	latexmk

%.pdf: %.tex FORCE_MAKE
	latexmk $<

filtered.bib: publications.bib
	python3 subselect.py $< $@

snsf-research-output.pdf: snsf-research-output.tex filtered.bib FORCE_MAKE
	latexmk $<

clean:
	latexmk -C
	@rm -vf $(PDFFILE)
	@rm -vf $(shell find . -name "*~") filtered.bib
