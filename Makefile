# Created by Andre Anjos <andre.anjos@idiap.ch>
# Wed 16 Jan 2013 18:00:08 CET

all: cv snsf-cv snsf-publist

cv:
	pdflatex -interaction=nonstopmode -halt-on-error $(@:%=%.tex)
	biber $@
	pdflatex -interaction=nonstopmode -halt-on-error $(@:%=%.tex)
	pdflatex -interaction=nonstopmode -halt-on-error $(@:%=%.tex)

snsf-cv:
	pdflatex -interaction=nonstopmode -halt-on-error $(@:%=%.tex)
	pdflatex -interaction=nonstopmode -halt-on-error $(@:%=%.tex)

snsf-publist:
	python subselect.py publications.bib filtered.bib
	pdflatex -interaction=nonstopmode -halt-on-error $(@:%=%.tex)
	biber $@
	pdflatex -interaction=nonstopmode -halt-on-error $(@:%=%.tex)
	pdflatex -interaction=nonstopmode -halt-on-error $(@:%=%.tex)
	rm -f filtered.bib

.PHONY: clean

clean:
	@rm -vf $(shell find . -name "*~")
	@rm -vf *.log *.lot *.lof *.loa *.toc *.idx *.inc *.ilg *.ind *.bbl *.blg
	@rm -vf *.aux *.glo *.dvi *.ps proposal.pdf *.out *.brf *.bcf *.run.xml
