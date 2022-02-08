.. image:: https://github.com/anjos/cv/actions/workflows/deploy.yml/badge.svg
   :target: https://github.com/anjos/cv/actions/workflows/deploy.yml

=================================
 Curriculum Vitae of André Anjos
=================================

This package contains the source and build instructions for my CV. If you just
want to access it, use this link.  My CV and publication lists are
auto-deployed to github-pages at https://anjos.ai/cv/


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
the CV and publication lists. See the file `.github/workflows/deploy.yml`_ for
concrete details on how to setup.


Build
=====

To build the project and make it ready to run, do::

  $ source activate cv
  $ make

This command should leave you 3 PDFs containing the produced material.


.. Place your references after this line
.. _conda: http://conda.pydata.org/miniconda.html
.. _moderncv: https://github.com/xdanaux/moderncv
.. _biber: http://biblatex-biber.sourceforge.net
.. _pybtex: https://pybtex.org
