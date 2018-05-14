# Created by Andre Anjos <andre.anjos@idiap.ch>
# Wed 16 Jan 2013 18:00:08 CET

file=cv.tex
short=short_cv.tex
snsf_2p_cv=snsf-2p-cv.tex
snsf_publist=snsf-publist.tex

all: $(file:%.tex=%.pdf)

short: $(short:%.tex=%.pdf)

snsf-cv: $(snsf_2p_cv:%.tex=%.pdf)

snsf-publist: $(snsf_publist:%.tex=%.pdf)

%.pdf: %.tex
	pdflatex $<
	biber $(<:%.tex=%)
	pdflatex $<
	pdflatex $<

.PHONY: clean

clean:
	@rm -vf $(shell find . -name "*~")
	@rm -vf *.log *.lot *.lof *.loa *.toc *.idx *.inc *.ilg *.ind *.bbl *.blg
	@rm -vf *.aux *.glo *.dvi *.ps proposal.pdf *.out *.brf *.bcf *.run.xml
