# Lernziele — Lorentzkraft Teil 2: Freie Ladungen — Kreisbahn und Anwendungen (Elektrodynamik, Doppellektion)

**Begriffe in diesem Dokument:** die \textbf{Lorentzkraft} $F=qvB$ (Kraft
auf eine einzelne bewegte Ladung, hergeleitet in Teil 1) wirkt bei einer
\emph{freien} Ladung im Magnetfeld als \textbf{Zentripetalkraft} und
erzeugt eine Kreisbahn mit Radius $r=\frac{mv}{qB}$. Steht die
Geschwindigkeit nicht senkrecht zum Feld, entsteht stattdessen eine
Schraubenbahn (Helix).

Klassen: 4fh + 4cdeg, gemeinsames Material. Direkte Fortsetzung von
Lorentzkraft Teil 1 (Doppellektion 15./18.09.2026) — Termin für Teil 2
noch offen, spätere Doppellektion nach Teil 1.

**Hinweis zum Stand dieses Dokuments:** dies ist die erste formalisierte
Fassung von Teil 2, abgeleitet aus `diskussion-teil1-teil2-inhalte.md`
(Abschnitt \glqq Teil 2\grqq{}). Wie bei Teil 1 gilt: PhysikLibre-Referenz
(Kap. 13.2/13.3 \glqq Geladene Teilchen in Magnetfeldern\grqq{}/\glqq
Bahnen geladener Teilchen\grqq{}) liegt vor, Seitenzahlen noch nicht im
Detail gegengeprüft. Vorbereitetes Info-Material für die sechs
Anwendungen (Gruppenpuzzle) existiert noch nicht und muss vor der
Durchführung erstellt werden.

## Abgrenzung

Teil 2 knüpft direkt an Teil 1 an: dort wurde am Fadenstrahlrohr bereits
\emph{qualitativ} gezeigt und erklärt, dass eine freie, bewegte Ladung im
Magnetfeld eine Kreisbahn beschreibt, weil die Lorentzkraft $F=qvB$ stets
senkrecht zur Geschwindigkeit steht und damit als Zentripetalkraft wirkt
(Teil 1, LZ6, per Predict-Observe-Explain). \textbf{Diese Frage wird in
Teil 2 nicht wiederholt.} Stattdessen baut Teil 2 direkt
\emph{quantitativ} darauf auf: aus $qvB=\frac{mv^2}{r}$ folgt der
Bahnradius $r=\frac{mv}{qB}$; kombiniert mit der aus der
Beschleunigungsspannung $U$ folgenden Geschwindigkeit
$v=\sqrt{2eU/m_e}$ ergibt sich $r=\frac{1}{B}\sqrt{\frac{2m_eU}{e}}$ und
daraus die historische Methode (Thomson) zur Bestimmung von $e/m_e$.
Danach folgt die Schraubenbahn als kurze Erweiterung (Geschwindigkeit
nicht senkrecht zum Feld), und abschliessend ein Schaufenster von sechs
Anwendungen desselben Grundprinzips, erarbeitet im Gruppenpuzzle.

**Bereits bekannt (Repetition, nicht neu herzuleiten):** die Lorentzkraft
$F=qvB$ und ihre Richtungsbestimmung mit der Drei-Finger-Regel (rechte
Hand positiv, linke Hand negativ, Teil 1); der Aufbau und die
Funktionsweise des Fadenstrahlrohrs (Teil 1); dass die Kreisbahn im
Fadenstrahlrohr durch die Lorentzkraft als Zentripetalkraft entsteht
(Teil 1, LZ6, \emph{qualitativ} bereits gezeigt); die Zentripetalkraft-
Formel $F_Z=\frac{mv^2}{r}$ (Mechanik-Vorwissen); die
Beschleunigungsspannung als Energieumwandlung $eU=\frac{1}{2}mv^2$
(Elektrizitätslehre-Vorwissen, ergibt $v=\sqrt{2eU/m}$).

**Bewusst nicht Teil dieser Einheit (Kernstoff):** eine vollständige
mathematische Parametrisierung der Schraubenbahn (Helix-Gleichung in
Parameterform) — es genügt die qualitative Zerlegung in $v_\parallel$ und
$v_\perp$; relativistische Korrekturen bei hohen Geschwindigkeiten;
vertiefte technische Details einzelner Anwendungen über das im
Gruppenpuzzle vermittelte Mass hinaus (z.\,B. vollständige
Synchrotron-Physik) — dort reicht das Grundprinzip plus ein
motivierender Ausblick.

## Essentielle Fragen

1. Wovon hängt der Radius der Kreisbahn ab, auf der sich eine freie
   Ladung im Magnetfeld bewegt?
2. Wie lässt sich aus dieser Kreisbahn das Verhältnis $e/m_e$ einer
   Ladung bestimmen?
3. Was passiert, wenn die Geschwindigkeit der Ladung nicht senkrecht,
   sondern schräg zum Magnetfeld steht?
4. Was haben ein Massenspektrograph, ein Zyklotron und die Polarlichter
   gemeinsam?

## Operationalisierte Lernziele

- LZ1: den Bahnradius $r=\frac{mv}{qB}$ herleiten, indem die Lorentzkraft
  $F=qvB$ (Teil 1) mit der bereits bekannten Zentripetalkraft
  $F_Z=\frac{mv^2}{r}$ gleichgesetzt wird — als \textbf{quantitative}
  Fortsetzung der in Teil 1 bereits qualitativ gezeigten Kreisbahn (LZ6
  dort), nicht als neue Einführung derselben.
- LZ2: mithilfe der Beschleunigungsspannung ($v=\sqrt{2eU/m_e}$) die
  Radiusformel zu $r=\frac{1}{B}\sqrt{\frac{2m_eU}{e}}$ umformen und
  daraus $e/m_e=\frac{2U}{r^2B^2}$ bestimmen — die historische Methode
  (Thomson) zur Messung des Verhältnisses $e/m_e$.
- LZ3: anhand von $qvB=\frac{mv^2}{r}$ begründet vorhersagen, wie sich
  der Bahnradius bei veränderter Beschleunigungsspannung bzw.
  Feldstärke verhält, die Vorhersage am Fadenstrahlrohr überprüfen und
  das Ergebnis mit LZ1/LZ2 erklären (Predict-Observe-Explain).
- LZ4: die Schraubenbahn (Helix) erklären, die entsteht, wenn die
  Geschwindigkeit nicht senkrecht zum Feld steht: $v_\parallel$ bleibt
  unbeeinflusst (gleichförmige Bewegung), $v_\perp$ erzeugt die
  Kreisbewegung — zusammen ergibt das eine Schraubenbahn.
- LZ5: mindestens eine der sechs Anwendungen (Massenspektrograph,
  Geschwindigkeitsfilter/Wien-Filter, Zyklotron, Hall-Effekt,
  MHD-Antrieb, Erdmagnetfeld) im Detail erklären können und im
  Gruppenpuzzle einer neu gemischten Gruppe verständlich vermitteln.
- LZ6: erkennen und begründen, dass alle sechs Anwendungen auf demselben
  Grundprinzip beruhen — Lorentzkraft als Zentripetalkraft (Massen-
  spektrograph, Zyklotron, Erdmagnetfeld) bzw. als Kräftegleichgewicht
  bei gekreuzten Feldern (Wien-Filter, Hall-Effekt) —, angewandt auf ein
  je anderes Gerät oder Phänomen.

## Voraussehbare Lernschwierigkeiten

1. Annahme, die Lorentzkraft würde die Geschwindigkeit (den Betrag von
   $v$) ändern und die Ladung dadurch abbremsen oder beschleunigen —
   tatsächlich wirkt sie stets senkrecht zu $v$ und ändert nur die
   Richtung (bereits als Lernschwierigkeit in Teil 1 bei LZ6 angelegt,
   hier ggf. reaktivieren).
2. Fehleinschätzung der Radius-Abhängigkeiten: $r$ wird oft fälschlich
   als proportional zu $B$ vermutet (statt umgekehrt proportional,
   $r\propto 1/B$) bzw. die $U$-Abhängigkeit über die Wurzel
   ($r\propto\sqrt{U}$) wird als linear angenommen.
3. Verwechslung von $e$ und $m_e$ in der Umformung zu $e/m_e$, oder
   Vorzeichenfehler beim Auflösen nach $e/m_e$.
4. Bei der Schraubenbahn: Vergessen, dass nur $v_\perp$ die
   Kreisbewegung erzeugt und $v_\parallel$ unverändert (gleichförmig)
   bleibt — stattdessen wird oft angenommen, die ganze Geschwindigkeit
   werde \glqq irgendwie\grqq{} abgelenkt.
5. Beim Gruppenpuzzle: oberflächliches Verständnis in der
   Erarbeitungsphase führt zu ungenauer Vermittlung an die neu gemischte
   Gruppe — Gefahr eines \glqq stillen-Post\grqq{}-Effekts, bei dem sich
   Fehler beim Weitergeben verstärken.
6. Beim Wien-Filter: Verwechslung, dass hier $E$- und $B$-Feld
   \emph{gleichzeitig} und einander entgegenwirkend eingesetzt werden
   (Kräftegleichgewicht $qE=qvB$), statt wie sonst nacheinander oder
   isoliert betrachtet zu werden.

## Beispielkontexte / Aufgabenideen

- **Einstieg: Rückblick + neue quantitative Frage.** Kurzer Rückblick auf
  Teil 1 (\glqq Wir wissen schon: Elektronen im Fadenstrahlrohr laufen
  auf einer Kreisbahn, weil die Lorentzkraft als Zentripetalkraft
  wirkt.\grqq{}), danach die neue Leitfrage: Wovon hängt der Radius
  dieser Kreisbahn ab? Lehrervortrag mit kurzem
  Unterrichtsgespräch, Plenum.
- **LZ1, LZ3 — Predict-Observe-Explain am Fadenstrahlrohr (quantitativ).**
  \emph{Predict:} die SuS sagen anhand von $qvB=\frac{mv^2}{r}$ voraus,
  wie sich $r$ bei erhöhter Spannung $U$ bzw. erhöhter Feldstärke $B$
  verändert. \emph{Observe:} $U$ bzw. $B$ am Fadenstrahlrohr tatsächlich
  variieren und die Radiusänderung beobachten. \emph{Explain:}
  Herleitung von $r=\frac{mv}{qB}$ aus der Zentripetalkraft-Gleichung,
  damit die beobachtete Abhängigkeit erklären. \Methode{M4
  Predict-Observe-Explain} — Plenum.
- **LZ2 — Historische $e/m_e$-Bestimmung.** Direkte Fortsetzung der
  Herleitung: mit $v=\sqrt{2eU/m_e}$ (aus der Beschleunigungsspannung)
  wird $r=\frac{1}{B}\sqrt{2m_eU/e}$ zu $e/m_e=\frac{2U}{r^2B^2}$
  umgeformt — die historische Methode (Thomson) zur Bestimmung von
  $e/m_e$. Da diese Umformung direkt aus der gerade gemachten Herleitung
  folgt, kein separater Exkurs nötig (spart Zeit gegenüber einer
  isolierten Einführung).
- **LZ1, LZ2 — Übung.** Kurze Rechenaufgaben zu $r=mv/qB$ und zur
  $e/m_e$-Bestimmung mit konkreten Zahlenwerten (z.\,B. aus einer
  typischen Fadenstrahlrohr-Apparatur). Individuelles Üben.
- **LZ4 — Schraubenbahn.** Kurze Erweiterung: was passiert, wenn $v$
  schräg zu $B$ steht? Zerlegung in $v_\parallel$ (unbeeinflusst) und
  $v_\perp$ (erzeugt die Kreisbewegung) — zusammen ergibt das eine
  Schraubenbahn. Lehrervortrag mit Skizze, Plenum.
- **Advance Organizer vor dem Gruppenpuzzle.** Kurzer Überblick (ca. 3'),
  der die Bandbreite der sechs Anwendungen zeigt — z.\,B. ein Bild der
  Yamato-1 (MHD-Antrieb) als neuer Aufhänger, plus ein bewusster
  Rückverweis auf das Polarlicht-Beispiel aus dem Advance Organizer von
  Teil 1: \glqq Erinnert ihr euch an das Polarlicht-Beispiel von letzter
  Doppellektion? Genau das ist eine der sechs Anwendungen, die wir jetzt
  vertiefen.\grqq{} Lehrervortrag, kurz, Plenum.
- **LZ5, LZ6 — Gruppenpuzzle (Jigsaw) zu sechs Anwendungen.**
  Erarbeitungsphase: Expertengruppen erarbeiten anhand vorbereiteten
  Info-Materials je eine Anwendung (Massenspektrograph,
  Geschwindigkeitsfilter/Wien-Filter, Zyklotron, Hall-Effekt,
  MHD-Antrieb, Erdmagnetfeld). Vermittlungsphase: neu gemischte Gruppen
  (je ein Mitglied pro Anwendung), jede Person erklärt ihre Anwendung den
  anderen. Abschliessende Sicherung im Plenum, z.\,B. als kurzer
  Kurzcheck/Quiz zu allen sechs Anwendungen, mit Fokus auf dem
  gemeinsamen Grundprinzip (LZ6).
- **Abschluss.** Kurze Zusammenfassung der gesamten Lorentzkraft-Einheit
  (Teil 1 + Teil 2): von der Kraft auf den stromdurchflossenen Leiter
  über die einzelne freie Ladung bis zu den sechs Anwendungen. Plenum.

## Kerninhalte und Leitfragen je Phase

Kurzüberblick über die wichtigste inhaltliche Botschaft und die
Leitfrage jeder Phase aus Abschnitt 2 des Lektionsplans (`.tex`) -- als
schneller Fahrplan, auch für die spätere Arbeitsblatt-Erstellung.

- **Einstieg (Rückblick + neue Frage).** Kerninhalt: die Kreisbahn ist
  aus Teil 1 bekannt — jetzt geht es um den Radius. Leitfrage: \glqq
  Wovon hängt der Radius der Kreisbahn ab?\grqq{}
- **POE Fadenstrahlrohr (quantitativ).** Kerninhalt: $r=mv/qB$, hergeleitet
  aus der Zentripetalkraft. Leitfrage: \glqq Wie verändert sich der
  Radius, wenn ich Spannung oder Feldstärke ändere?\grqq{}
- **Vertiefung: $e/m_e$-Bestimmung.** Kerninhalt: mit $v=\sqrt{2eU/m_e}$
  wird $e/m_e$ aus $U$, $r$, $B$ bestimmbar. Leitfrage: \glqq Wie lässt
  sich das Verhältnis $e/m_e$ aus der Kreisbahn bestimmen?\grqq{}
- **Übung.** Kerninhalt: Anwendung von $r=mv/qB$ und der
  $e/m_e$-Formel an Beispielen. Leitfrage: \glqq Wie rechne ich mit
  diesen Formeln sicher?\grqq{}
- **Theorie: Schraubenbahn.** Kerninhalt: $v_\parallel$ bleibt
  unbeeinflusst, $v_\perp$ erzeugt die Kreisbewegung -- zusammen eine
  Helix. Leitfrage: \glqq Was passiert, wenn die Geschwindigkeit schräg
  zum Feld steht?\grqq{}
- **Advance Organizer Gruppenpuzzle.** Kerninhalt: dasselbe Grundprinzip
  taucht in ganz unterschiedlichen Geräten/Phänomenen auf. Leitfrage:
  \glqq Was haben ein Massenspektrograph, ein Zyklotron und die
  Polarlichter gemeinsam?\grqq{}
- **Gruppenpuzzle: Erarbeitung.** Kerninhalt: je eine der sechs
  Anwendungen im Detail verstehen. Leitfrage: \glqq Wie funktioniert
  \emph{meine} Anwendung genau?\grqq{}
- **Gruppenpuzzle: Vermittlung.** Kerninhalt: die eigene Anwendung
  verständlich weitergeben. Leitfrage: \glqq Kann ich meine Anwendung so
  erklären, dass es die anderen verstehen?\grqq{}
- **Sicherung/Plenum.** Kerninhalt: alle sechs Anwendungen beruhen auf
  demselben Grundprinzip. Leitfrage: \glqq Was ist allen sechs
  Anwendungen gemeinsam?\grqq{}
- **Abschluss.** Kerninhalt: Zusammenfassung der ganzen
  Lorentzkraft-Einheit (Teil 1 + Teil 2). Leitfrage: \glqq Was haben wir
  in den letzten beiden Doppellektionen über die Lorentzkraft
  gelernt?\grqq{}

## Offene Punkte

- **Zeitbudget:** Zehn Phasen (Einstieg, POE, Vertiefung $e/m_e$, Übung,
  Schraubenbahn, Advance Organizer, Gruppenpuzzle-Erarbeitung,
  Gruppenpuzzle-Vermittlung, Sicherung, Abschluss) sind ambitioniert für
  eine Doppellektion, insbesondere weil das Gruppenpuzzle allein bereits
  einen grossen Zeitblock braucht — siehe Zeitbudget im Lektionsplan
  (Abschnitt 5).
- **Info-Material für das Gruppenpuzzle:** muss für alle sechs
  Anwendungen noch erstellt werden (Kurztexte/Arbeitsblätter pro
  Anwendung) — Umfang und Schwierigkeitsgrad sollten über alle sechs
  vergleichbar sein, damit keine Expertengruppe deutlich mehr/weniger
  Zeit braucht.
- **Auswahl/Reihenfolge der sechs Anwendungen:** passt die Auswahl
  (Massenspektrograph, Wien-Filter, Zyklotron, Hall-Effekt, MHD-Antrieb,
  Erdmagnetfeld) so, oder gibt es eine, die eher wegfallen oder ersetzt
  werden sollte (z.\,B. falls Hall-Effekt bereits an anderer Stelle im
  Lehrplan vorkommt)?
- **Schraubenbahn — Tiefe:** reicht die qualitative Behandlung (Zerlegung
  in $v_\parallel$/$v_\perp$), oder soll es eine eigene kleine
  Rechenaufgabe dazu geben?
- **Technische Voraussetzung:** die Predict-Observe-Explain-Phase
  braucht ein Fadenstrahlrohr mit regelbarer Beschleunigungsspannung
  \emph{und} regelbarem Feld (Helmholtzspulen mit einstellbarem Strom) —
  bitte gegenprüfen, ob das vorhandene Gerät beides erlaubt.
- **Sozialform Gruppenpuzzle:** Gruppengrösse und genaue Durchführung
  (z.\,B. sechs Fünfergruppen zu Beginn, danach sechs neu gemischte
  Fünfergruppen mit je einem Mitglied pro Anwendung) noch festzulegen,
  abhängig von der Klassengrösse.
