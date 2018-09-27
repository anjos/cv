# Created by Andre Anjos <andre.anjos@idiap.ch>
# Wed 16 Jan 2013 18:00:08 CET

MAINFILE=cv.tex snsf-cv.tex snsf-publist.tex
PDFFILE=$(MAINFILE:%.tex=%.pdf)

.PHONY : FORCE_MAKE filtered.bib clean

all: $(PDFFILE)

%.pdf: %.tex FORCE_MAKE
	latexmk -pdflatex=lualatex -pdf $<

filtered.bib: publications.bib
	python3 subselect.py $< $@

snsf-publist.pdf: snsf-publist.tex filtered.bib FORCE_MAKE
	latexmk -pdflatex=lualatex -pdf $<

clean:
	@rm -vf $(shell find . -name "*~") filtered.bib
	@rm -vf *.log *.lot *.lof *.loa *.toc *.idx *.inc *.ilg *.ind *.bbl *.blg
	@rm -vf *.aux *.glo *.out *.brf *.fls *.fdb_latexmk *.run.xml *.bcf $(PDFFILE)
