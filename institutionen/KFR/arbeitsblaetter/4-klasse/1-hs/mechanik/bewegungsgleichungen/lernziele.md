# Lernziele — Bewegungsgleichungen

Quelle: BackwardDesign_Bewegungsgleichungen.docx (Stufe 1). Für den didaktik-alignment-reviewer — nicht von Hand nachbearbeiten, bei inhaltlichen Änderungen stattdessen das Backward-Design-Dokument aktualisieren und diese Datei neu exportieren.

## Abgrenzung
Die drei Bewegungsgleichungen für gleichmässig beschleunigte Bewegung (x(t), v(t), v²=v0²+2aΔx), die x-t-Parabel, Formelwahl, Mehrkörper-Treffpunktprobleme. Baut direkt auf der Beschleunigung-Einheit auf (dort wurde v=v0+at bereits numerisch verwendet und der Weg bereits über eine Rechteck+Dreieck-Flächenzerlegung berechnet) und auf der v-t-Diagramm-Einheit (dort bereits ein Überholmanöver-Treffpunktproblem mit konstanter Geschwindigkeit gelöst).
**Nicht Teil dieser Einheit:** Freier Fall (eigenes, direkt folgendes Stoffplan-Thema mit a=g als Spezialfall), zusammengesetzte Bewegungen/Waagrechter Wurf (2D, später), Kräfte/Newtonsche Gesetze (später).

## Essentielle Fragen
1. Warum ist der Graph von x(t) bei konstanter Beschleunigung eine Parabel, obwohl die Bewegung geradlinig ist?
2. Muss man die Ortsformel auswendig lernen, oder lässt sie sich herleiten?
3. Wie entscheidet man, welche der drei Formeln für eine gegebene Aufgabe die richtige ist?
4. Was bedeutet es, zwei Bewegungsgleichungen gleichzusetzen?

## Operationalisierte Lernziele
- LZ1: die Ortsgleichung x(t)=x0+v0(t−t0)+½a(t−t0)² als Verallgemeinerung der bereits bekannten Rechteck+Dreieck-Flächenberechnung herleiten.
- LZ2: zu einer gegebenen Bewegungssituation die passende der drei Bewegungsgleichungen auswählen.
- LZ3: x0, v0 und a mit dem korrekten Vorzeichen relativ zu einem selbst gewählten Koordinatensystem einsetzen, auch bei einer verzögerten Bewegung.
- LZ4: aus gegebenen Grössen die gesuchte Grösse (Ort, Geschwindigkeit oder Zeit) berechnen, inklusive Auflösen einer quadratischen Gleichung nach t und Verwerfen der unphysikalischen Lösung.
- LZ5: erklären, weshalb die x-t-Kurve einer gleichmässig beschleunigten Bewegung eine Parabel ist, obwohl die Bewegung selbst geradlinig verläuft.
- LZ6: das bekannte Überholmanöver-Szenario (konstante Geschwindigkeiten) auf eine Situation mit einer beschleunigten Bewegung erweitern: für zwei Objekte je eine Bewegungsgleichung im selben Koordinatensystem aufstellen und Zeitpunkt sowie Ort eines Treffens berechnen.
- LZ7: zu einer gegebenen x(t)- oder v(t)-Gleichung das jeweils andere Diagramm qualitativ skizzieren.

## Voraussehbare Lernschwierigkeiten (Distraktor-Grundlage für Aufgaben)
1. Graph-als-Bild-Fehler bei der x-t-Parabel: die Kurve wird mit der (tatsächlich geradlinigen) Bahn verwechselt. (McDermott, Rosenquist & van Zee, 1987)
2. Vorzeichenfehler bei x0, v0, a — v. a. bei Verzögerung, wenn a fälschlich als negativ eingesetzt wird, nur weil der Körper langsamer wird, unabhängig vom gewählten Koordinatensystem. (Schecker & Wilhelm, S. 66f.)
3. Stillschweigende Annahme x0=0 bzw. v0=0, auch wenn die Aufgabe andere Werte vorgibt. (Reif & Allen, 1992)
4. Unsicherheit, welche der drei Formeln zu verwenden ist (fehlendes strategisches Wissen, welche Grösse gesucht/gegeben ist). (Reif & Allen, 1992)
5. Bei Treffpunktaufgaben: beide Bewegungen werden nicht im selben Bezugssystem/Zeitursprung behandelt (z. B. wird ein Zeitversatz beim späteren Start ignoriert). (Barzasi, Lektion 5, Radfahrer-Prüfungsaufgabe)
6. Die mathematisch zweite Lösung der quadratischen Gleichung (z. B. eine negative Zeit) wird nicht als unphysikalisch erkannt und verworfen. (allgemeine Mathematik-Physik-Übergangsschwierigkeit, nicht in den vorliegenden Quellen spezifisch belegt)

## Beispielkontexte / Aufgabenideen (aus Stufe 2+3 des Backward-Design-Dokuments)
Bereits im Unterricht erprobte bzw. geplante Formate — als Vorlage für Aufgabenkontexte verwenden, statt generische Beispiele neu zu erfinden. Diese Einheit baut ausserdem direkt auf konkreten Inhalten auf, die im Beschleunigung- und v-t-Diagramm-Arbeitsblatt bereits existieren (siehe `../beschleunigung/` und `../v-t-diagramm/`):

- **LZ1** — die Herleitung der Ortsformel sollte direkt an die Rechteck+Dreieck-Flächenberechnung aus `beschleunigung-arbeitsblatt.tex` (Aufgabe mit dem v-t-Diagramm, Fläche als Rechteck + zwei Dreiecke) anknüpfen — nicht neu erfinden, sondern als "das kennst du schon, jetzt als Formel" einführen.
- **LZ2, LZ3** — E-Trottinett bremst gleichmässig ab (Kontext bereits als Bild `beschleunigung/Bilder/` vorhanden): welche Formel passt, welches Vorzeichen hat a? Distraktor: a positiv, weil "es noch fährt".
- **LZ4** — Erweiterung desselben E-Trottinett-Szenarios mit konkreten Zahlenwerten; Berechnung inkl. quadratischer Gleichung, Diskussion der unphysikalischen zweiten Lösung.
- **LZ5** — mehrere x-t-Parabeln neben kurzen Bewegungsbeschreibungen kontrastieren; ein Distraktor deutet die Parabel als reale Flugbahn.
- **LZ6, LZ7** — Erweiterung des Überholmanöver-Szenarios aus `v-t-diagramm-arbeitsblatt.tex` (Frage 469, Autobahn-Überholmanöver) um eine Beschleunigungsphase: Bewegungsgleichungen aufstellen, Treffpunkt berechnen, zugehöriges v-t-Diagramm skizzieren.

## Hinweis für Prüfungsaufgaben
Prüfung/Klausur ist bewusst nicht Teil des Backward-Design-Dokuments; kein Prüfungsbausteine-Dokument existiert bisher für dieses Thema (nur auf Anfrage erstellt).
