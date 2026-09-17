# Anleitung: Gruppenpuzzle-Dokument "Lorentzkraft Teil 2" erstellen

Dieses Dokument ist die inhaltliche Grundlage, um in VS Code das Dokument
`gruppenpuzzle_lorentzkraft.tex` (Ordner
`institutionen/UZH-Praktikum-I/arbeitsblaetter/elektrodynamik/lorentzkraft-teil-2/`)
zu erstellen. Es beschreibt zu jedem der fünf Themen den Inhalt, das
vorhandene Bild-/Literatur-/Simulationsmaterial und die Kontrollfrage der
Expertenphase, sowie die gemeinsamen Aufgaben der Vertiefungsphase.

**Bezug:** direkte Fortsetzung von `lorentzkraft-teil2-lektionsplan.tex`
und `lernziele.md` im selben Ordner (dort LZ5/LZ6, Abschnitt "Gruppenpuzzle
Erarbeitung"/"Gruppenpuzzle Vermittlung"). Baustil, Boxen-Umgebungen
(`theoriebox`, `taskbox`, `groupbox`, `answerbox`, `\Bild`-Makro,
`\Kopfzeile`, Sie-Form) analog zu `gruppenpuzzle3-u-i-r.tex`
(`elektrizitaet/u-i-r/`) übernehmen.

## Rahmenbedingungen

- **Klassengrösse:** 15 Schülerinnen und Schüler (Klassen 4fh + 4cdeg,
  gemeinsames Material).
- **Fünf Themen** (nicht sechs, siehe Begründung unten): Massenspektrograph
  (Bainbridge, inkl. Geschwindigkeitsfilter/Wien-Filter als erste Stufe),
  Kreisbeschleuniger (Zyklotron & Synchrotron gemeinsam), MHD-Antrieb,
  Polarlichter, Hall-Effekt.
- **Gruppengrösse:** 3 Stammgruppen à 5 Personen (ein Mitglied pro Thema),
  danach 5 Expertengruppen à 3 Personen (ein Mitglied pro Stammgruppe) —
  einzige Aufteilung, die bei 15 Personen und 5 Themen sauber aufgeht
  (Stammgruppengrösse = Anzahl Themen, Expertengruppengrösse = Anzahl
  Stammgruppen).
- **Massenspektrograph und Wien-Filter sind EIN gemeinsames Thema**, kein
  eigenständiges Wien-Filter-Thema mehr: Der reale Bainbridge-Aufbau
  (auch in der vorhandenen Simulation) enthält den Geschwindigkeitsfilter
  ohnehin als erste Stufe, bevor die Massentrennung im zweiten Magnetfeld
  erfolgt. Beide getrennt zu behandeln hätte zu Doppelspurigkeiten
  geführt; als ein Thema mit zwei Stufen ergibt sich ein realistischeres
  und in sich geschlossenes Bild des Geräts. Zyklotron und Synchrotron
  bleiben ebenfalls als ein gemeinsames Thema zusammengelegt, weil beide
  dasselbe Grundprinzip (Kreisbeschleuniger im Magnetfeld) mit einer
  technischen Variante zeigen.
- **Hall-Effekt ist neu dazugekommen** als fünftes Thema, mit der
  medizinischen Anwendung der Blutfluss-Geschwindigkeitsmessung als
  Aufhänger — passend, weil er im gemeinsamen Grundprinzip eine dritte,
  bisher nicht abgedeckte Spielart zeigt (siehe unten) und in Aufgabe 1
  gezielt dem Massenspektrograph-Thema gegenübergestellt werden kann.
- **Linearbeschleuniger ist bewusst KEIN eigenes Thema**, da er ohne
  Magnetfeld arbeitet (nur beschleunigendes E-Feld, keine Krümmung der
  Bahn) und damit nicht zum gemeinsamen Grundprinzip der fünf Themen passt.
  Er wird stattdessen als Kontrastfrage in der Vertiefungsphase verwendet
  (siehe Aufgabe 3 unten).
- **Gemeinsames Grundprinzip aller fünf Themen** (in der Sicherungsphase
  herauszuarbeiten, LZ6): Die Lorentzkraft $F=qvB$ tritt in drei Rollen
  auf, angewandt auf je ein anderes Gerät oder Phänomen: als
  **Zentripetalkraft**, die eine Kreis- oder Spiralbahn erzeugt
  (Massenspektrograph-Stufe 2, Kreisbeschleuniger, Polarlichter); als Teil
  eines **Kräftegleichgewichts bei Ladungstrennung**, bei dem ein
  elektrisches Feld die Lorentzkraft gerade kompensiert und so eine
  Spannung bzw. eine feste Geschwindigkeit entsteht ($qE=qvB$: Wien-Filter-
  Stufe des Massenspektrographen zum Auswählen von $v_0$; $qE_H=qvB$:
  Hall-Effekt zum Messen von unbekanntem $v$ über $U_H$); oder als
  **direkte Antriebskraft** ohne Kräftegleichgewicht, ausgedrückt über den
  Strom statt über einzelne Ladungen ($F=BIL$: MHD-Antrieb).

## Vorausgesetztes Vorwissen — nicht nochmals erklären

Das Gruppenpuzzle findet **nach** dem Fadenstrahlrohr-Experiment statt,
und zwar nach BEIDEN Fadenstrahlrohr-Durchgängen: dem qualitativen aus
Teil 1 (`lorentzkraft-teil-1/lernziele.md`, LZ6) und dem quantitativen zu
Beginn von Teil 2 selbst (Einstieg, POE, Vertiefung $e/m_e$, Übung,
Theorie Schraubenbahn — siehe `lorentzkraft-teil2-lektionsplan.tex`,
Abschnitt 2). Beim Schreiben der fünf Themenabschnitte gilt deshalb:
**zitieren statt herleiten.** Konkret bereits bekannt und in den
Themenboxen nur noch anzuwenden, nicht neu herzuleiten:

- $F=qvB$ (Lorentzkraft auf eine einzelne bewegte Ladung, Teil 1) und
  $F=IlB$ (magnetische Kraft auf einen Leiter, Teil 1) — beide Namen
  bewusst unterschieden.
- Die Drei-Finger-Regel zur Richtungsbestimmung, inkl. der
  linke-Hand-Variante für negative Ladungsträger (Teil 1, LZ5/LZ6) — wird
  in den Themenboxen nur noch bei Bedarf referenziert, nicht neu erklärt.
- Dass die Lorentzkraft als Zentripetalkraft eine Kreisbahn erzeugt, weil
  sie stets senkrecht zu $v$ steht (Teil 1, LZ6, am Fadenstrahlrohr
  qualitativ gezeigt) — **diese Frage darf in keiner Themenbox nochmals
  als neue Erkenntnis behandelt werden.**
- Der Bahnradius $r=\frac{mv}{qB}$, hergeleitet aus
  $qvB=\frac{mv^2}{r}$ (Teil 2, Einstieg/POE, LZ1) — in den Themenboxen
  nur noch als bekannte Formel zitieren und auf die neue Situation
  anwenden, die Herleitung selbst **nicht wiederholen**.
- Die $e/m_e$-Bestimmung nach Thomson (Teil 2, LZ2), insbesondere der
  Baustein $r=mv/qB$ — die zweite Stufe des Massenspektrographen
  (Massentrennung im Magnetfeld) nutzt exakt dieselbe Formel, nur nach $m$
  statt nach $e/m_e$ aufgelöst und mit einer aus dem Wien-Filter bekannten
  Geschwindigkeit $v_0$ statt einer über $U$ berechneten. Nicht als eigener
  Inhalt nochmals vorzurechnen, nur mit vertauschten Rollen (Masse statt
  Ladungsverhältnis) neu anwenden. Neu (nicht am Fadenstrahlrohr behandelt)
  ist dagegen das Kräftegleichgewicht bei gekreuzten Feldern
  ($qE=qvB$/$qE_H=qvB$), das sowohl beim Wien-Filter (Stufe 1 des
  Massenspektrographen) als auch beim Hall-Effekt eine zentrale, in der
  jeweiligen Themenbox tatsächlich neu einzuführende Idee ist.
- Die Schraubenbahn ($v_\parallel$ bleibt unbeeinflusst, $v_\perp$ erzeugt
  die Kreisbewegung, Teil 2, LZ4) — wird beim Thema Polarlichter
  vorausgesetzt und nur noch auf konvergierende Feldlinien angewendet.
- Das **Polarlicht wurde bereits einmal erwähnt**: als
  Advance-Organizer-Beispiel ganz zu Beginn von Teil 1
  (`lorentzkraft-teil-1/lernziele.md`, Bild/Beispiel 2) und nochmals als
  Rückverweis im Advance Organizer vor dem Gruppenpuzzle
  (`lorentzkraft-teil2-lektionsplan.tex`, Abschnitt 2.1). Beide Male aber
  nur als kurzer, qualitativer Teaser ("Teilchen werden auf spiralförmige
  Bahnen zu den Polen abgelenkt"), ohne Erklärung des Mechanismus. Die
  Themenbox Polarlichter darf diesen Teaser deshalb explizit aufgreifen
  ("Sie kennen dieses Beispiel schon aus Teil 1 — jetzt schauen wir uns
  an, wieso das genau so passiert"), muss aber inhaltlich darüber
  hinausgehen (Spiegeleffekt, Van-Allen-Gürtel, Auroraloval), sonst wäre
  sie eine reine Wiederholung ohne Erkenntnisgewinn.

## Themen der Expertengruppen

### 1. Massenspektrograph (Bainbridge)

**Inhalt:** Der Bainbridge-Massenspektrograph bestimmt die Masse $m$
geladener Ionen (bekannte Ladung $q$) in zwei Stufen. **Stufe 1 —
Geschwindigkeitsfilter (Wien-Filter):** Die Ionen durchqueren zunächst ein
Gebiet mit gekreuzten $E$- und $B_1$-Feldern (beide senkrecht zueinander
und senkrecht zur Bewegungsrichtung $v$). Die bereits bekannte Lorentzkraft
$qvB_1$ wirkt hier einer elektrischen Kraft $qE$ \emph{gleichzeitig und
entgegengesetzt} entgegen; neu ist dieses Kräftegleichgewicht selbst. Nur
Ionen mit genau der Geschwindigkeit $v_0=E/B_1$, bei der sich beide Kräfte
exakt aufheben ($qE=qv_0B_1$), fliegen geradeaus durch die Lochblende —
schnellere oder langsamere Ionen werden abgelenkt und damit ausgefiltert.
Alle den Filter verlassenden Ionen haben also exakt dieselbe, aus $E$ und
$B_1$ bekannte Geschwindigkeit $v_0$, unabhängig von ihrer Masse. **Stufe
2 — Massentrennung im Magnetfeld:** Diese geschwindigkeitsselektierten
Ionen treten anschliessend in ein zweites, reines Magnetfeld $B_2$ ein, wo
wieder die bereits bekannte Formel $r=\frac{mv_0}{qB_2}$ gilt (nicht neu
herleiten). Schwerere Ionen laufen auf grösserem Radius und treffen weiter
vom Eintrittspunkt entfernt auf den Schirm auf; aus dem gemessenen Abstand
lässt sich bei bekanntem $v_0$, $B_2$, $q$ die Masse $m$ bestimmen —
historisch die Methode, mit der Isotope (Atome desselben Elements mit
unterschiedlicher Masse) entdeckt und getrennt wurden. Ohne die
Geschwindigkeitsfilter-Stufe wäre die Massentrennung ungenau, weil $r$
sowohl von $m$ als auch von $v$ abhängt — erst ein für alle Ionen
identisches $v_0$ macht $r$ zu einem eindeutigen Mass für $m$.

**Material:**
- Bilder: `Bilder/wien-filter.pdf` (Skizze Stufe 1: $+$/$-$-Platten für
  $E$, Kreuze für $B_1$, drei Flugbahnen für $v>v_0$, $v=v_0$, $v<v_0$,
  Lochblende), `Bilder/mass-spectrograph.pdf` (Skizze Stufe 2: Ionen,
  Magnetfeld $B_2$, Halbkreisbahnen unterschiedlichen Radius, Schirm mit
  $d_1$/$d_2$)
- Literatur: `Literatur/WIENscher Geschwindigkeitsfilter _ LEIFIphysik.pdf`,
  `Literatur/Elektronen im Geschwindigkeitsfilter _ LEIFIphysik.pdf`
- Simulationen: [Bainbridge-Massenspektrometer](https://www.leifiphysik.de/elektrizitaetslehre/bewegte-ladungen-feldern/versuche/bainbridge-massenspektrometer)
  (zeigt den vollständigen Aufbau, beide Stufen), ergänzend
  [Wienscher Geschwindigkeitsfilter](https://www.leifiphysik.de/elektrizitaetslehre/bewegte-ladungen-feldern/downloads/wienscher-geschwindigkeitsfilter-grundwissen-simulation)
  für Stufe 1 im Detail

**Kontrollfrage (Expertenphase):** Wozu braucht der Bainbridge-
Massenspektrograph den Geschwindigkeitsfilter (Stufe 1) überhaupt, wenn
für die eigentliche Massenbestimmung in Stufe 2 ohnehin nur $r=mv/qB_2$
verwendet wird? Was ginge schief, wenn die Ionen mit unterschiedlichen
Geschwindigkeiten in Stufe 2 einträten?

### 2. Kreisbeschleuniger: Zyklotron und Synchrotron

**Inhalt:** Beim **Zyklotron** befindet sich das Teilchen in einem
homogenen Magnetfeld zwischen zwei D-förmigen Hohlelektroden ("Dees") mit
einer Wechselspannung dazwischen. Bei jedem Durchqueren des Spalts wird es
durch das $E$-Feld beschleunigt, innerhalb der Dees läuft es feldfrei im
Kreis — hier gilt wieder die bereits bekannte Formel $r=mv/qB$ (nicht neu
herleiten), nur wächst jetzt $v$ mit jeder Beschleunigung, also wächst
auch $r$ mit: Es entsteht eine Spiralbahn mit wachsendem Radius statt
eines einzelnen Kreises. Neu (nicht aus dem Fadenstrahlrohr bekannt) ist
die Umlauffrequenz $f=\frac{qB}{2\pi m}$: Sie ist (nicht-relativistisch)
geschwindigkeitsunabhängig, weshalb eine konstante Wechselspannungs-
Frequenz genügt. Bei sehr hohen Energien versagt dieses Prinzip
(relativistische Massenzunahme, immer grösserer Radius). Das
**Synchrotron** löst das, indem $B$ synchron mit der wachsenden Energie
erhöht wird, sodass der Radius konstant bleibt: Die Teilchen laufen auf
einem festen Ring, werden an mehreren Beschleunigungskavitäten
nachbeschleunigt und von Ablenkmagneten auf der Kreisbahn gehalten.
Bekanntestes Beispiel: der LHC am CERN. Ein reales, nahes Beispiel ist das
Zyklotron am Paul-Scherrer-Institut (PSI) in Villigen.

**Material:**
- Bilder: `Bilder/cyclotron-function-static.pdf` (Funktionsprinzip: Dees,
  Wechselspannungsquelle, Spiralbahn, $B$-Feldlinien),
  `Bilder/cyclotron_PSI.png` (echtes Foto, PSI-Zyklotron, Villigen CH),
  `Literatur/Particles-synchrotron-diagram-alternating-gradient-ring-energies-accelerator.jpg`
  (Synchrotron-Ringaufbau, Ablenkmagnete/Beschleunigungskavitäten)
- Literatur: `Literatur/Normal-Zyklotron _ LEIFIphysik.pdf`,
  `Literatur/Magnetfelder im LHC _ LEIFIphysik.pdf`
- Simulationen: [Zyklotron](https://www.leifiphysik.de/elektrizitaetslehre/bewegte-ladungen-feldern/ausblick/zyklotron),
  [Synchro-Zyklotron und Synchrotrone](https://www.leifiphysik.de/elektrizitaetslehre/bewegte-ladungen-feldern/ausblick/synchro-zyklotron-und-synchrotrone)

**Kontrollfrage (Expertenphase):** Warum lassen sich mit einem Zyklotron
nicht beliebig hohe Energien erreichen, mit einem Synchrotron aber schon?
Was ist der entscheidende technische Unterschied zwischen den beiden?

### 3. MHD-Antrieb

**Inhalt:** In einem mit Meerwasser (leitfähig, enthält Ionen) gefüllten
Kanal wird über Elektroden ein Strom $I$ quer zur Strömungsrichtung durch
das Wasser geschickt, während gleichzeitig ein Magnetfeld $B$ senkrecht
dazu steht. Die bewegten Ladungsträger erfahren die Lorentzkraft (hier
über den Strom ausgedrückt: $F=BIL$), die das Wasser in eine dritte, zu
$I$ und $B$ senkrechte Richtung aus dem Kanal beschleunigt — das Schiff
wird angetrieben, ganz ohne bewegliche Teile (kein Propeller). Reales
Beispiel: die *Yamato-1* (Japan, 1992), das erste Schiff mit
funktionierendem MHD-Antrieb.

**Material:**
- Bilder: `Bilder/mhd-accelerator.pdf` (Funktionsprinzip mit $I$-, $B$-,
  $F$-Pfeilen), `Bilder/mhd-ship-yamato-1.jpg` (echtes Foto der Yamato-1),
  `Bilder/mhd_skizze.png`
- Literatur: `Literatur/MHD-Antrieb _ LEIFIphysik.pdf`
- Simulation: [MHD-Generator und MHD-Pumpe](https://www.leifiphysik.de/elektrizitaetslehre/bewegte-ladungen-feldern/ausblick/mhd-generator-und-mhd-pumpe)

**Kontrollfrage (Expertenphase):** Woher kommt die Kraft, die das
Meerwasser im MHD-Kanal beschleunigt, wenn es doch gar keine Schraube
gibt? Nennen Sie die beiden Grössen, die dafür senkrecht zueinander stehen
müssen, damit die Kraft in die gewünschte dritte Richtung wirkt.

### 4. Polarlichter

**Inhalt:** Dieses Thema greift bewusst den Advance-Organizer-Teaser
wieder auf, den es schon zweimal gab (Teil 1 ganz am Anfang und nochmals
als Rückverweis vor dem Gruppenpuzzle, siehe "Vorausgesetztes Vorwissen"
oben) — als Einstieg der Themenbox eignet sich deshalb ein kurzer
Verweis darauf ("Sie kennen das Beispiel schon"), bevor es über den
Teaser hinausgeht. Der Sonnenwind (geladene Teilchen von der Sonne)
trifft auf die Magnetosphäre der Erde.

**Wie die Spiralbahn entsteht:** Ein Teilchen, das schräg zu einer
Feldlinie einfliegt, hat eine Geschwindigkeitskomponente $v_\parallel$
entlang der Feldlinie und eine Komponente $v_\perp$ quer dazu (bereits
bekannte Schraubenbahn-Zerlegung, Teil 2 LZ4 — nicht neu herleiten). Nur
$v_\perp$ erzeugt über die Lorentzkraft eine Kreisbewegung um die
Feldlinie; $v_\parallel$ bleibt davon unbeeinflusst und trägt das Teilchen
gleichzeitig die Feldlinie entlang. Kreisbewegung quer plus gleichförmige
Bewegung längs ergibt zusammen die Spiralbahn, die die Feldlinie wie eine
Feder umwickelt — die Feldlinie selbst ist dabei die "Achse" der Spirale.

**Wie daraus die magnetische Flasche wird:** Neu (nicht am Fadenstrahlrohr
behandelt) ist, was passiert, wenn das Teilchen auf diesem Spiralweg in
ein stärker werdendes Feld hineinläuft — genau das passiert an den Polen,
wo die Feldlinien der Erde zusammenlaufen und $B$ deshalb zunimmt. Weil
die Lorentzkraft nie Arbeit verrichtet, bleibt die Gesamtgeschwindigkeit
(und damit die Bewegungsenergie) des Teilchens konstant; wird $B$ stärker,
wächst aber $v_\perp$ (die Kreisbewegung quer zur Feldlinie wird
"enger und schneller") auf Kosten von $v_\parallel$. Irgendwann ist die
gesamte Bewegungsenergie in $v_\perp$ umgewandelt, $v_\parallel=0$: An
diesem Umkehrpunkt wirkt die Lorentzkraft wie ein Spiegel und schickt das
Teilchen die Feldlinie wieder zurück, Richtung Äquator und weiter zum
gegenüberliegenden Pol, wo sich derselbe Effekt wiederholt. Ein Teilchen
kann so wiederholt zwischen Nord- und Südpol hin- und herpendeln, ohne je
die Atmosphäre zu erreichen — es ist in einer natürlichen "magnetischen
Flasche" gefangen (den Van-Allen-Gürteln), mit den beiden polnahen Zonen
starken Feldes als "Flaschenhälse". Nur Teilchen, deren
Geschwindigkeitsrichtung beim Eintritt zu nahe an $v_\parallel$ liegt (zu
wenig $v_\perp$, sogenannter **Verlustkegel**), erreichen den Umkehrpunkt
gar nicht, sondern schon vorher die dichte Atmosphäre — dort erzeugen sie
durch Stösse mit Luftmolekülen das Polarlicht, bevorzugt in einem Ring rund
um die Pole (Auroraloval), nicht direkt über den Polen selbst, weil genau
dort die Feldlinien am steilsten und am dichtesten zusammenlaufen.

**Material:**
- Bilder: `Bilder/aurora-borealis.jpg`,
  `Bilder/csm_20231218_Polarlicht_iStockWdP_6d45db0da8.png` (echte
  Polarlicht-Fotos), `Bilder/magnetosphere.jpg` (Sonnenwind trifft
  Magnetosphäre, Übersichtsgrafik), `Bilder/polarlicht_illustration_flugbahn.png`
  (Spiralbahn eines Teilchens zum magnetischen Südpol),
  `Bilder/magnetic-mirror-static.pdf` (Spiegeleffekt im Detail: $B_1$/$B_2$-
  Zerlegung, resultierende Kraft $F_2$ zurück Richtung Magnet — sehr
  hilfreich, um den Spiegeleffekt sauber herzuleiten)
- Literatur: `Literatur/Sonnenwind _ LEIFIphysik.pdf`,
  `Literatur/Geladener Tropfen im Erdmagnetfeld _ LEIFIphysik.pdf`,
  `Literatur/Erdmagnetfeld und Archäologie (Abitur BY 2010 GK A1-2) _ LEIFIphysik.pdf`,
  `Literatur/Andromedagalaxie - Astronomie, Mond, Sterne, Andromedagalaxie und das Universum.pdf`
  (trotz Dateiname tatsächlich die Polarlicht-Seite von andromedagalaxie.de,
  mit Foto und Grundlagentext zu Sonnenwind/Magnetosphäre)
- Simulation/Aufgabe: [Polarlicht](https://www.leifiphysik.de/elektrizitaetslehre/bewegte-ladungen-feldern/ausblick/polarlicht),
  [Teilchenbahnen in Magnetfeldern](https://www.leifiphysik.de/elektrizitaetslehre/bewegte-ladungen-feldern/ausblick/teilchenbahnen-magnetfeldern),
  [Aufgabe: Magnetische Flasche](https://www.leifiphysik.de/elektrizitaetslehre/bewegte-ladungen-feldern/aufgabe/magnetische-flasche)
  (passt hier direkt als vertiefende Aufgabe)

**Kontrollfrage (Expertenphase):** Ein Teilchen fliegt spiralförmig entlang
einer Feldlinie in Richtung Nordpol, wo das Feld stärker wird. Was
passiert dabei mit $v_\perp$ und $v_\parallel$, und wieso kehrt sich seine
Bewegung irgendwann um, statt einfach weiterzufliegen? Wieso entstehen
Polarlichter trotzdem nicht überall auf der Erde gleich häufig, sondern
vor allem in einem Ring rund um die Pole?

### 5. Hall-Effekt

**Inhalt:** Bewegen sich Ladungsträger (z.\,B. in einem stromdurchflossenen
Leiter oder in einer strömenden leitfähigen Flüssigkeit wie Blut) quer zu
einem angelegten Magnetfeld $B$, wirkt auf sie die bereits bekannte
Lorentzkraft $qvB$ senkrecht zu $v$ und $B$ — sie werden dadurch zu einer
Seite hin abgelenkt. Weil sie den Leiter/das Gefäss aber nicht verlassen
können, sammelt sich dort eine Ladungsüberschuss an, bis das dadurch
entstehende elektrische Feld $E_H$ die Lorentzkraft gerade kompensiert;
neu ist dieses Kräftegleichgewicht ($qE_H=qvB$) selbst — dieselbe Idee wie
beim Wien-Filter (Massenspektrograph-Thema), nur mit vertauschter
Fragestellung: Dort ist $v_0$ vorgegeben und wird über $E$ und $B$
eingestellt/ausgewählt; hier ist $v$ unbekannt und wird über die
resultierende Spannung gemessen. Im Gleichgewicht stellt sich quer zur
Strömung eine konstante, messbare Hall-Spannung $U_H=Bvd$ ein ($d$:
Abstand der Messelektroden bzw. Durchmesser des Leiters/Gefässes). Sind
$U_H$, $B$ und $d$ bekannt, lässt sich daraus die Geschwindigkeit $v$ der
Ladungsträger berechnen. **Medizinische Anwendung:** Blut enthält
geladene Teilchen (Ionen im Blutplasma), die sich mit dem Blutfluss
bewegen. Legt man von aussen ein Magnetfeld $B$ quer über ein Blutgefäss
und misst mit zwei Elektroden auf gegenüberliegenden Seiten die
Hall-Spannung $U_H$, lässt sich bei bekanntem Gefässdurchmesser $d$ die
Fliessgeschwindigkeit des Blutes berechnen — nicht-invasiv, ohne das
Gefäss zu öffnen.

**Material:**
- Bild: `Bilder/hall-voltage.pdf` (Skizze: Leiter/Gefäss, Strömungsrichtung
  $v$, Magnetfeld $B$, Ladungstrennung, resultierende Hall-Spannung $U_H$)
- Literatur: `Literatur/HALL-Effekt _ LEIFIphysik.pdf`,
  `Literatur/HALL-Spannung - Formelumstellung _ LEIFIphysik.pdf`,
  `Literatur/Kalibrierung einer HALL-Anordnung _ LEIFIphysik.pdf`,
  `Literatur/Medizinische Anwendung des HALL-Effekts (Abitur BY 2013 Ph11 A2-1) _ LEIFIphysik.pdf`
- Simulation/Aufgabe: [Medizinische Anwendung des Hall-Effekts (Abitur BY 2013 Ph11 A2-1)](https://www.leifiphysik.de/elektrizitaetslehre/bewegte-ladungen-feldern/aufgabe/medizinische-anwendung-des-hall-effekts-abitur-2013-ph11-a2-1)
  (passt hier direkt als vertiefende Aufgabe mit der medizinischen
  Blutfluss-Anwendung)

**Kontrollfrage (Expertenphase):** Wie lässt sich mit dem Hall-Effekt die
Fliessgeschwindigkeit von Blut messen, ohne das Gefäss zu öffnen? Welche
zwei Grössen müssen dafür zusätzlich zur gemessenen Hall-Spannung $U_H$
bekannt sein?

## Gemeinsame Aufgaben der Stammgruppe (Vertiefungsphase)

Nachdem in der Stammgruppe alle fünf Themen einmal erklärt wurden, lösen
alle fünf Mitglieder gemeinsam die folgenden Aufgaben — jede Aufgabe
braucht Wissen aus mindestens zwei verschiedenen Expertenthemen.

**Aufgabe 1 (quantitativ, Massenspektrograph + Hall-Effekt):** Beide
Themen beruhen auf demselben Kräftegleichgewicht bei gekreuzten Feldern
($qE=qvB$ bzw. $qE_H=qvB$), nutzen es aber in entgegengesetzter Richtung:
Beim Wien-Filter (Stufe 1 des Massenspektrographen) wird $E$ so
eingestellt, dass genau eine \emph{vorgegebene} Geschwindigkeit $v_0$
selektiert wird; beim Hall-Effekt wird umgekehrt aus einer
\emph{gemessenen} Spannung $U_H$ eine zunächst \emph{unbekannte}
Geschwindigkeit $v$ berechnet. Teilaufgabe a) Ein Ionenstrahl durchläuft
einen Wien-Filter mit gegebenen Werten für $E$ und $B_1$ und anschliessend
ein zweites Magnetfeld $B_2$, in dem ein Halbkreis mit gemessenem Radius
$r$ gemessen wird (Massenspektrograph-Experte/in steuert $v_0=E/B_1$ und
$r=mv_0/qB_2 \Rightarrow m=qB_2r/v_0$ bei). Bestimmen Sie die Masse $m$
des Ions. Teilaufgabe b) Über ein Blutgefäss mit Durchmesser $d$ wird ein
bekanntes Magnetfeld $B$ gelegt und eine Hall-Spannung $U_H$ gemessen
(Hall-Effekt-Experte/in steuert $U_H=Bvd \Rightarrow v=U_H/(Bd)$ bei).
Bestimmen Sie die Fliessgeschwindigkeit $v$ des Blutes. Teilaufgabe c)
Diskutieren Sie zu zweit (Massenspektrograph- und Hall-Effekt-Experte/in):
Was ist an den beiden Rechnungen strukturell gleich, und was genau ist
vertauscht — welche Grösse ist jeweils gegeben, welche gesucht? Konkrete
Zahlenwerte beim Erstellen des Aufgabenblatts noch einsetzen (analog zu
den Übungsaufgaben aus Teil 1).

**Aufgabe 2 (konzeptionell, alle fünf Themen, testet LZ6):** Füllen Sie
gemeinsam eine Tabelle mit einer Zeile pro Thema aus: Welche Felder sind
beteiligt (nur $B$, oder $E$ und $B$ gekreuzt)? Wirkt die Lorentzkraft als
Zentripetalkraft, als Teil eines Kräftegleichgewichts bei Ladungstrennung,
oder als direkte Antriebskraft? Wozu dient die Anwendung (Massen trennen,
Teilchen beschleunigen, Wasser antreiben, Teilchen in die Atmosphäre
lenken, Geschwindigkeit messen)? Diskutieren Sie danach zu fünft: Was ist
allen fünf Anwendungen gemeinsam?

**Aufgabe 3 (Kontrastfrage, Linearbeschleuniger):** Auch ein
Linearbeschleuniger (LINAC) beschleunigt geladene Teilchen auf hohe
Geschwindigkeiten — aber ganz ohne Magnetfeld und ohne gekrümmte Bahn.
Wieso braucht er keine Lorentzkraft? Was ist der entscheidende
Unterschied zu den fünf Anwendungen, die Sie gerade besprochen haben?
Material dazu: `Bilder/linac.png`, `Literatur/linac_real.jpg`, Simulation
[Linearbeschleuniger](https://www.leifiphysik.de/elektrizitaetslehre/bewegte-ladungen-feldern/ausblick/linearbeschleuniger).

## Hinweise für die Umsetzung in VS Code

- Neue Datei `gruppenpuzzle_lorentzkraft.tex` im Ordner
  `institutionen/UZH-Praktikum-I/arbeitsblaetter/elektrodynamik/lorentzkraft-teil-2/`
  anlegen, Aufbau analog zu `gruppenpuzzle3-u-i-r.tex`
  (`elektrizitaet/u-i-r/`): Kopfzeile, kurze Ablaufinstruktion (Stamm-
  /Expertengruppen, 4 Phasen, hier mit 3 Stammgruppen à 5 und 5
  Expertengruppen à 3), dann die fünf Themenabschnitte
  (`theoriebox` + Schaltzeichen/Bild + `taskbox` mit Kontrollfrage), zum
  Schluss die drei Aufgaben der Vertiefungsphase (`groupbox`).
- Alle referenzierten `.pdf`-Bilder (aus den `.svg`-Originalen) liegen
  bereits im `Bilder`-Ordner (per cairosvg neu erzeugt, inkl.
  `hall-voltage.pdf`); nur noch per `\Bild{Breite}{Bilder/dateiname.pdf}`
  einbinden.
- Sie-Form durchgehend beibehalten (Praktikum-I-Konvention).
- **Wichtigste Regel beim Formulieren der fünf Themenboxen:** Das
  Gruppenpuzzle folgt direkt auf das (zweifache) Fadenstrahlrohr-
  Experiment. $F=qvB$, die Drei-Finger-Regel, $r=mv/qB$, die $e/m_e$-
  Bestimmung und die Schraubenbahn sind bereits bekannt (siehe Abschnitt
  "Vorausgesetztes Vorwissen" oben) — in den Themenboxen jeweils kurz
  referenzieren ("wie am Fadenstrahlrohr", "bereits bekannt"), aber nicht
  erneut herleiten oder erklären. Jede Themenbox soll erkennbar auf
  bekanntem Grund aufbauen, nicht bei null anfangen.
- Nach Erstellung mit `pdflatex` (zwei Durchläufe) kompilieren und auf
  Fehler prüfen, insbesondere auf die bekannte Falle mit geraden
  Anführungszeichen (`\glqq...\grqq{}` statt `"..."` verwenden).
