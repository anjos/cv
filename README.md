This is my CV (Andre Anjos). To compile it you will need to have installed the
following packages:

* LaTeX
* The moderncv style (normally distributed with LaTeX)
* Rubber (a LaTeX compiler)
* GNU Make

To build the CV, do the following:

```sh
$ make
```

To cleanup the build:

```sh
$ make clean
```

Upload the CV to your website:

scp cv.pdf andreanjos@andreanjos.org:andreanjos.org/public/static/cv/cv.pdf
