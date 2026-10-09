# latexmk-Konfiguration für das Praktikumsjournal
# pdflatex als Engine, biber für biblatex (latexmk erkennt biber automatisch
# und startet es nur, wenn sich Zitate oder literatur.bib geändert haben).
$pdf_mode = 1;
$pdflatex = 'pdflatex -interaction=nonstopmode -synctex=1 -file-line-error %O %S';
$bibtex_use = 2;   # .bbl als Zwischendatei behandeln und bei Bedarf neu erzeugen
