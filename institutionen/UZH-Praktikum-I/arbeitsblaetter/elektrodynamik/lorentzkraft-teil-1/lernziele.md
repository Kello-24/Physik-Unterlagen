# Lernziele — Lorentzkraft Teil 1: Magnetische Kraft auf stromdurchflossene Leiter (Elektrodynamik, Doppellektion)

**Begriffe in diesem Dokument:** die makroskopische Kraft, die auf einen
stromdurchflossenen Leiter im Feld wirkt ($F=IlB$), heisst **magnetische
Kraft**. Die Kraft, die auf eine einzelne bewegte Ladung wirkt ($F=qvB$),
heisst **Lorentzkraft**. Die magnetische Kraft auf den Leiter ist die
Summe der Lorentzkraft über alle Ladungsträger im Leiter — beide Namen
werden im Folgenden konsequent unterschieden.

Klassen: 4fh (15.09.2026) + 4cdeg (18.09.2026), gemeinsames Material.
Direkte Fortsetzung von Magnetfelder (4fh 01.09.2026) — die Formel für das
Magnetfeld eines geraden, stromdurchflossenen Leiters
($B=\frac{\mu_0}{2\pi}\cdot\frac{I}{r}$) wird hier direkt weiterverwendet.

**Hinweis zum Stand dieses Dokuments:** PhysikLibre-Referenz für Teil 1
liegt bereits im Repo vor (Kap. 13.5 „Leiter in Magnetfeldern“; Kap. 13.2/
13.3 „Geladene Teilchen in Magnetfeldern“/„Bahnen geladener Teilchen“ für
Teil 2) — die genauen Seitenzahlen/Abschnitte darin wurden aber noch nicht
im Detail gegengeprüft. `elektrodynamik/Vorwissen/Magnetismus/
Werkstatt_Magnetismus.docx` (Vorwissen zu Magnetfelder) liegt ebenfalls
vor, wurde aber inhaltlich noch nicht konsultiert. Vor Fertigstellung des
Arbeitsblatts beides noch gegenprüfen.

## Abgrenzung

Diese erste Doppellektion geht induktiv vor: zunächst reine Beobachtung an
zwei Experimenten (Leiterschaukel im Feld, zwei parallele stromdurch-
flossene Leiter), dann die \textbf{magnetische Kraft} auf den Leiter als
makroskopisches Modell ($F=I\cdot l\cdot B$, Richtung über die Drei-Finger-Regel),
und schliesslich die Herleitung der eigentlichen \textbf{Lorentzkraft}:
die Kraft $F=q\cdot v\cdot B$, die auf eine \emph{einzelne} bewegte Ladung
wirkt. Begrifflich wichtig: $F=qvB$ (Kraft auf ein geladenes Teilchen)
heisst \textbf{Lorentzkraft}; $F=IlB$ (Kraft auf den ganzen Leiter) heisst
\textbf{magnetische Kraft} und ist die makroskopische Konsequenz der
Lorentzkraft für sehr viele Ladungsträger gemeinsam in einem Leiter — die
Summe der Einzelkräfte über $Q=I\cdot t$ ergibt wieder $F=IlB$.

Sobald die Lorentzkraft hergeleitet ist, wird
sie \emph{sofort} an einer \emph{freien} Ladung gezeigt -- das
Fadenstrahlrohr steht am Beginn des Lorentzkraft-Teils dieser Lektion,
direkt nach der Herleitung von $F=qvB$, statt erst ganz am Schluss. Dabei
wird zuerst der Aufbau des Experiments selbst erklärt (Beschleunigung der
Elektronen durch die Spannung, Eintritt ins homogene Feld, Sichtbarmachung
der Bahn durch das Restgas im Rohr), \emph{ohne} die Kreisbahn
vorwegzunehmen. Erst danach folgt ein echter Predict-Observe-Explain-Zyklus
im Plenum: die SuS sagen mithilfe der Lorentzkraft und der aus der Mechanik
bekannten Zentripetalkraft eine Kreisbahn voraus, beobachten diese am
Experiment, und erklären anschliessend, wie sich die Elektronen verhalten
(LZ6). Der Gedanke: die Lorentzkraft wird zuerst in ihrer reinsten Form
(eine einzelne freie Ladung) sichtbar gemacht, bevor dieselbe Kraft
anschliessend auf das komplexere Zwei-Leiter-Phänomen (Anziehung/
Abstossung) angewendet wird. Die Rückkehr zu den zwei Drähten (Herleitung
des Ampère'schen Kraftgesetzes und der Anziehungs-/Abstossungsrichtung)
folgt danach. Am Ende der Lektion mündet das Ganze in einen kurzen
Ausblick auf Teil 2, der die Lorentzkraft auf freie Ladungen quantitativ
vertieft (Bahnradius $r=mv/qB$, sechs Anwendungen) -- die qualitative
Kreisbahn-Frage selbst ist nach Teil 1 bereits beantwortet (siehe Offene
Punkte).

**Bereits bekannt (Repetition, nicht neu herzuleiten):** das Magnetfeld
eines geraden, stromdurchflossenen Leiters
($B=\frac{\mu_0}{2\pi}\cdot\frac{I}{r}$, Magnetfelder-Doppellektion);
Feldlinien, Feldrichtung, $\odot$/$\otimes$-Konvention für Stromrichtung;
zwei bereits bekannte rechte-Hand-Regeln (gerader Leiter: Daumen =
Stromrichtung, Finger = Feldrichtung; Spule: Finger = Stromrichtung,
Daumen = Nordpolrichtung) — wichtiger Bezugspunkt, weil mit der
Drei-Finger-Regel dieser Lektion eine \emph{dritte}, andersartige Handregel
hinzukommt (siehe Lernschwierigkeiten), diesmal zusätzlich in zwei
Varianten (rechte Hand für positive, linke Hand für negative
Ladungsträger); Zentripetalkraft (aus Mechanik) -- wird bereits hier für
die qualitative Erklärung der Kreisbahn im Fadenstrahlrohr gebraucht (LZ6)
und in Teil 2 dann quantitativ vertieft (Bahnradius $r=mv/qB$);
\textbf{das Kreuzprodukt inkl.
Betragsformel über den Sinus des Winkels} ($|\vec a\times\vec
b|=a\cdot b\cdot\sin\alpha$, aus Mathematik) — neu bestätigtes Vorwissen,
das den allgemeinen Winkel-Fall mathematisch zugänglich macht.

**Bewusst nicht Teil dieser Einheit (Kernstoff):** die vollständige
Vektorform $\vec F=I\cdot\vec l\times\vec B$ bzw. $\vec F=q\cdot\vec
v\times\vec B$ wird nicht als eigenständiges Lernziel verlangt -- im
Zentrum steht weiterhin der senkrechte Fall ($\vec I\perp\vec B$ bzw.
$\vec v\perp\vec B$) mit der Drei-Finger-Regel, da die Experimente selbst
senkrecht aufgebaut sind. Da die SuS das Kreuzprodukt samt Sinus-
Betragsformel aber bereits kennen, wird die allgemeine Formel
$F=IlB\sin\alpha$ definitiv kurz als \glqq das steckt eigentlich
dahinter\grqq{}-Bemerkung in der Theorie erwähnt (nicht als eigenständiges
Lernziel); entsprechende Aufgaben mit beliebigem Winkel folgen im
Aufgabenblatt. Ebenfalls nicht Teil dieser Einheit: die \textbf{quantitative}
Lorentzkraft auf einzelne \textbf{freie} bewegte Ladungen (Bahnradius
$r=mv/qB$, sechs Anwendungen -- Teil 2), Induktion, Elektromotor-
Funktionsprinzip im Detail (höchstens als motivierender Ausblick erwähnt).
Die \emph{qualitative} Erklärung der Kreisbahn im Fadenstrahlrohr (LZ6) ist
davon ausgenommen und findet bereits in dieser Lektion statt.

## Ausgestaltungsvorschlag: Advance Organizer (Einstieg, 3')

Ziel: In 3 Minuten Interesse wecken und die Roadmap der Lektion zeigen,
\emph{ohne} die Experimente inhaltlich vorwegzunehmen. Statt einer
abstrakten Ankündigung (\glqq heute geht es um Kräfte in Magnetfeldern\grqq{})
zwei konkrete, den SuS vermutlich schon bekannte Alltagsbeispiele als
Aufhänger — eines pro Kraft-Typ dieser Lektion.

\textbf{Rückblick als Einstieg (wichtig).} Bei Magnetfelder haben die SuS
gelernt: bewegte Ladungen (Ströme) erzeugen ein Magnetfeld. Die neue Frage
dieser Lektion dreht das um: Was passiert, wenn eine bewegte Ladung sich
selbst in einem Magnetfeld befindet? Zentral dabei: gemeint ist ein
\textbf{externes} Magnetfeld -- eines, das von aussen kommt (z.\,B. von
einem Permanentmagneten oder einem anderen Leiter) -- \emph{nicht} das
Magnetfeld, das die bewegte Ladung selbst erzeugt. Diese Unterscheidung
sollte explizit angesprochen werden, da sie sonst leicht verwechselt wird
(die SuS kennen aus Magnetfelder nur die Richtung \glqq Ladung/Strom
$\to$ Feld\grqq{}, jetzt kommt \glqq Feld $\to$ Kraft auf die
Ladung\grqq{} dazu).

\textbf{Bild/Beispiel 1 (für die magnetische Kraft, $F=IlB$): Lautsprecher
oder Elektromotor.} In jedem Lautsprecher sitzt eine stromdurchflossene
Spule in einem starken Magnetfeld; fliesst Strom, bewegt sich die Spule
und damit die Membran — genau das erzeugt den Ton. Derselbe Mechanismus
steckt im Elektromotor (Rasierapparat, Ventilator, Fensterheber im Auto,
elektrische Zahnbürste). Frage an die Klasse: \glqq Was hat ein Lautsprecher
mit einem stromdurchflossenen Draht in einem Magnetfeld zu tun?\grqq{}

\textbf{Bild/Beispiel 2 (für die Lorentzkraft, $F=qvB$): Polarlicht
(Nordlicht/Aurora).} Geladene Teilchen aus dem Sonnenwind treffen auf das
Erdmagnetfeld und werden davon auf spiralförmige Bahnen zu den Polen
abgelenkt — dort leuchten sie beim Auftreffen auf die Atmosphäre. Hier
wirkt dieselbe Art Kraft nicht auf einen ganzen Draht, sondern auf
\emph{einzelne} freie geladene Teilchen. Frage an die Klasse: \glqq Warum
bewegen sich diese Teilchen nicht geradeaus, sondern auf einer gekrümmten
Bahn?\grqq{}

**Konkreter Ablauf (ca. 3'):**

- (ca. 40'') Rückblick + neue Frage stellen: bewegte Ladungen erzeugen
  ein Magnetfeld (bekannt) -- was passiert umgekehrt, wenn eine bewegte
  Ladung sich in einem \textbf{externen} Magnetfeld befindet? Explizit
  klarstellen, dass \emph{nicht} das selbst erzeugte Feld gemeint ist.
- (ca. 40'') Beide Bilder zeigen (Folie/Ausdruck/Skizze an der
  Tafel), die beiden Fragen stellen, kurz im Raum stehen lassen -- \emph{ohne}
  aufzulösen. Ziel ist Neugier, keine Antwort.
- (ca. 40'') Überleitung: \glqq Beide Phänomene haben denselben
  Ursprung: eine Kraft, die externe Magnetfelder auf Ströme bzw. auf
  bewegte Ladungen ausüben. Genau die untersuchen wir jetzt zwei
  Doppellektionen lang.\grqq{}
- (ca. 60'') Roadmap als knappe Tafelskizze (3 Stationen), die
  während der ganzen Lektion sichtbar bleiben kann: \glqq Zuerst schauen
  wir uns die Kraft auf den ganzen Leiter an -- die magnetische Kraft,
  wie beim Lautsprecher/Elektromotor. Danach fragen wir, was auf der
  Ebene der einzelnen Ladung passiert -- das ist die Lorentzkraft, wie
  beim Polarlicht. Und in der nächsten Doppellektion schauen wir, was
  passiert, wenn eine Ladung nicht mehr im Leiter gebunden, sondern ganz
  frei ist -- so wie beim Polarlicht oder in einem
  Teilchenbeschleuniger.\grqq{}

\textbf{Weitere mögliche Alltagsbeispiele} (Ersatz oder Ergänzung, falls
Lautsprecher/Elektromotor oder Polarlicht nicht passen oder mehr Zeit zur
Verfügung steht): ein alter Röhrenbildschirm/Röhrenfernseher (Elektronen
werden durch Magnetspulen abgelenkt -- historischer Vorläufer des
Fadenstrahlrohrs, das später in dieser Lektion gezeigt wird, ohne das hier
schon zu verraten); ein Massenspektrometer oder ein Teilchenbeschleuniger
(z.\,B. CERN) als \glqq wozu braucht man das eigentlich in der
Forschung?\grqq{}-Ausblick.

\Methode{A1 Advance Organizer} -- Lehrervortrag mit kurzer
Unterrichtsgespräch-Einlage (die beiden Fragen), Plenum. Explizit keine
inhaltliche Vorwegnahme der Experimente selbst, nur die Struktur und die
Motivation.

## Essentielle Fragen

1. Was passiert mit einem stromdurchflossenen Leiter, wenn er sich in
   einem Magnetfeld befindet — und wie nennt man diese Kraft?
2. Wie findet man die Richtung der magnetischen Kraft — und wie
   unterscheidet sich diese Regel von den beiden bereits bekannten
   rechte-Hand-Regeln?
3. Warum wirkt diese Kraft überhaupt auf den Leiter als Ganzes — was
   passiert dabei auf der Ebene der einzelnen Ladungsträger, und was ist
   eigentlich \glqq die Lorentzkraft\grqq{} in diesem Bild?
4. Wieso ziehen sich zwei parallele stromdurchflossene Leiter manchmal an
   und stossen sich manchmal ab?
5. Wie hängt die Kraft zwischen zwei parallelen Leitern vom Abstand und
   von den beiden Stromstärken ab?
6. Was passiert mit derselben Kraft, wenn die Ladung nicht mehr in einem
   Leiter gebunden, sondern frei ist?

## Operationalisierte Lernziele

- LZ1: die Beobachtungen an der Leiterschaukel und an zwei parallelen
  Leitern beschreiben (Richtung der Auslenkung bzw. Anziehung/Abstossung
  bei unterschiedlicher Strom-/Feldpolung), ohne diese bereits zu
  erklären.
- LZ2: die Formel $F=I\cdot l\cdot B$ für die \textbf{magnetische Kraft}
  auf einen stromdurchflossenen Leiter im (senkrechten) Magnetfeld
  anwenden.
- LZ3: die Richtung der magnetischen Kraft mit der Drei-Finger-Regel
  bestimmen (Daumen = Stromrichtung/Ursache, Zeigefinger = Feldrichtung/
  Vermittlung, Mittelfinger = Kraftrichtung/Wirkung; rechte Hand, da die
  Stromrichtung per Konvention die Bewegungsrichtung positiver
  Ladungsträger ist), und diese explizit von den beiden bereits bekannten
  rechte-Hand-Regeln (gerader Leiter, Spule) unterscheiden. Ab LZ5 kommt
  dieselbe Regel auch als \textbf{linke-Hand-Variante für negative
  Ladungsträger} zum Einsatz.
- LZ4: die eigene Beobachtung am Leiterschaukel-Experiment (LZ1) mithilfe
  von LZ2 und LZ3 (magnetische Kraft, Drei-Finger-Regel) selbst erklären.
- LZ5: die \textbf{Lorentzkraft} $F=q\cdot v\cdot B$ als die Kraft
  herleiten, die auf eine \emph{einzelne} bewegte Ladung wirkt, und ihre
  \textbf{Richtung ebenfalls mit der Drei-Finger-Regel bestimmen} — rechte
  Hand für \emph{positive}, linke Hand für \emph{negative} Ladungen
  (Daumen = Geschwindigkeit $v$ der Ladung statt Stromrichtung), sodass
  sich die Richtung für beide Vorzeichen direkt ablesen lässt, ohne einen
  zusätzlichen \glqq Umkehr\grqq{}-Schritt — und zeigen, dass die
  Summe dieser Einzelkräfte über $Q=I\cdot t$ und $v=l/t$ wieder $F=IlB$
  ergibt. Die magnetische Kraft $F=IlB$ ist also die makroskopische
  Konsequenz der Lorentzkraft für einen Leiter, nicht die Lorentzkraft
  selbst.
- LZ6: die Kreisbewegung der Elektronen im Fadenstrahlrohr
  \textbf{erklären}, indem die Lorentzkraft als \textbf{Zentripetalkraft}
  gedeutet wird (die Lorentzkraft steht stets senkrecht zur Geschwindigkeit
  $v$, ändert also nur die Richtung, nie den Betrag von $v$ — genau das
  ergibt eine Kreisbahn); die Richtung der Kraft und damit die
  Krümmungsrichtung der Bahn mit der linken-Hand-Variante der
  Drei-Finger-Regel bestimmen (Elektronen sind negativ geladen). Im
  Rahmen eines Predict-Observe-Explain-Zyklus im Plenum.
- LZ7: die Kraft zwischen zwei parallelen stromdurchflossenen Leitern
  herleiten, indem die Feldformel des geraden Leiters (Magnetfelder-
  Doppellektion) mit der magnetischen Kraft $F=I\cdot l\cdot B$ kombiniert
  wird ($\frac{F}{l}=\frac{\mu_0}{2\pi}\cdot\frac{I_1\cdot I_2}{r}$).
- LZ8: erklären, wieso gleichgerichtete Ströme sich anziehen und
  entgegengesetzt gerichtete Ströme sich abstossen — mithilfe von LZ5
  (Drei-Finger-Regel an einer einzelnen Ladung im Feld des jeweils anderen
  Leiters), nicht nur formal.

## Voraussehbare Lernschwierigkeiten

1. Verwechslung der jetzt \emph{drei} rechte-Hand-Regeln (gerader Leiter,
   Spule, Drei-Finger-Regel für die magnetische Kraft — später auch für die
   Lorentzkraft wiederverwendet) — insbesondere, dass bei der
   Drei-Finger-Regel drei paarweise senkrechte Finger/Richtungen gebraucht
   werden, nicht eine kreisende Faustbewegung wie bei den ersten beiden
   Regeln.
2. Annahme, die Kraft $F$ wirke in Richtung des Stroms oder in Richtung
   des Feldes, statt senkrecht zu beiden.
3. Die Lorentzkraft $F=qvB$ (LZ5) wird als \glqq zusätzliche, neue
   Formel\grqq{} missverstanden statt als die eigentliche, grundlegendere
   Kraft, aus der sich $F=IlB$ erst ergibt — die Blickrichtung ist also
   $F=qvB\rightarrow F=IlB$ (nicht umgekehrt), auch wenn die Lektion aus
   didaktischen Gründen mit $F=IlB$ beginnt; wichtig, das nach der
   Herleitung explizit richtigzustellen.
4. Bei den zwei parallelen Leitern die Intuition \glqq gleich stösst
   ab\grqq{} (analog zu gleichnamigen Magnetpolen/Ladungen) fälschlich übertragen —
   tatsächlich gilt bei parallelen Strömen das Gegenteil: gleiche
   Richtung zieht an, entgegengesetzte Richtung stösst ab.
5. Verwechslung von $F=I\cdot l\cdot B$ (Kraft auf einen Leiter im Feld)
   mit $B=\frac{\mu_0}{2\pi}\cdot\frac{I}{r}$ (Feld eines geraden
   Leiters) — zwei unterschiedliche Grössen mit ähnlicher Formelstruktur,
   die in dieser Lektion direkt kombiniert werden.
6. Vergessen, dass $F=I\cdot l\cdot B$ hier nur für den Fall $\vec
   I\perp\vec B$ gilt (bewusste Vereinfachung dieser Lektion, siehe
   Abgrenzung).
7. Verwechslung, \emph{welche} Hand bei der Drei-Finger-Regel zu verwenden
   ist: rechte Hand für positive, linke Hand für negative Ladungsträger.
   Insbesondere beim Fadenstrahlrohr die rechte statt der linken Hand auf
   die (negativ geladenen) Elektronen anwenden (LZ5, LZ6) — da beide
   Varianten von Anfang an parallel eingeführt werden, geht es hier nicht
   mehr um ein nachträgliches \glqq Umkehren\grqq{}, sondern um die
   richtige Wahl der Hand.
8. Beim Fadenstrahlrohr annehmen, die Lorentzkraft würde die Elektronen
   abbremsen oder beschleunigen (den Betrag von $v$ ändern), statt zu
   erkennen, dass die Lorentzkraft stets senkrecht zu $v$ wirkt und daher
   nur die Bewegungs\emph{richtung} ändert — genau das macht sie zur
   Zentripetalkraft und erklärt die Kreisbahn (LZ6).

## Beispielkontexte / Aufgabenideen

- **Advance Organizer (ganz zu Beginn der Lektion).** Siehe
  eigener Abschnitt \glqq Ausgestaltungsvorschlag: Advance Organizer\grqq{}
  oben für den vollständigen Vorschlag mit Rückblick und
  Alltagsbeispielen.
- **LZ1** — Zwei reine Beobachtungsstationen, ohne Erklärung: Leiter-
  schaukel-Experiment (umgebauter Magnetfelder-Baukasten: Spule entfernt,
  schaukelförmiger Leiter montiert, Stromkreis umpolbar) und zwei
  parallele stromdurchflossene Drähte. In beiden Fällen nur beobachten
  und notieren, wie sich Auslenkung bzw. Anziehung/Abstossung bei
  unterschiedlicher Strom-/Feldpolung verhält — bewusst als Beobachten-
  zuerst-dann-Erklären angelegt, ähnlich der Ørsted-Demo bei Magnetfelder,
  nicht als vollständiger Predict-Observe-Explain-Zyklus, da den SuS an
  dieser Stelle die Grundlage für eine begründete Vorhersage fehlt.
- **LZ2, LZ3** — Theorie-Input zur magnetischen Kraft ($F=IlB$) und
  Drei-Finger-Regel (rechte Hand), direkt anknüpfend an die gerade
  gemachten Beobachtungen. Kurzer Hinweis, dass die Regel auch für den
  allgemeinen Winkel-Fall gilt ($F=IlB\sin\alpha$, Kreuzprodukt bereits aus
  der Mathematik bekannt), auch wenn die Experimente hier senkrecht
  aufgebaut sind ($\alpha=90^\circ$); entsprechende Aufgaben mit
  beliebigem Winkel folgen im Aufgabenblatt. Ebenfalls kurzer Ausblick,
  dass dieselbe Regel später auch als linke-Hand-Variante für negative
  Ladungsträger verwendet wird.
- **LZ4** — Rückkehr zur Leiterschaukel: SuS erklären ihre eigene
  Beobachtung selbst mit der neuen Formel und der Drei-Finger-Regel.
- **LZ5** — Herleitung der Lorentzkraft: Warum wirkt überhaupt eine Kraft
  auf den ganzen Leiter? Weil sich viele einzelne Ladungsträger im Feld
  bewegen und jede für sich die Lorentzkraft $F=qvB$ erfährt (Richtung mit
  der Drei-Finger-Regel, rechte Hand für positive, linke Hand für negative
  Ladungen); über $Q=It$
  und $v=l/t$ die Summe der Einzelkräfte bilden und zeigen, dass sich
  wieder die magnetische Kraft $F=IlB$ ergibt. Explizit benennen: $F=qvB$
  ist die Lorentzkraft selbst, $F=IlB$ die magnetische Kraft — nur ihre
  Summe für einen Leiter. Eignet sich als gemeinsam entwickelte
  Kurzherleitung im Plenum. Alternative/ergänzende
  Erklärung für die Leiterschaukel: Feldlinien-Betrachtung (\glqq
  Gummifäden\grqq{}-Modell, Kraft in Richtung abnehmender
  Feldliniendichte) als zweiter, anschaulicher Zugang neben der
  Drei-Finger-Regel.
- **LZ6 — Fadenstrahlrohr: erst Aufbau erklären, dann Predict-Observe-
  Explain (Beginn des Lorentzkraft-Teils).** Direkt nach
  der Herleitung von $F=qvB$, in zwei Schritten: (1) \emph{Aufbau
  erklären, ohne die Kreisbahn vorwegzunehmen} — was passiert mit den
  Elektronen: sie werden durch eine Spannung beschleunigt, treten dann in
  ein (näherungsweise homogenes) Magnetfeld ein und werden durch das
  Restgas im Rohr als leuchtende Bahn sichtbar gemacht. Lehrervortrag,
  Tafelskizze, Plenum. (2) \emph{Predict-Observe-Explain im Plenum}: die
  SuS sagen mithilfe von $F=qvB$ (Kraft stets senkrecht zu $v$) und der
  aus der Mechanik bekannten Zentripetalkraft eine Kreisbahn voraus
  (\emph{Predict}), das Feld wird eingeschaltet und die Kreisbahn sichtbar
  (\emph{Observe}), danach erklären die SuS im Plenum, wie sich die
  Elektronen verhalten: die Lorentzkraft wirkt als Zentripetalkraft, die
  Krümmungsrichtung folgt aus der linken-Hand-Variante der
  Drei-Finger-Regel, da Elektronen negativ geladen sind (\emph{Explain},
  LZ6, Lernschwierigkeiten 7+8). \textbf{Konsequenz für Teil 2, siehe
  Offene Punkte:} die qualitative Kreisbahn-Frage ist damit bereits in
  Teil 1 beantwortet und gezeigt.
- **LZ7, LZ8** — Rückkehr zu den zwei Drähten, jetzt mikroskopisch
  erklärt: Feld des ersten Leiters am Ort des zweiten
  ($B_1(r)=\frac{\mu_0}{2\pi}\cdot\frac{I_1}{r}$, bereits bekannt)
  einsetzen in die Kraftformel ($F=I_2\cdot l\cdot B_1$) ergibt
  $\frac{F}{l}=\frac{\mu_0}{2\pi}\cdot\frac{I_1\cdot I_2}{r}$ (LZ7).
  Richtung (Anziehung bei gleicher, Abstossung bei entgegengesetzter
  Stromrichtung) über die Drei-Finger-Regel an einer einzelnen Ladung im Feld des
  jeweils anderen Leiters begründen (LZ8) — dieselbe mikroskopische
  Perspektive wie beim Fadenstrahlrohr und bei LZ5, jetzt auf das zweite
  Phänomen angewendet. Optional als motivierender historischer Kontext:
  dieser Aufbau diente früher direkt zur Definition der Einheit Ampere
  (vor der SI-Neudefinition 2019) — Quelle/Details noch zu verifizieren.
- Abschliessend ein paar Anwendungsaufgaben zur magnetischen Kraft
  ($F=I\cdot l\cdot B$), zur Lorentzkraft und zur Drei-Finger-Regel
  (inkl. rechte-/linke-Hand-Wahl je nach Vorzeichen) — im Aufgabenblatt
  ergänzt um Aufgaben mit beliebigem Winkel ($F=IlB\sin\alpha$).

## Kerninhalte und Leitfragen je Phase

Kurzüberblick über die wichtigste inhaltliche Botschaft und die
Leitfrage jeder Phase aus Abschnitt 2 des Lektionsplans (`.tex`) -- als
schneller Fahrplan, auch für die spätere Arbeitsblatt-Erstellung.

- **Einstieg (Advance Organizer).** Kerninhalt: bewegte Ladungen erzeugen
  ein Magnetfeld (bekannt) -- was passiert umgekehrt, wenn eine bewegte
  Ladung sich in einem \emph{externen} Magnetfeld befindet? Dieselbe Kraft
  steckt in Lautsprecher/Elektromotor und in Polarlichtern. Leitfrage:
  \glqq Was passiert, wenn eine bewegte Ladung sich in einem externen
  (nicht selbst erzeugten) Magnetfeld befindet?\grqq{}
- **Aktivierung: Leiterschaukel.** Kerninhalt: ein stromdurchflossener
  Leiter im Feld wird ausgelenkt, je nach Strom-/Feldrichtung anders.
  Leitfrage: \glqq Was passiert mit einem stromdurchflossenen Leiter im
  Magnetfeld?\grqq{}
- **Aktivierung: zwei Leiter.** Kerninhalt: zwei stromdurchflossene
  Leiter ziehen sich an oder stossen sich ab. Leitfrage: \glqq Warum
  ziehen sich zwei stromdurchflossene Leiter manchmal an und stossen sich
  manchmal ab?\grqq{}
- **Theorie: Magnetische Kraft.** Kerninhalt: $F=IlB$ als Modell, Drei-
  Finger-Regel (rechte Hand) für die Richtung, allgemeiner Winkel-Fall
  kurz erwähnt. Leitfrage: \glqq Wie berechnet man die Kraft auf den
  Leiter, und wie findet man ihre Richtung?\grqq{}
- **Rückkehr: Leiterschaukel erklären.** Kerninhalt: die eigene
  Beobachtung wird mit Formel und Regel selbst erklärt. Leitfrage:
  \glqq Kann ich meine eigene Beobachtung jetzt selbst erklären?\grqq{}
- **Übung.** Kerninhalt: Anwendung von Formel und Drei-Finger-Regel an
  Beispielen. Leitfrage: \glqq Wie wende ich Formel und Regel sicher
  an?\grqq{}
- **Vertiefung: Herleitung der Lorentzkraft.** Kerninhalt: $F=IlB$ ist die
  Summe der Lorentzkraft $F=qvB$ über alle einzelnen Ladungsträger.
  Leitfrage: \glqq Warum wirkt die Kraft überhaupt auf den ganzen Leiter
  -- was passiert dabei auf der Ebene der einzelnen Ladungen?\grqq{}
- **Theorie: Wie funktioniert das Fadenstrahlrohr?** Kerninhalt: Aufbau
  und Funktionsweise (Beschleunigung, Eintritt ins Feld, Sichtbarmachung
  durch Restgas) -- ohne das Ergebnis vorwegzunehmen. Leitfrage: \glqq Wie
  kann man die Bewegung einer einzelnen freien Ladung überhaupt sichtbar
  machen?\grqq{}
- **POE: Fadenstrahlrohr.** Kerninhalt: die Lorentzkraft wirkt als
  Zentripetalkraft und erzeugt eine Kreisbahn; Richtung über die linke
  Hand (negative Ladung). Leitfrage: \glqq Wie bewegt sich eine freie
  Ladung, auf die die Lorentzkraft wirkt?\grqq{}
- **Theorie: Rückkehr zu den zwei Leitern (Herleitung).** Kerninhalt: das
  Kraftgesetz zwischen zwei parallelen Leitern ergibt sich aus Feldformel
  und magnetischer Kraft kombiniert. Leitfrage: \glqq Wie hängt die Kraft
  zwischen zwei Leitern von Abstand und Stromstärken ab?\grqq{}
- **Theorie: Anziehung vs. Abstossung.** Kerninhalt: mikroskopische
  Erklärung über die Lorentzkraft auf eine Ladung im Feld des
  Nachbarleiters. Leitfrage: \glqq Warum genau zieht gleiche Stromrichtung
  an, entgegengesetzte stösst ab?\grqq{}
- **Ausblick: historischer Kontext (optional).** Kerninhalt: dieser Aufbau
  diente früher direkt zur Definition der Einheit Ampere. Leitfrage:
  \glqq Wie wurde die Stromstärke-Einheit eigentlich früher
  definiert?\grqq{}
- **Abschluss.** Kerninhalt: Zusammenfassung, Ausblick auf die
  quantitative Vertiefung in Teil 2. Leitfrage: \glqq Was passiert mit
  derselben Kraft, wenn die Ladung ganz frei ist?\grqq{}

## Offene Punkte

- **Konsequenz für Teil 2:** Da vor dem Fadenstrahlrohr
  zuerst der Aufbau erklärt und danach ein vollständiger
  Predict-Observe-Explain-Zyklus mit demselben Experiment durchgeführt
  wird (LZ6), ist die qualitative Frage \glqq bewegt sich die Ladung im
  Kreis?\grqq{} nach Teil 1 bereits beantwortet und gezeigt. Der für Teil 2
  geplante Einstieg (`diskussion-teil1-teil2-inhalte.md`) darf diese Frage
  deshalb nicht nochmals als Überraschung anlegen, sondern sollte direkt
  auf die \textbf{quantitative} Vertiefung fokussieren: Herleitung des
  Bahnradius ($r=mv/qB$) und seine Abhängigkeit von Spannung, Feldstärke
  und spezifischer Ladung, sowie die sechs Anwendungen. Bitte
  `diskussion-teil1-teil2-inhalte.md` bei der Feinplanung von Teil 2
  entsprechend anpassen.
