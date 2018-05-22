#!/usr/bin/env python
# -*- coding: utf-8 -*-

# Subselects a type of publication and re-writes a bib file preserving the
# order found on the original file

import os
import sys
import datetime


# Fix strings output by pybtex which are somehow 'interpreted'
FIX_STRINGS = [
    ('\\\\', '\\'),
    ('\\textasciitilde ', '~'),
    ('\_', '_'),
    ]

def main():

  if len(sys.argv) != 3:
    print('Filters BibTeX file preserving order and limiting to last 5 years')
    print('usage: %s <original-bib> <output-bib>' % \
        os.path.basename(sys.argv[0]))
    print('example: %s publications.bib filtered.bib')
    sys.exit(1)

  original = sys.argv[1]
  minyear = datetime.date.today().year - 5
  output = sys.argv[2]

  from pybtex.database import parse_file, BibliographyData

  bib_data = parse_file(original)

  filtered = BibliographyData()

  for key in bib_data.entries:
    entry = bib_data.entries[key]
    year = int(entry.fields['year'])
    if year > minyear:
      print('Selecting @%s[%s] from %s' % (entry.type, key, year))
      filtered.entries[key] = entry

  print('Saving to %s...' % output)
  s = filtered.to_string('bibtex')
  for f, t in FIX_STRINGS: s = s = s.replace(f, t)
  with open(output, 'wt') as f: f.write(s)

if __name__ == '__main__':
  main()
