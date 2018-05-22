.. image:: https://travis-ci.org/anjos/cv.svg?branch=master
   :target: https://travis-ci.org/anjos/cv

=================================
 Curriculum Vitae of André Anjos
=================================

This package contains the source and build instructions for my CV. If you just
want to access it, use this link.


How to build from scratch
-------------------------

I advise you to install a Conda_-based environment for development with this
command line::

  $ conda env create -f build.yml

The CV is written in LaTeX using the moderncv_ package. Furthermore, we also
build separate publication lists and a short version. We use pybtex_ for
parsing a BibTeX database which is included with this package and producing
special SNSF versions of the CV.

You'll also need to install a modern LaTeX distribution together with biber_,
which is used to prepare the bibliography (my publications), for inclusion on
the CV and publication lists. See the file ``.travis.yml`` for concrete details
on how to setup.


Build
=====

To build the project and make it ready to run, do::

  $ source activate cv
  $ make

This command should leave you 3 PDFs containing the produced material.


Development
-----------

Building dependencies requires you install ``conda-build``. Do the following to
prepare::

  $ conda install -n root conda-build anaconda-client

Then, you can build dependencies one by one, in order::

  $ vi ./scripts/conda-build-all.sh #comment/uncomment what to compile
  $ ./scripts/conda-build-all.sh


Anaconda Uploads
================

To upload all built dependencies (so you don't have to re-build them
everytime), do::

  $ anaconda login
  # enter credentials
  $ anaconda upload <conda-bld>/*-64/{rust,tectonic,pybtex}-*.tar.bz2



.. Place your references after this line
.. _conda: http://conda.pydata.org/miniconda.html
.. _moderncv: https://github.com/xdanaux/moderncv
.. _biber: http://biblatex-biber.sourceforge.net
.. _pybtex: https://pybtex.org
