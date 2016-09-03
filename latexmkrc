# $latex='platex -kanji=utf8 -synctex=1 -interaction=nonstopmode %S';
$latex='platex -kanji=euc -synctex=1 -interaction=nonstopmode %S';
# $latex='pdflatex -kanji=utf8 -synctex=1 -interaction=nonstopmode %S';
$dvipdf='dvipdfmx -f ptex-ipaex.map %S';
# $bibtex='pbibtex -kanji=utf8 %B';
$bibtex='pbibtex -kanji=euc %B';
