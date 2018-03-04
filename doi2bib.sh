#!/bin/sh

echo >> tex.bib
curl -s "http://api.crossref.org/works/$1/transform/application/x-bibtex" >> tex.bib
echo >> tex.bib

sed -i 's/_//g' tex.bib
sed -i '/doi =/d' tex.bib
sed -i '/url =/d' tex.bib
tail tex.bib -n 20
