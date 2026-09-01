# Lernziele — Kondensatoren (Elektrodynamik, Doppellektion)

Klassen: 4fh (regulär, 25.08.2026) und 4cdeg (SP4, 28.08.2026), gemeinsames Material.
Quelle: Besprechung mit Sara Romer Urban (siehe `kondensatoren-notizen-sara-romer.txt`
im selben Ordner), ergänzt durch `Vorwissen/Elektrostatik/` (Coulombkraft, E-Feld,
Potential/Spannung) und die Referenzquellen direkt in diesem Ordner (LEIFIphysik,
Physik Libre 12.11, HSHL Lerninhalte Kondensator).

## Abgrenzung

Diese Doppellektion behandelt den Plattenkondensator als Bauteil: wozu er dient
(Ladungs-/Energiespeicher), die Kapazität C als Proportionalitätsfaktor zwischen
Ladung Q und Spannung U (Kondensatorformel Q = C·U), die geometrische Abhängigkeit
der Kapazität (C = ε₀·A/d, experimentell/simulationsgestützt hergeleitet) und das
Dielektrikum (C = εᵣ·ε₀·A/d, qualitativ begründet).

**Reihenfolge- und Methodenentscheidungen (nach Absprache mit Loris, siehe
`kondensatoren-lektionsplan.md` im selben Ordner für den vollständigen
Lektionsablauf mit Methodenzuordnung):**
- Die Kapazität wird **zuerst formal definiert** (C = Q/U, Einheit Farad),
  **erst danach** wird die Wassertank-Analogie zur Veranschaulichung
  eingeführt — nicht umgekehrt, damit C als eigenständig definierte Grösse
  erscheint und nicht als etwas, das "aus der Analogie folgt".
- Sowohl Q = C·U als auch die Kondensatorformel C = ε₀·A/d werden **nicht** im
  Theorie-Teil vorgetragen. Der Theorie-Teil repetiert nur die bereits
  bekannten Bausteine (E = Q/(ε₀·A), U = E·d), kombiniert sie aber bewusst
  nicht. Beide Formeln leiten die Lernenden selbst in der
  PhET-Lernaufgabe her (aus eigenen Messdaten plus diesen Bausteinen) und
  notieren sie dort in einem eigens dafür vorgesehenen Kasten.

**Bereits bekannt (Vorwissen, nicht neu herzuleiten, nur zu repetieren):**
Ladung Q, Coulombkraft, elektrische Feldstärke E (Punktladung, Dipol, Einzelplatte),
insbesondere **E im Plattenkondensator ist zwischen den Platten konstant**
(E = Q/(ε₀·A), aus `Vorwissen/Elektrostatik/Arbeitsblatt2-Das elektrische
Feld-Teil2.pdf`), elektrisches Potential φ = Epot/Q und Spannung U = Δφ = W/Q
(aus `Arbeitsblatt3-Die elektrische Spannung.pdf`). Diese Grössen werden in der
Lektion aktiv repetiert, nicht neu eingeführt. Die Homogenität von E wird nur
noch passiv in einer Hinweisbox in Theorie 2 festgehalten (kein eigenes
Repetitions-Exercise mehr dafür). U = E·d wird dagegen aktiv repetiert,
indem die Lernenden es selbst aus der Coulombkraft F = E·q und der
mechanischen Arbeit W = F·s herleiten (unter Rückgriff auf das ebenfalls
bereits bekannte U = Δφ = W/Q) — diese Herleitung trägt bewusst **keine
LZ-Nummer**: Sie ist eine Anwendung von Vorwissen (Mechanik/Elektrostatik-
Analogie), keine neue Erkenntnis über Kondensatoren; die Formel U = E·d
selbst wird danach als bekannter Baustein für die Kondensatorformel
weiterverwendet.

**Nicht Teil dieser Einheit:** Reihen-/Parallelschaltung von Kondensatoren,
quantitative Berechnung der im Kondensator gespeicherten Energie (E = C·U²/2) —
beides wird hier bewusst nicht verlangt, auch wenn die Referenzquellen es
erwähnen. Die rechnerische Herleitung des Zusammenhangs Strom↔Spannung über
Integral/Ableitung (wie im HSHL-Dokument `Kondensator – Lerninhalte und
Abschlussarbeiten.pdf`) ist Hochschulstoff und für diese Doppellektion nicht
relevant — dieses Dokument nur für die Wassereimer-Analogie und die qualitative
Beschreibung nutzen, nicht für die Infinitesimalrechnung darin.

## Essentielle Fragen

1. Wozu braucht man einen Kondensator, wenn es doch schon Batterien gibt?
2. Was hat ein Wassertank mit einem Kondensator gemeinsam — und wo hört die
   Analogie auf?
3. Wovon hängt ab, wie viel Ladung ein Kondensator bei gegebener Spannung
   speichern kann?
4. Warum steigt die Kapazität, wenn man ein Material zwischen die Platten bringt?

## Operationalisierte Lernziele

Nur Ziele, die genuin neuen Lernstoff zur **Kapazität** darstellen — reine
Vorwissen-Repetition (Elektrostatik/Mechanik) ist bewusst **nicht** als LZ
gezählt, auch wenn ihr eine Aktivität im Arbeitsblatt gewidmet ist (siehe
Abschnitt "Bereits bekannt" oben für diese beiden Aktivitäten).

- LZ1: die Kapazität C = Q/U als definierende Grösse eines Kondensators nennen
  (Einheit Farad), **bevor** eine Analogie zur Veranschaulichung herangezogen
  wird.
- LZ2: erklären, was ein Kondensator ist und wozu er in einer Schaltung gebraucht
  wird (Ladungs-/Energiespeicher), gestützt auf die Wassertank-Analogie als
  Veranschaulichung der bereits (LZ1) definierten Kapazität.
- LZ3: aus eigenen Messdaten (PhET-Simulation "Capacitor Lab: Basics") **selbst**
  den linearen Zusammenhang zwischen Q und U bei konstanter Geometrie grafisch
  bestimmen und die Kapazität als Steigung der Trendlinie ablesen (experimentelle
  Bestätigung der Definition aus LZ1, nicht Wiederholung einer vorgetragenen
  Formel).
- LZ4: aus eigenen PhET-Messdaten (C ~ A bei d = const., C ~ 1/d bei A = const.)
  **und** den bekannten Formeln E = Q/(ε₀·A), U = E·d **selbst algebraisch zur
  Kondensatorformel C = ε₀·A/d kombinieren** und notieren — nicht vorgetragen
  bekommen.
- LZ5: für einen von der Spannungsquelle getrennten (isolierten) Kondensator mit
  $Q=C\cdot U$ begründen, dass die Ladung $Q$ konstant bleibt, wenn sich
  anschliessend die Geometrie ändert, und dass sich stattdessen die Spannung
  $U$ entsprechend anpasst.
- LZ6: erklären, was ein Dielektrikum ist, und begründen, weshalb es die
  Kapazität eines Kondensators erhöht (C = εᵣ·ε₀·A/d).

## Voraussehbare Lernschwierigkeiten (Distraktor-Grundlage für Aufgaben)

1. Verwechslung von Ladung Q und Kapazität C: C wird oft fälschlich als "wie viel
   gespeichert ist" verstanden, statt als Speichervermögen bei gegebener Spannung.
2. Annahme, eine grössere Kapazität bedeute automatisch mehr gespeicherte Ladung —
   unabhängig von U. Tatsächlich hängt Q von beiden Grössen ab (Q = C·U).
3. Vorstellung, das Dielektrikum leite Strom zwischen den Platten (Kurzschluss).
   Tatsächlich bleibt es Isolator; es polarisiert sich nur im Feld.
4. Vorstellung, das E-Feld falle zwischen den Platten zum Rand hin ab (wie bei
   einer Punktladung). Tatsächlich ist es zwischen den Platten näherungsweise
   homogen (Randeffekte werden vernachlässigt) — direkt anschliessend an die
   bereits bekannte Formel E = Q/(ε₀·A).
5. Verwechslung "der Kondensator speichert Ladung" mit "der Kondensator hat eine
   Nettoladung ungleich null". Tatsächlich trägt eine Platte +Q, die andere −Q;
   gespeichert wird die getrennte Ladung, die Gesamtladung bleibt neutral.
6. Verwechslung des Formelzeichens $C$ für die Kapazität mit der Einheit
   Coulomb (ebenfalls mit C abgekürzt), in der die Ladung $Q$ gemessen wird.
   Beide sind unabhängig voneinander: Die Kapazität wird in Farad angegeben.

## Beispielkontexte / Aufgabenideen

- **LZ1** — die formale Definition C = Q/U wird direkt nach der Kondensator-
  Bauweise (Platten, getrennte Ladung +Q/−Q) eingeführt, noch **vor** jeder
  Analogie (siehe Abgrenzung, Reihenfolge-Entscheidung).
- **LZ2** (Einleitung) — Wassertank-/Wassereimer-Analogie, **im Anschluss an**
  die LZ1-Definition: Kapazität C ↔ Grundfläche A des Eimers, Spannung U ↔
  Füllstand h, Ladung Q ↔ Wassermenge im Eimer (Q_max = C·U_max ↔ V_max =
  A·h_max). Quelle: Physik Libre 12.11.16 ("Mechanische Analogie zu einem
  Kondensator", Wasserrohr mit Gummi-Membran) und HSHL-Dokument
  (Wassereimer-Analogie, ausführlicher). Direkt im Anschluss:
  Sortieraufgabe/Zuordnungsaufgabe, bei der Aspekte des Wassertanks den
  entsprechenden Kondensator-Grössen zugeordnet werden (Sara Romers Vorgabe).
- **LZ2** (Alltagsbezug) — Blitzgerät eines Fotoapparats bzw. Defibrillator: kurz
  sehr viel Leistung abgeben, im Gegensatz zur Batterie (Physik Libre 12.11.17).
- **LZ1, LZ3** — Experiment (Demo): Kondensatoren unterschiedlicher Kapazität
  werden an einer Spannungsquelle aufgeladen, dann von dieser getrennt und an
  eine Lichtquelle angeschlossen — je nach Kapazität leuchtet sie unterschiedlich
  lange (Sara Romers Vorgabe).
- **LZ3** — Lernaufgabe mit PhET-Simulation "Capacitor Lab: Basics"
  (https://phet.colorado.edu/de/simulations/capacitor-lab-basics): bei
  konstanter Geometrie Q als Funktion von U messen, Messwerte in die
  vorbereitete Excel-Vorlage (`kondensatoren-phet-messvorlage.xlsx`, selbes
  Verzeichnis) eintragen, Trendlinie einfügen — Q = C·U **entsteht hier aus
  den eigenen Daten**, nicht aus einer vorher vorgetragenen Formel. Kapazität
  als Steigung ablesen (Sara Romers Vorgabe).
- **LZ4** — Fortsetzung derselben Simulation: A bzw. d variieren (jeweils das
  andere konstant halten), C vs. A bzw. C vs. d ins Diagramm eintragen,
  Trendlinie plotten (Excel-Vorlage nutzt für C-vs-d eine native
  Potenz-Trendlinie), Zusammenhang C ~ A und C ~ 1/d herleiten. **Anschliessend
  in derselben Lernaufgabe:** mit den bereits bekannten Formeln E = Q/(ε₀·A)
  und U = E·d algebraisch zur Kondensatorformel C = ε₀·A/d kombinieren und in
  einem eigens vorgesehenen Kasten notieren — dieser Kombinationsschritt
  gehört zur Lernaufgabe, nicht in den Theorie-Teil davor. Numerische
  Beispieldaten verfügbar in `Kapazität des Plattenkondensators _
  LEIFIphysik.pdf` (Teilversuche 1 und 2), als Vorlage für die
  Aufgabenblatt-Übungen nutzbar.
- **LZ5** — Fortsetzung der PhET-Lernaufgabe: den Kondensator von der Batterie
  trennen (Schalter in der Simulation öffnen) und anschliessend den
  Plattenabstand $d$ verändern. Da keine Ladung mehr zu- oder abfliessen
  kann, bleibt $Q$ konstant; über $Q=C\cdot U$ begründen die Lernenden, dass
  sich stattdessen $U$ anpasst, und überprüfen dies in der Simulation.
  Vertieft direkt die Unterscheidung von Q und C aus Lernschwierigkeit 1/2.
- **LZ6** — Dielektrikum-Demo: Metallplatte bzw. Dielektrikum zwischen die
  Platten eines aufgeladenen (von der Quelle getrennten) Kondensators bringen,
  Spannungsabfall am Elektroskop beobachten (`Füllungen im Plattenkondensator _
  LEIFIphysik.pdf`).

**Repetiertes Vorwissen (keine eigene LZ-Nummer, siehe "Bereits bekannt"
oben):**

- Herleitung (Partnerarbeit), direkt im Anschluss an Theorie 1 und die
  Sortieraufgabe Wassertank/Kondensator: Ausgehend von $F=E\cdot q$
  (Coulombkraft auf eine Testladung im homogenen Feld) verschieben die
  Lernenden die Ladung gedanklich um den Plattenabstand $d$, berechnen mit
  $W=F\cdot s$ die dafür nötige Arbeit, und kombinieren das Ergebnis mit dem
  bereits bekannten $U=\Delta\varphi=W/Q$ zu $U=E\cdot d$ — dieselbe Formel,
  die Theorie 2 danach als Baustein für die Kondensatorformel weiterverwendet.
  Reine Anwendung von Vorwissen (Mechanik + Elektrostatik), keine neue
  Erkenntnis über Kondensatoren.
