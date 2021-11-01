#!/bin/sh
pandoc caderno.md plenary.md oral1.md oral2.md oral3.md oral4.md oral5.md poster1.md poster2.md -o caderno.html
echo '<meta charset="UTF-8">' | cat - caderno.html > temp && mv temp caderno.html
pandoc caderno.md plenary.md oral1.md oral2.md oral3.md oral4.md oral5.md poster1.md poster2.md --latex-engine=xelatex -o caderno.pdf
qpdf --empty --pages ../capacaderno.pdf caderno.pdf -- abstractbooklet.pdf 
