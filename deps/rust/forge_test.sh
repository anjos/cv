#!/bin/bash -e -x

## TODO: remove the following `unset` lines, once the following issue in `conda-build` is resolved:
##       <https://github.com/conda/conda-build/issues/2255>

unset REQUESTS_CA_BUNDLE
unset SSL_CERT_FILE

rustc --help
rustdoc --help
cargo --help

if [ -n "${LD}" ]; then
  ln -s "${LD}" $(dirname "${LD}")/ld
fi

if [ -n "${CC}" ]; then
  ln -s "${CC}" $(dirname "${LD}")/cc
fi

cargo install xsv
