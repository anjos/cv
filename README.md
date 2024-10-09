[![build](https://github.com/anjos/cv/actions/workflows/deploy.yml/badge.svg)](https://github.com/anjos/cv/actions/workflows/deploy.yml)

# Curriculum Vitae of André Anjos

This package contains the source and build instructions for my CV. If you just want to
access it, use this link.  My CV and publication lists are auto-deployed to github-pages
at https://anjos.ai/cv/


## How to build from scratch

You need a full installation of LaTeX including the binaries `lualatex` and `biber`
(used via bibLaTeX) to compile these documents. On a macOS system, you can have a fully
equipped system by using homebrew and installing the `mactex` distribution:

```sh
$ brew install --cask mactex
```

You may then use `TexShop`, the built-in GUI for editing LaTeX files. If you'd
like to use the command-line to compile your sources, ensure to setup your
PATH, e.g.:

```sh
$ export PATH=/Library/TeX/texbin:$PATH
```


## Build

To compile the LaTeX sources, run `make`:

```sh
$ make
```
