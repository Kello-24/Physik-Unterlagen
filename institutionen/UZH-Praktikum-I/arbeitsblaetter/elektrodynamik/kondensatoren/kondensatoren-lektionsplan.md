# Lektionsplan — Kondensatoren (Elektrodynamik, Doppellektion)

Klassen: 4fh (regulär, 25.08.2026) und 4cdeg (SP4, 28.08.2026), gemeinsames Material.
Vollständig überarbeitet am 2026-08-27, nachdem Arbeitsblatt 4 und Aufgabenblatt 3
in mehreren Runden umgebaut wurden (Lernaufgabe/Plenum-Wechsel statt reiner
Partnerarbeit, neue Batterie-/Q-U-Grafiken, gestraffte Theorie-Boxen). Dieses
Dokument ersetzt die vorherige Fassung vollständig — sie beschrieb einen älteren
Aufbau (Coulombkraft-Herleitung, Sortieraufgabe vor Theorie 1 statt danach), der
im Arbeitsblatt nicht mehr existiert.

**Hinweis:** `lernziele.md` im selben Ordner ist ebenfalls noch auf dem alten
Stand (beschreibt z. B. "C zuerst definieren, dann Analogie" statt der jetzigen
Reihenfolge Messen → Plenum-Definition → Analogie) und wurde in dieser Runde
nicht mit angefasst, da nur der Lektionsplan angefragt war — bei Bedarf separat
nachziehen.

## Kernprinzip: Messen/Beobachten zuerst, Formel danach im Plenum

Die Doppellektion wechselt durchgehend zwischen zwei Dokumenten:

- **Arbeitsblatt 4** (`arbeitsblatt4-kondensatoren.tex`) — liegt bei den SuS
  auf dem Pult, wird für Theorie-Input, Plenumsdiskussionen und die
  Partnerarbeits-Herleitung zum Dielektrikum gebraucht. Bleibt während der
  ganzen Doppellektion offen.
- **Aufgabenblatt 3** (`aufgabenblatt3-kondensatoren.tex`) — liegt am
  Computerarbeitsplatz, wird für die vier Teile der PhET-/Excel-Lernaufgabe
  gebraucht (Partnerarbeit zu zweit an der Simulation).

Die SuS wechseln **vier Mal** zwischen den beiden Dokumenten hin und her. Jeder
Wechsel folgt demselben Muster: zuerst selbst messen/beobachten (Aufgabenblatt
oder Demoversuch), erst danach wird das Resultat im Plenum verglichen und die
Formel gemeinsam festgehalten (Arbeitsblatt) — nie umgekehrt. Das ist die
zentrale Reihenfolge-Entscheidung, die beide Dokumente aktuell voraussetzen:

1. **Q = C·U**: Aufgabenblatt Teil 1 (eigene Messung, offene Fragestellung) →
   erst danach Arbeitsblatt-Plenumsbox „Kondensatoren im Vergleich" (Vergleich,
   Definitionsgleichung wird notiert).
2. **C = ε₀·A/d**: Aufgabenblatt Teil 2a/2b (eigene Messung von C~A und C~1/d)
   → Arbeitsblatt-Plenumsbox „Von der Geometrie zur Kondensatorformel"
   (algebraische Herleitung aus den drei bekannten Formeln E, U, C) → zurück
   ins Aufgabenblatt, wo die Formel bei „Eure Kondensatorformel" von Hand
   eingetragen wird.
3. **U = E·d** ist dagegen bereits aus einer früheren Lektion bekannt
   (Elektrostatik) und wird im Arbeitsblatt direkt als Formel gezeigt, nicht
   mehr hergeleitet — eine Repetitionsaufgabe dafür wäre laut Sara Romers
   Feedback (`institutionen/UZH-Praktikum-I/CLAUDE.md`, „Keine Repetition als
   Herleitungsaufgabe verkaufen") reine Zeitverschwendung.
4. **Dielektrikum**: Theorie im Arbeitsblatt zeigt nur Bilder (Polarisation,
   Wassermolekül, Faraday-Käfig als Vergleich), die eigentliche Herleitung von
   C = εᵣ·ε₀·A/d passiert danach in der Partnerarbeits-Box im Arbeitsblatt
   selbst (keine Aufgabenblatt-Beteiligung mehr an dieser Stelle).

Die beiden Dokumente referenzieren sich bewusst **nur in eine Richtung**: Das
Aufgabenblatt darf auf das Arbeitsblatt verweisen (z. B. „im Plenum
hergeleitet, siehe Arbeitsblatt 4"), aber das Arbeitsblatt nennt das
Aufgabenblatt nirgends beim Namen — es spricht nur allgemein von „der
Lernaufgabe", damit es auch für sich alleine lesbar bleibt.

## Zeitplan (Doppellektion, 2×45 Min.)

| Zeit | Dokument & Abschnitt | Was die SuS tun | Was du tust |
|---|---|---|---|
| 0–4' | **Arbeitsblatt** — Box „Einstieg: Wozu ein Kondensator?" | Betrachten die Bilder (Defibrillator, Kondensatoren-Sortiment), hören zu. | Zeigst die Bilder, fragst mündlich: „Wozu braucht es das neben einer Batterie? Was könnte den Unterschied zwischen den Kondensatoren im Bild ausmachen?" (Advance Organizer, kein schriftlicher Auftrag). |
| 4–12' | **Arbeitsblatt** — Theoriebox „Der Kondensator" | Verfolgen den Aufbau (Platten, getrennte Ladung ±Q), die Formel $U=E\cdot d$ und die drei Batterie-Skizzen (nicht angeschlossen / angeschlossen / getrennt). Keine eigene Aufgabe hier. | Erklärst anhand der Skizzen: Plattenaufbau, dass $U=E\cdot d$ bereits aus der Elektrostatik bekannt ist, und was beim Anschliessen/Trennen der Batterie mit Strom und Ladung passiert (Lehrervortrag). |
| 12–22' | **Aufgabenblatt** — Intro-Box „Lernaufgabe (Partnerarbeit)" + **Teil 1** | Öffnen zu zweit die PhET-Simulation und die Excel-Datei. Du zeigst zuerst das Excel-Blatt `Teil 1 - U und Q` am Beamer; danach messen die Paare selbst: Geometrie konstant halten, $U$ in ≥5 Schritten variieren, $Q$ ablesen, Werte eintragen. Teilaufgabe (a): Zusammenhang zwischen $Q$ und $U$ **offen** beschreiben (noch keine vorgegebene Antwort). Teilaufgabe (b): eigene Kapazität mit Simulationsanzeige vergleichen. | Demonstrierst kurz Simulation + Excel-Blatt am Beamer, gehst danach herum und unterstützt die Paare beim Messen. |
| 22–28' | **Arbeitsblatt** — Groupbox „Plenum: Kondensatoren im Vergleich" | Vergleichen im Plenum zwei Kondensatoren unterschiedlicher Kapazität am neuen $Q$-$U$-Diagramm (zwei Geraden, $C_1$ steiler als $C_2$). Erklären den Unterschied und halten gemeinsam die Definitionsgleichung $C:=Q/U$ (inkl. Einheit Farad) sowie die pF/nF/µF/mF-Grössenordnungen fest. | Moderierst die Plenumsdiskussion, schreibst $C:=Q/U$ an/lässt sie eintragen, verweist auf die eigenen Messwerte aus Teil 1 als Beleg. |
| 28–36' | **Arbeitsblatt** — Theoriebox „Die Wassertankanalogie" (inkl. Sortieraufgabe + Frage) | Betrachten die Analogie-Bilder (Wasserfass, Ventil offen/zu), lösen zu zweit die Sortieraufgabe (Wassertank- ↔ Kondensator-Grössen zuordnen) und beantworten die Frage „Welche Rolle könnte ein Kondensator in einem Stromkreis spielen?". | Leitest kurz in die Analogie ein, lässt die Sortieraufgabe zu zweit lösen, sammelst am Ende ein paar Antworten zur Rollen-Frage. |
| 36–41' | **Arbeitsblatt** — Theoriebox „Kapazität und Plattengeometrie: die bekannten Bausteine" | Verfolgen die Repetition von $E=Q/(\varepsilon_0\cdot A)$ und $U=E\cdot d$ sowie die Hinweisbox zum homogenen Feld. Keine eigene Aufgabe. | Repetierst die beiden Bausteine als bereits bekannt (Elektrostatik), ohne sie zu kombinieren — das kommt erst nachher. |
| 41–51' | **Aufgabenblatt** — **Teil 2** | Wechseln zur nächsten Simulationsansicht (Kapazität wird direkt angezeigt). Messen zu zweit zuerst $C$ vs. $A$ (Excel-Blatt `Teil 2a - A und C`), dann $C$ vs. $d$ (`Teil 2b - d und C`), jeweils mit dem anderen Parameter konstant. Beschreiben die Zusammenhänge im Diagramm (noch offen, C~A bzw. C~1/d selbst erkennen). | Gehst herum, hilfst beim Blattwechsel in Excel und beim Ablesen der Werte. |
| 51–57' | **Arbeitsblatt** — Groupbox „Plenum: Von der Geometrie zur Kondensatorformel" | Kombinieren im Plenum die drei bekannten Formeln ($E$, $U=E\cdot d$, $C=Q/U$) algebraisch zur Kondensatorformel $C=\varepsilon_0\cdot A/d$, mit vollständigem Rechenweg. | Moderierst die Herleitung an der Tafel, lässt Zwischenschritte von SuS vorschlagen. |
| 57–59' | **Aufgabenblatt** — Teil 2, Marke „Eure Kondensatorformel" | Tragen die soeben hergeleitete Formel $C=\varepsilon_0\cdot A/d$ in eigener Handschrift ins Aufgabenblatt ein. | Kurzer Kontrollgang, ob alle die Formel richtig übertragen haben. |
| 59–65' | **Aufgabenblatt** — **Teil 3** | Bleiben auf demselben Simulations-Screen, laden den Kondensator wie in Teil 1, trennen ihn von der Batterie (Schalter öffnen) und verändern den Plattenabstand $d$. Begründen mit $Q=C\cdot U$, warum $Q$ konstant bleibt und $U$ sich anpasst; überprüfen die Vorhersage in der Simulation. | Erinnerst bei Bedarf an die „getrennt"-Skizze aus Theorie 1 (Arbeitsblatt) als Gedankenstütze. |
| 65–71' | **Arbeitsblatt** — Groupbox „Experiment: Kondensator und Lichtquelle" (alle nach vorne) | Kommen nach vorne, sagen anhand der Wassertankanalogie voraus, ob die Lichtquelle bei allen Kondensatoren gleich lange leuchtet, beobachten danach den Demoversuch. | Führst den Demoversuch vorne durch (Kondensatoren laden, an Lichtquelle anschliessen), holst zuerst die Vorhersagen ab (Predict-Observe-Explain). |
| 71–75' | **Aufgabenblatt** — **Teil 4** | Wechseln zum Screen „Light Bulb", laden zwei Kondensatoren unterschiedlicher Kapazität bei dergleichen Spannung, trennen sie von der Batterie und lassen sie über die Glühbirne entladen — bestätigen die Demo-Beobachtung am Computer und begründen sie zusätzlich mit $Q=C\cdot U$. | Kurze Unterstützung beim Screen-Wechsel; diese Teilaufgabe ist die erste Kürzungsoption bei Zeitdruck (siehe unten). |
| 75–83' | **Arbeitsblatt** — Theoriebox „Das Dielektrikum" + Beispielbox „Anwendung: Kapazitive Sensoren" | Betrachten die Bilder (Polarisation, Wassermolekül als Dipol, Faraday-Käfig-Vergleich, Kofferraumsensor/Touchscreen). Keine eigene Aufgabe, reine Bildbetrachtung mit mündlicher Erklärung. | Erklärst anhand der Bilder die Polarisation und den Vergleich zum bereits bekannten Faraday-Käfig (dort vollständige, hier nur teilweise Feldauslöschung), danach kurz die Alltagsbeispiele. |
| 83–92' | **Arbeitsblatt** — Groupbox „Herleitung (Partnerarbeit): Kapazität mit Dielektrikum" | Bearbeiten zu zweit die fünfteilige Herleitung: Nettoladung am Rand einzeichnen (mit Tipp-Hinweisbox), Auswirkung auf $E$, auf die freie Ladung, auf $C$, und leiten zuletzt $C=\varepsilon_r\cdot\varepsilon_0\cdot A/d$ über $\varepsilon_r:=C/C_0$ her. | Gehst herum, hilfst insbesondere bei Teilaufgabe (a) (Skizze) und (c) (Batterie-Reaktion). |

**Summe: ca. 92 Min.** — wie bei einer Doppellektion üblich, leicht über der
90-Minuten-Marke, aber innerhalb des Puffers. Kürzungsreihenfolge bei
Zeitdruck:

1. **Aufgabenblatt Teil 4** (71–75', 4 Min.) zuerst streichen — bestätigt nur,
   was der Demoversuch unmittelbar zuvor bereits gezeigt hat.
2. Falls weiterhin zu knapp: **Anwendung: Kapazitive Sensoren** (Teil von
   75–83') auf eine kurze mündliche Erwähnung ohne Bildbetrachtung im Detail
   reduzieren.

## Drei Dokumente: Arbeitsblatt, Aufgabenblatt, Zusatzaufgaben

- **`arbeitsblatt4-kondensatoren.tex`** — Lernziele, Einstieg, alle
  Theorie-Boxen, beide Plenums-Boxen, die Wassertankanalogie (inkl.
  Sortieraufgabe und Rollen-Frage), der Demoversuch und die
  Dielektrikum-Herleitung. Alles ausser der PhET-/Excel-Lernaufgabe.
- **`aufgabenblatt3-kondensatoren.tex`** — ausschliesslich die
  PhET-/Excel-Lernaufgabe (Teil 1–4), die die SuS zu zweit am Computer
  bearbeiten. Kein einleitender Erklärkasten (Konvention, siehe
  `institutionen/UZH-Praktikum-I/CLAUDE.md`) — Loris erklärt den Zusammenhang
  zum Arbeitsblatt mündlich.
- **`kondensatoren-zusatzaufgaben.tex`** — reine Übungsaufgaben für die
  Vor-/Nachbereitung (nicht für den Lektioneneinsatz), unverändert von dieser
  Überarbeitung betroffen.

## Was in dieser Überarbeitung inhaltlich neu ist (gegenüber der alten Fassung dieses Plans)

- Die Coulombkraft-Herleitung von $U=E\cdot d$ existiert nicht mehr — die
  Formel steht direkt in Theorie 1 („Der Kondensator"), da sie bereits aus
  der Elektrostatik bekannt ist.
- $C:=Q/U$ wird nicht mehr in einer einzigen Theoriebox definiert, sondern
  entsteht jetzt zweistufig: eigene Messung (Aufgabenblatt Teil 1) →
  Plenums-Vergleich zweier Kondensatoren mit neuem $Q$-$U$-Diagramm
  (Arbeitsblatt).
- Die Sortieraufgabe Wassertank/Kondensator steht jetzt **nach** der
  Kapazitäts-Definition (nicht mehr vor Theorie 1) und ist Teil derselben
  Box wie die Wassertank-Bilder und die neue Rollen-Frage.
- Neu: eine dreiteilige Batterie-Skizze (nicht angeschlossen / angeschlossen
  / getrennt) in Theorie 1, mit Strompfeilen ($+q$) und Ladungsbeschriftung
  ($+Q$/$-Q$) — bereitet Aufgabenblatt-Teil-3 (Batterie trennen) inhaltlich
  vor.
- Neu: eine zweite Plenums-Box („Von der Geometrie zur Kondensatorformel"),
  die die Aufgabenblatt-Teil-2-Formel-Herleitung übernimmt, die früher direkt
  im Aufgabenblatt stand.
- Das Dielektrikum-Theorieteil zeigt jetzt nur noch Bilder (keine erklärende
  Prosa mehr) plus einen Vergleich zum bereits bekannten Faraday-Käfig.
- Punktesumme korrigiert: Ein LaTeX-Fehler liess Fragen mit `\part`s ihre
  Punkte doppelt zählen (Klammer-Punktzahl von `\question[n]` plus Summe der
  `\part`-Punkte). Nach Korrektur: Arbeitsblatt 25 Punkte, Aufgabenblatt 18
  Punkte (vorher fälschlich 36 bzw. 34).
