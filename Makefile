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
	rubber --cache --pdf $<

.PHONY: clean mrproper

clean:
	rubber --clean --pdf $(file)
	rubber --clean --pdf $(short)
	rm -f *~ *.out

mrproper: clean
	rm -f $(file:%.tex=%.pdf) rubber.cache
