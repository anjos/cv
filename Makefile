# Created by Andre Anjos <andre.anjos@idiap.ch>
# Wed 16 Jan 2013 18:00:08 CET

MAINFILE=cv.tex snsf-cv.tex snsf-research-output.tex snsf-achievements.tex euraxess-cv.tex fapesp-cv.tex snsf-sinergia-cv.tex snsf-sinergia-achievements.tex biosketch.tex
PDFFILE=$(MAINFILE:%.tex=%.pdf)

.PHONY : FORCE_MAKE filtered.bib clean

all: $(PDFFILE)

%.pdf: %.tex FORCE_MAKE
	latexmk $<

filtered.bib: publications.bib
	python3 subselect.py $< $@

snsf-research-output.pdf: snsf-research-output.tex filtered.bib FORCE_MAKE
	latexmk $<

clean:
	latexmk -C $(MAINFILE)
	@rm -vf $(PDFFILE)
	@rm -vf $(shell find . -name "*~") filtered.bib
