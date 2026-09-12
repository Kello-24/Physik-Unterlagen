# Lorentzkraft — Inhaltsideen Teil 1 & Teil 2 (Diskussionsentwurf, v2)

Das ist noch **keine** `lernziele.md`/Lektionsplan-Version, sondern die
Grundlage für unsere weitere Diskussion. Gegenüber der ersten Version
wurde die Reihenfolge auf deinen Vorschlag hin umgedreht: phänomenologisch
mit den (makroskopischen) Beobachtungen beginnen, dann zur mikroskopischen
Erklärung übergehen, und Dinge wie die Zentripetalkraft erst danach
einbringen. Das dreht mein ursprüngliches "Teilchen zuerst"-Argument nicht
grundsätzlich um, sondern setzt es an der richtigen Stelle ein: die
Einzelladungs-/Zentripetalkraft-Perspektive wird jetzt zur
\emph{Erklärungsebene}, nicht mehr zum Einstieg.

Ausgangslage, die ich weiterhin berücksichtige: Zentripetalkraft ist
bereits bekannt (Vorwissen bestätigt). Der Baukasten aus Magnetfelder wird
umgebaut (Spule entfernt, schaukelförmiger Leiter angebracht) und ist
damit **dasselbe** Gerät wie die Leiterschaukel — es sind also insgesamt
**drei** Experimente, nicht vier: Fadenstrahlrohr, der umgebaute
Magnetfelder-Baukasten als Leiterschaukel, und die zwei
stromdurchflossenen Drähte.

## Grundidee der neuen Reihenfolge

1. **Phänomen (makroskopisch):** Leiterschaukel und zwei Drähte —
   beobachtbare Effekte an ganzen Leitern, ohne jede Erklärung.
2. **Modell (makroskopisch):** $F=I\cdot l\cdot B$ und die Drei-Finger-Regel als
   Erklärung des Beobachteten — noch auf der Ebene des Leiters als Ganzes.
3. **Mikroskopisch:** Warum wirkt diese Kraft überhaupt? Weil sich im
   Leiter einzelne Ladungsträger bewegen; $F=q\cdot v\cdot B$ pro Ladung,
   und die Summe über $Q=I\cdot t$ ergibt wieder $F=IlB$. Damit wird auch
   die Anziehung/Abstossung der zwei Drähte über ein einzelnes Elektron im
   Feld des Nachbarleiters erklärbar.
4. **Weiterführung (bereits in Teil 1, nicht mehr erst in Teil 2):** Wenn
   eine einzelne Ladung nicht mehr in einem Leiter gebunden, sondern frei
   ist — was passiert dann? Das Fadenstrahlrohr beantwortet diese Frage
   \emph{qualitativ} bereits am Ende von Teil 1 (Lorentzkraft als
   Zentripetalkraft $\Rightarrow$ Kreisbahn, per Predict-Observe-Explain).
   Teil 2 setzt direkt bei der \emph{quantitativen} Frage an: wovon hängt
   der Bahnradius ab?

Das ist ein klassischer induktiver Aufbau (vom Phänomen zum Modell, vom
Makroskopischen zum Mikroskopischen) und passt gut zum bereits verwendeten
Beobachten-zuerst-Muster aus Magnetfelder (Ørsted-Demo).

## Teil 1 — Vom Phänomen am Leiter zur mikroskopischen Erklärung

\emph{Hinweis: der verbindliche, aktuelle Stand von Teil 1 steht in
`lernziele.md` und `lorentzkraft-teil1-lektionsplan.tex` — diese
Kurzfassung dient hier nur noch als Kontext für die Teil-2-Diskussion und
weicht in einigen Details (siehe unten) inzwischen davon ab.}

Magnetfeld des geraden Leiters ($B=\frac{\mu_0}{2\pi}\cdot\frac{I}{r}$)
und der Spule aus Magnetfelder, Feldlinien/$\odot$-$\otimes$-Konvention
sind reines Vorwissen und werden \emph{nicht} mehr aktiv repetiert (keine
eigene Repetitionsphase mehr) -- sie werden in Teil 1 direkt vorausgesetzt
und bei Bedarf situativ aufgefrischt. \emph{Noch keine} Zentripetalkraft
an dieser Stelle — die kommt erst später (jetzt bereits in Teil 1, siehe
Schritt 4 unten, nicht mehr erst in Teil 2).

**1. Aktivierung — zwei reine Beobachtungsstationen, ohne Erklärung.**

- *Leiterschaukel* (umgebauter Magnetfelder-Baukasten: Spule entfernt,
  schaukelförmiger Leiter montiert): SuS schliessen Strom an, beobachten
  und notieren, in welche Richtung sich die Schaukel bei unterschiedlicher
  Strom-/Feldpolung bewegt.
- *Zwei stromdurchflossene Drähte*: SuS beobachten und notieren, ob sich
  die Drähte anziehen oder abstossen, je nach Stromrichtung.

Beide Stationen bewusst als reine Beobachtung angelegt (wie die
Ørsted-Demo in Magnetfelder) — an dieser Stelle gibt es noch keine
Grundlage für eine begründete Vorhersage, deshalb kein
Predict-Observe-Explain, sondern Beobachten-zuerst.

**2. Theorie (makroskopisch): $F=I\cdot l\cdot B$ und die Drei-Finger-Regel.**
Einführung der Kraft auf einen stromdurchflossenen Leiter im Feld
(senkrechter Fall) mit der Drei-Finger-Regel (Daumen=Ursache/Strom,
Zeigefinger=Vermittler/Feld, Mittelfinger=Wirkung/Kraft; rechte Hand für
positive Ladungsträger/konventionelle Stromrichtung). Rückkehr zur
Leiterschaukel-Beobachtung: SuS erklären ihre eigene Beobachtung selbst
mit der neuen Formel/Regel.

**3. Vertiefung — mikroskopische Erklärung.**
Warum wirkt überhaupt eine Kraft auf den ganzen Leiter? Weil sich viele
einzelne Ladungsträger im Feld bewegen und jede für sich eine Kraft
$F=q\cdot v\cdot B$ erfährt (dieselbe Drei-Finger-Regel, jetzt auf den
einzelnen Ladungsträger angewandt — ab hier auch als linke-Hand-Variante
für negative Ladungsträger, sodass kein separater Umkehr-Schritt mehr
nötig ist). Mit $Q=I\cdot t$ und $v=l/t$ lässt sich zeigen,
dass die Summe dieser Einzelkräfte wieder genau $F=IlB$ ergibt — die
makroskopische Formel wird also mikroskopisch begründet, nicht neu
eingeführt.

Alternative/ergänzende Erklärung für die Leiterschaukel: Feldlinien-
Betrachtung ("Gummifäden"-Modell, Kraft in Richtung abnehmender
Feldliniendichte) — als zweiter, anschaulicher Zugang neben der
Drei-Finger-Regel, gut geeignet zum Vergleich beider Erklärungswege.

**4. Fadenstrahlrohr — Aufbau erklären, dann Predict-Observe-Explain
(neu: bereits hier in Teil 1, nicht mehr erst in Teil 2).** Direkt nach
Schritt 3, an einer freien Ladung: zuerst wird der Aufbau erklärt (Elektronen
werden durch eine Spannung beschleunigt, treten in ein Magnetfeld ein,
werden durch Restgasleuchten sichtbar), \emph{ohne} die Kreisbahn
vorwegzunehmen. Danach ein echter Predict-Observe-Explain-Zyklus im
Plenum: die SuS sagen mithilfe von $F=qvB$ (Kraft stets senkrecht zu $v$)
und der bereits bekannten Zentripetalkraft eine Kreisbahn voraus,
beobachten sie am Experiment, und erklären, wie sich die Elektronen
verhalten (Lorentzkraft als Zentripetalkraft; Richtung über die
linke-Hand-Variante der Drei-Finger-Regel, da Elektronen negativ geladen
sind). Damit ist die \emph{qualitative} Kreisbahn-Frage bereits hier
vollständig beantwortet und gezeigt -- Teil 2 baut direkt quantitativ
darauf auf (siehe unten).

**5. Rückkehr zu den zwei Drähten — jetzt mikroskopisch erklärt.**
Herleitung: Feld des ersten Leiters am Ort des zweiten
($B_1=\frac{\mu_0}{2\pi}\cdot\frac{I_1}{d}$, aus Magnetfelder bekannt)
eingesetzt in $F_2=I_2\cdot l\cdot B_1$ ergibt das Ampère'sche
Kraftgesetz $\frac{F}{l}=\frac{\mu_0}{2\pi}\cdot\frac{I_1\cdot I_2}{d}$.
Richtung (Anziehung bei gleicher, Abstossung bei entgegengesetzter
Stromrichtung) über die Drei-Finger-Regel an einem einzelnen Elektron im
Feld des jeweils anderen Leiters begründen — das ist dieselbe
mikroskopische Perspektive wie in Schritt 3, jetzt auf das zweite
Phänomen angewendet. *Optional:* historischer Exkurs — dieser Aufbau
definierte vor der SI-Neudefinition 2019 die Einheit Ampere direkt.

**6. Übergang zu Teil 2.**
Abschliessender Gedanke: die qualitative Frage \glqq bewegt sich eine
freie Ladung im Kreis?\grqq{} ist mit dem Fadenstrahlrohr in Schritt 4
bereits geklärt. Teil 2 knüpft direkt daran an und fragt quantitativ
weiter: wovon hängt der Radius dieser Kreisbahn ab?

## Teil 2 — Freie Ladungen: Kreisbahn quantitativ und Anwendungen

**Wichtige Änderung gegenüber der ersten Fassung:** die qualitative Frage
\glqq bewegt sich eine freie Ladung im
Kreis?\grqq{} wird nicht mehr hier eingeführt — sie ist bereits in Teil 1
am Fadenstrahlrohr mit einem vollständigen Predict-Observe-Explain-Zyklus
beantwortet und gezeigt worden (Lorentzkraft als Zentripetalkraft,
Richtung über die linke Hand für Elektronen). Teil 2 darf diese
Überraschung deshalb nicht wiederholen, sondern muss direkt auf der
\emph{quantitativen} Ebene weitermachen. Auch die Handhabung negativer
Ladungen (linke-Hand-Variante der Drei-Finger-Regel) ist bereits aus
Teil 1 bekannt und muss hier nicht neu eingeführt werden.

**Einstieg: kurzer Rückblick, dann neue quantitative Frage.** Kurzer
Rückblick auf Teil 1 (\glqq Wir wissen schon: Elektronen im
Fadenstrahlrohr laufen auf einer Kreisbahn, weil die Lorentzkraft als
Zentripetalkraft wirkt.\grqq{}), danach die neue Leitfrage: Wovon hängt
der \textbf{Radius} dieser Kreisbahn ab?

**Neuer Predict-Observe-Explain-Zyklus (quantitativ, ersetzt den
ursprünglich hier geplanten qualitativen Zyklus):**

- *Predict:* die SuS sagen anhand von $q\cdot v\cdot B=\frac{m\cdot
  v^2}{r}$ voraus, wie sich der Radius $r$ verändert, wenn die
  Beschleunigungsspannung $U$ bzw. die Feldstärke $B$ erhöht wird (grösser?
  kleiner? gar keine Änderung?).
- *Observe:* am Fadenstrahlrohr $U$ bzw. $B$ tatsächlich variieren und die
  Änderung des Radius beobachten.
- *Explain:* Herleitung von $r=\frac{m\cdot v}{q\cdot B}$ aus der
  Zentripetalkraft-Gleichung (hergeleitet aus der bereits bekannten
  Zentripetalkraft, nicht neu postuliert); mit $v=\sqrt{2eU/m_e}$ (aus der
  Beschleunigungsspannung) weiter zu
  $r=\frac{1}{B}\sqrt{\frac{2m_e\cdot U}{e}}$ kombinieren — die SuS können
  damit die beobachtete Abhängigkeit von $U$ und $B$ quantitativ erklären.

**Schraubenbahn (kurze Erweiterung):** wenn $v$ nicht senkrecht zu $B$
steht, bleibt $v_\parallel$ unbeeinflusst und $v_\perp$ erzeugt die
Kreisbewegung — zusammen ergibt das eine Helix.

**Historische Einordnung (jetzt direkte Fortsetzung der Herleitung, nicht
mehr nur optionaler Exkurs):** aus $r=\frac{1}{B}\sqrt{2m_eU/e}$ folgt
direkt $e/m_e=\frac{2U}{r^2B^2}$ — die historische Methode (Thomson) zur
Bestimmung von $e/m_e$. Da diese Umformung ohnehin aus der gerade
gemachten Herleitung folgt, spart die Integration hier Zeit gegenüber
einem separaten Exkurs; bei Zeitdruck trotzdem als Erstes kürzbar (dann
nur $r=mv/qB$ ohne die $e/m_e$-Umformung).

**Danach ein Schaufenster von sechs Anwendungen**, die sich inhaltlich gut
in gleichwertige, parallele Teile aufteilen lassen und die direkt an die
gerade hergeleitete Radiusformel anknüpfen:

1. **Massenspektrograph** — $r=\frac{v\cdot m}{Q\cdot B}$ (dieselbe
   Formel wie soeben am Fadenstrahlrohr hergeleitet, jetzt zur
   Massenbestimmung über den Bahnradius verwendet).
2. **Geschwindigkeitsfilter (Wien-Filter)** — gekreuzte $E$- und
   $B$-Felder, nur Teilchen mit $v_0=E/B$ passieren unabgelenkt.
3. **Zyklotron** — $f_Z=\frac{Q\cdot B}{2\pi\cdot m}$, unabhängig von der
   Geschwindigkeit; Ausblick Synchrotron/LHC.
4. **Hall-Effekt** — Hall-Plättchen, Hall-Spannung, Hall-Sonde (drei
   senkrecht zueinander stehende Plättchen zur Feldmessung).
5. **MHD-Antrieb** — magnetohydrodynamischer Antrieb ohne bewegliche
   Teile, Beispiel Yamato-1.
6. **Erdmagnetfeld** — Magnetosphäre, Van-Allen-Strahlungsgürtel,
   Polarlichter (Aurora borealis/australis) als Beispiel für ein
   inhomogenes Feld (magnetische Flasche/Spiegel).

Alle sechs bauen auf demselben Grundprinzip auf (Lorentzkraft als
Zentripetalkraft bzw. als Kraftgleichgewicht bei gekreuzten Feldern),
angewandt auf ein je anderes Gerät/Phänomen — inhaltlich gut geeignet für
eine Aufteilung, bei der jede Gruppe zunächst nur einen Teil bearbeitet
und ihn danach den anderen vermittelt.

## Methodenvorschläge

**Teil 1:**

- Leiterschaukel und zwei Drähte: Beobachten-zuerst-dann-Erklären (wie
  bei der Ørsted-Demo in Magnetfelder) für beide Stationen, anschliessend
  Think-Pair-Share zur eigenen Erklärung mit der neuen Formel/Regel.
- Mikroskopische Erklärung (Schritt 3): eignet sich als kurze,
  gemeinsam entwickelte Herleitung im Plenum oder als Sortier-/
  Zuordnungsaufgabe (Vergewisserungsphase), bevor es zu den zwei Drähten
  zurückgeht.
- Herleitung Ampère'sches Kraftgesetz / Übung dazu: Produktives Üben
  eignet sich, um systematisch $I_1$, $I_2$, $d$ zu variieren und den
  Zusammenhang selbst zu entdecken, statt ihn nur vorgerechnet zu
  bekommen.

**Teil 2:**

- Fadenstrahlrohr: \emph{quantitatives} Predict-Observe-Explain zum
  Bahnradius (nicht mehr die qualitative Kreisbahn-Frage, die ist bereits
  in Teil 1 geklärt) -- die SuS sagen dank bekannter Zentripetalkraft und
  $F=qvB$ voraus, wie sich $r$ bei veränderter Spannung/Feldstärke
  verhält.
- Für die sechs Anwendungen: Partner-/Gruppenpuzzle (Jigsaw) — jede
  Gruppe wird zur Expertin für eine Anwendung (vorbereitetes
  Info-Material), erklärt sie danach einer neu gemischten Gruppe. Passt
  gut, weil die sechs Teile inhaltlich unabhängig und etwa gleich
  aufwendig sind.
- Als Einstieg vor dem Gruppenpuzzle: kurzer Advance Organizer, der die
  Bandbreite der sechs Anwendungen zeigt (z.\,B. Yamato-1 als neues Bild
  -- Polarlicht wurde bereits im Advance Organizer von Teil 1 gezeigt und
  kann hier als Rückverweis dienen: \glqq Erinnert ihr euch an das
  Polarlicht-Beispiel? Genau das ist eine der sechs Anwendungen, die wir
  jetzt vertiefen.\grqq{}).

## Offene Punkte zur Diskussion

1. **Reihenfolge Leiterschaukel/zwei Drähte:** Sollen beide Beobachtungen
   parallel als zwei Stationen laufen (SuS besuchen beide nacheinander,
   dann gemeinsame Theorie für beide), oder erst Leiterschaukel komplett
   durchgehen (Beobachtung → Theorie → mikroskopisch) und danach separat
   die zwei Drähte?
2. **Zeitbudget Teil 1:** überholt durch die formale Planung -- siehe
   Zeitbudget-Offener-Punkt in `lorentzkraft-teil1-lektionsplan.tex`
   (Abschnitt 5, aktuell 81' Summe / 9' Puffer, erster Streichkandidat der
   historische Ampere-Exkurs).
3. ~~UVW-Regel bei negativer Ladung~~ \textbf{Entschieden:} erledigt sich
   von selbst -- Teil 1 führt die Drei-Finger-Regel bereits von Anfang an
   in zwei Varianten ein (rechte Hand positiv, linke Hand negativ), daher
   ist in Teil 2 dafür keine zusätzliche Zeit/Übung mehr nötig.
4. **Zeitbudget Teil 2:** Reicht eine Doppellektion für den neuen
   \emph{quantitativen} Fadenstrahlrohr-Einstieg (Rückblick + POE zum
   Bahnradius inkl.\ $e/m_e$-Herleitung) + Schraubenbahn + volles
   Gruppenpuzzle (Erarbeitung + Vermittlung) für sechs Anwendungen, oder
   sollten es weniger als sechs Anwendungen sein? Der neue Einstieg dürfte
   tendenziell etwas weniger Zeit brauchen als der ursprünglich geplante
   qualitative Zyklus, da die Kreisbahn selbst nicht mehr neu eingeführt
   werden muss -- sollte aber vor der Feinplanung mit einer echten
   Zeitschätzung geprüft werden.
5. Passt die Reihenfolge/Auswahl der sechs Teil-2-Anwendungen so, oder
   gibt es eine, die du eher weglassen oder durch etwas anderes ersetzen
   würdest (z.\,B. falls Hall-Effekt oder MHD-Antrieb im Lehrplan/
   Material von Sara Romer bereits an anderer Stelle vorkommt)?
