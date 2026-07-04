#!/bin/sh
set -eu
python3 -m py_compile src/speakpdf.py
gzip -t man/speakpdf.1.gz
grep -q '^\.TH SPEAKPDF 1' man/speakpdf.1
echo OK
