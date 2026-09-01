# Fragenkatalog & Theorie-Notizen: Gewichtskraft & Federkraft

UZH Praktikum I — Sara Romer Urban, Kantonsschule im Lee, HS2026
Klasse: 2e (26.08.2026)

Lehrpersonen-Vorbereitung zur Doppellektion. Enthält zwei Teile: (A) die
vollständigen Theorie-Notizen inklusive der Punkte, die im Arbeitsblatt
selbst bewusst gekürzt wurden (das Arbeitsblatt wird den SuS ausgeteilt und
bleibt deshalb minimalistisch), und (B) mögliche Impulsfragen pro Phase der
Lektion, analog zu `kondensatoren-fragenkatalog.md`.

Auslöser: Feedback von Sara Romer nach Durchsicht des ersten Entwurfs. Zeit
könnte knapp werden (2e ist bezüglich Diskussionsbeteiligung schwer
einzuschätzen), und der Mechanismus der Astronauten-Trägheitswaage ist für
die SuS unklar, da sie das Federpendel noch nicht kennen. Das
Hammer-und-Feder-Beispiel (Apollo 15) wurde daraufhin zunächst nur beim
Luftwiderstand-Vergleich gekürzt, anschliessend aber ganz aus dem
Arbeitsblatt entfernt: Luftwiderstand spielt bei diesem Effekt eine Rolle
und gehört nicht zum Thema dieser Doppellektion.

## Teil A — Theorie-Notizen für die Lektion

### Gewichtskraft (Theorie 1)

- Masse $m$ = Trägheit eines Körpers, ortsunabhängig, ändert sich nie.
- Gewichtskraft $F_G = m \cdot g$ (Einheit N) — die Kraft, mit der ein
  Himmelskörper eine Masse anzieht.
- Ortsfaktor $g$: Erde $\SI{9.81}{m/s^2}$, Mond $\SI{1.62}{m/s^2}$ — Faktor
  rund 6 zwischen den beiden.

### Federkraft-Konzept (Theorie 2)

- Kräftegleichgewicht: Die Feder dehnt sich, bis $F = F_G$ gilt; die
  Dehnung an diesem Punkt zeigt die Kraft an.
- Längenänderung $\Delta x$ (nicht die absolute Federlänge $x$) ist
  massgebend — wichtig bei einer bereits vorgespannten Feder.
- Kalibrierung: bekannte Gewichtskräfte (z. B. 100-g-Schokoladentafeln, je
  rund 1 N) an eine unbeschriftete Feder hängen, Dehnung markieren, daraus
  entsteht eine Newton-Skala.
- **Vollständiges Rechenbeispiel, im Arbeitsblatt nur noch als ein Satz
  ohne Rechnung:** $F_G = \SI{0.1}{kg} \cdot \SI{9.81}{m/s^2} \approx
  \SI{1}{N}$ für eine 100-g-Tafel. Bei Bedarf im Plenum vorrechnen.
- $F = D \cdot \Delta x$ (Hookesches Gesetz) und die Federkonstante $D$
  selbst werden bewusst **nicht** im Arbeitsblatt vorweggenommen — die SuS
  leiten beides im Aufgabenblatt aus eigenen Messdaten her. Auch die
  Lernziele-Box ist deshalb absichtlich kompetenzorientiert statt
  ergebnisoffen formuliert.

### Bewusst aus dem Arbeitsblatt entfernte Inhalte

Diese beiden Themen sind vollständig aus dem Arbeitsblatt gestrichen, nicht
nur gekürzt. Beide können bei Interesse rein mündlich erwähnt werden, sind
aber kein Bestandteil der Lektion mehr:

1. **Hammer-und-Feder-Beispiel auf dem Mond** (Apollo 15, Commander David
   Scott, 1971). Ursprünglich als Beispiel dafür gedacht, dass die
   Fallbeschleunigung $a=g$ unabhängig von der Masse ist (aus $F=m\cdot a$
   und $F_G=m\cdot a=m\cdot g$): Die grössere Gewichtskraft eines Hammers
   wird durch seine ebenfalls grössere Trägheit exakt kompensiert, deshalb
   fallen Hammer und Feder auf dem Mond gleichzeitig. Vollständig
   gestrichen, weil der Effekt nur unter Ausschluss von Luftwiderstand
   korrekt erklärbar ist, ein Konzept, das nicht zum Thema dieser
   Doppellektion gehört (auf der Erde bremst der Luftwiderstand die
   leichte, grossflächige Feder viel stärker als den kompakten Hammer).
2. **Astronauten-Trägheitswaage (Federpendel-Mechanismus).** Auf der ISS
   lässt ein Gerät die Astronaut:innen auf einem federnden Sitz kurz
   hin- und herschwingen; je grösser die Masse, desto langsamer schwingt
   das System, und aus der Schwingungsdauer lässt sich die Masse
   bestimmen — ganz ohne Gewichtskraft. Die SuS kennen das Federpendel
   noch nicht (Thema erst in einer späteren Schwingungs-Einheit), deshalb
   wurde auch die einfache Version der Teilfrage (nur "Trägheit" als
   erwartete Antwort, ohne Mechanismus) ganz aus dem Arbeitsblatt entfernt.
   Den Mechanismus nur mündlich erwähnen, wenn eine neugierige Frage kommt.
   Keine Herleitung verlangen. Bildmaterial:
   `Bilder/astronauten_waage.png` (Prinzipskizze: Sitz bekannter Masse
   $m_{\text{Sitz}}$ auf einer Feder der Härte $D$).

### Hinweis zur Zeitplanung

Sara Romer weist darauf hin, dass die Zeit knapp werden kann, da bei
Klasse 2e nie sicher ist, wie viel die SuS mitreden werden. Die
Verlaufsplanung (`gewichtskraft-federkraft-verlaufsplanung.tex`) enthält
bereits eine Kürzungsreihenfolge (zuerst Ausblick, danach
Einheitenumrechnung, nie die Lernaufgabe). Die beiden oben entfernten
Punkte (Luftwiderstand, Astronauten-Waage) sind jetzt ohnehin kürzer als
zuvor — das entlastet den Zeitplan zusätzlich, unabhängig von der
Diskussionsbeteiligung der Klasse.

## Teil B — Fragenkatalog (Impulsfragen pro Phase)

### Wiederholung

**Frage:** Was bedeutet es, wenn ein Wagen bei gleicher Kraft schneller
beschleunigt als ein anderer?
**Antwort:** Der schnellere Wagen hat eine kleinere Masse (weniger
Trägheit).
**Erklärung:** Knüpft an $F\sim a$ aus der letzten Stunde an und bereitet
den Trägheitsbegriff für die heutige Lektion vor.

### Übung: Fussballschuss

**Frage:** Warum tut ein harter Schuss mit blossem Fuss mehr weh als ein
sanfter?
**Antwort:** Weil die Kraft, die Fuss und Ball gegenseitig aufeinander
ausüben, bei kürzerer Kontaktzeit und grösserer Geschwindigkeitsänderung
viel grösser ist.
**Erklärung:** Reine Anwendung von $F=m\cdot a$, motiviert die anschliessende
Rechnung mit konkreten Zahlen.

### Aktivierung 1: Steinstoss

**Frage:** Würde es auf einem noch kleineren Himmelskörper als dem Mond
(z. B. einem Asteroiden) auch gleich weh tun?
**Antwort:** Ja, genauso, solange derselbe Stein mit derselben
Aufprallgeschwindigkeit verwendet wird.
**Erklärung:** Verstärkt, dass die Trägheit unabhängig vom Ort ist — der
Ortsfaktor spielt für den Aufprallschmerz keine Rolle.

### Aktivierung 2: Golfball auf dem Mond

**Frage:** Was würde passieren, wenn der Golfball auf einem Planeten mit
noch grösserem Ortsfaktor als die Erde geschlagen würde?
**Antwort:** Er würde weniger weit fliegen als auf der Erde.
**Erklärung:** Testet das Verständnis der Gewichtskraft-Ortsfaktor-Beziehung
in die entgegengesetzte Richtung zum eigentlichen Beispiel.

### Theorie 1: Gewichtskraft

**Frage:** Wenn ich auf der Erde 700 N wiege, wie viel wiege ich ungefähr
auf dem Mond, ohne zu rechnen?
**Antwort:** Ungefähr ein Sechstel, also rund 116 N.
**Erklärung:** Kopfrechnen zur Verinnerlichung des Faktors 6, bevor die
Astronautin-Aufgabe die exakte Rechnung verlangt.

### Theorie 2: Federkraft-Konzept

**Frage:** Warum zeigt eine Feder ohne angehängte Masse eigentlich "0 N"
und nicht irgendeinen anderen Wert?
**Antwort:** Weil der Nullpunkt beim Kalibrieren extra auf die ungespannte
(oder bereits leicht vorgespannte) Lage gesetzt wird.
**Erklärung:** Verstärkt die $\Delta x$-vs-$x$-Unterscheidung aus der
Hinweisbox.

### Übung: Wiegen im Weltraum

**Frage:** Wie messen Astronaut:innen ihre Masse wirklich, wenn ein
Federkraftmesser nicht funktioniert?
**Antwort:** Über die Trägheit: Ein Gerät lässt sie auf einem federnden
Sitz kurz hin- und herschwingen; je grösser die Masse, desto langsamer
schwingt das System, und aus der Schwingungsdauer lässt sich die Masse
berechnen.
**Erklärung:** Diese Erklärung wurde aus dem Arbeitsblatt entfernt, da die
SuS das Federpendel und Schwingungen allgemein noch nicht kennen (Feedback
von Sara Romer) — nur mündlich erwähnen, die ausführliche Herleitung folgt
erst in der späteren Schwingungs-Einheit.

### Übung: Einheitenumrechnung

**Frage:** Warum wird die Federkonstante im Laden oft in N/cm angegeben
statt in der SI-Einheit N/m?
**Antwort:** Weil die typischen Auslenkungen einer Feder im Alltag eher im
Zentimeterbereich liegen und die Zahlenwerte in N/cm dadurch handlicher
sind.
**Erklärung:** Verbindet die Alltagspraxis mit der SI-Konvention, die die
SuS in der Aufgabe anwenden müssen.
