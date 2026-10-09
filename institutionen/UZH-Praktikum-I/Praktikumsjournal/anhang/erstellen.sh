#!/bin/bash
# Erzeugt die PDF-Auszüge für den Anhang des Praktikumsjournals neu.
#
# Die Arbeitsblätter werden als Schülerversion (ohne Lösungen) kompiliert,
# ohne die Quelldateien zu verändern: \noprintanswers wird nur beim
# Kompilieren gesetzt. Folien und Socrative-Auswertung werden kopiert.
# PDFs sind per .gitignore nicht in Git; nach einem frischen Klonen deshalb
# dieses Skript einmal ausführen (Git Bash):  bash anhang/erstellen.sh

set -e
ANHANG="$(cd "$(dirname "$0")" && pwd)"
BASIS="$ANHANG/../.."
TMP="$(mktemp -d)"

while read -r ordner datei name; do
  [ -z "$ordner" ] && continue
  ( cd "$BASIS/$ordner"
    for lauf in 1 2; do
      pdflatex -interaction=nonstopmode -output-directory="$TMP" \
        -jobname="$name" "\\AtBeginDocument{\\noprintanswers}\\input{$datei}" \
        > /dev/null
    done )
  cp "$TMP/$name.pdf" "$ANHANG/$name.pdf"
  echo "erstellt: $name.pdf"
done <<'LISTE'
arbeitsblaetter/elektrizitaet/ladung-e-feld arbeitsblatt1-ladung-e-feld.tex anh-ladung-ab1
arbeitsblaetter/elektrodynamik/kondensatoren aufgabenblatt3-kondensatoren.tex anh-kondensatoren-aufgb3
arbeitsblaetter/elektrodynamik/kondensatoren arbeitsblatt4-kondensatoren.tex anh-kondensatoren-ab4
arbeitsblaetter/elektrodynamik/lorentzkraft-teil-1 arbeitsblatt6-lorentzkraft-teil1.tex anh-lorentzkraft-ab6
arbeitsblaetter/elektrodynamik/lorentzkraft-teil-2 fadenstrahlrohr-lorentzkraft-teil1.tex anh-fadenstrahlrohr
arbeitsblaetter/elektrizitaet/schaltungen arbeitsblatt4-schaltungen.tex anh-schaltungen-ab4
arbeitsblaetter/elektrizitaet/u-i-r arbeitsblatt3-u-i-r.tex anh-uir-ab3
arbeitsblaetter/elektrizitaet/u-i-r gruppenpuzzle3-u-i-r.tex anh-gruppenpuzzle-uir
arbeitsblaetter/mechanik/kraefte/kraefte-addieren-zerlegen arbeitsblatt3-kraefte-addieren-zerlegen.tex anh-kraefte-ab3
arbeitsblaetter/mechanik/kraefte/wechselwirkung arbeitsblatt5-wechselwirkung.tex anh-wechselwirkung-ab5
LISTE

cp "$BASIS/folien/elektrizitaet/schaltungen/einstieg-stromkreise-folien.pdf" \
   "$ANHANG/anh-folien-schaltungen.pdf"
cp "$ANHANG/../Socrative/Socrative Resultate + Fragen.pdf" \
   "$ANHANG/anh-socrative-kapazitaet.pdf"
# Übersicht der Resultate: Namen sind im Export ausgeblendet («Show Names» aus)
cp "$ANHANG/../Socrative/Socrative Resultate.pdf" \
   "$ANHANG/anh-socrative-resultate.pdf"
echo "erstellt: anh-folien-schaltungen.pdf, anh-socrative-kapazitaet.pdf, anh-socrative-resultate.pdf"
rm -rf "$TMP"
