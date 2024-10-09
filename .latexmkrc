@default_files = ('cv.tex',);
@generated_exts = (@generated_exts, 'synctex.gz');
$pdf_mode = 1;  # tex -> pdf
$pdflatex = 'lualatex -synctex=1 --shell-escape %O %S';
$pdf_previewer = 'open -a Skim';

# extensions we know we will generate and then need to be cleaned
push @generated_exts, 'run.xml';
push @generated_exts, 'synctex.gz';
push @generated_exts, 'synctex.gz(busy)';
push @generated_exts, 'bbl';
push @generated_exts, 'bcf';
push @generated_exts, 'snm';
push @generated_exts, 'nav';
push @generated_exts, 'bdb_latexmk';

# extensions we need to force latexmk to clean with -C
$clean_ext .= '%R.synctex(busy) %R.synctex.gz(busy) %R.bbl';
