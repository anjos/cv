@default_files = ('cv.tex', 'snsf-cv.tex', 'snsf-research-output.tex', 'snsf-achievements.tex', 'euraxess-cv.tex', 'fapesp-cv.tex', 'snsf-sinergia-cv.tex', 'snsf-sinergia-achievements.tex', 'biosketch.tex');
@generated_exts = (@generated_exts, 'synctex.gz');
$pdf_mode = 1;  # tex -> pdf
$pdflatex = 'lualatex -synctex=1 --shell-escape %O %S';
$pdf_previewer = 'open -a Skim';
$clean_ext = 'synctex.gz synctex.gz(busy) run.xml bbl bcf fdb_latexmk run';
