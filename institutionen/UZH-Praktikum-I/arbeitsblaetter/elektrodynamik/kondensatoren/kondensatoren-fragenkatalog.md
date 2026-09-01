# Fragenkatalog — Kondensatoren (mit Antworten)

Mögliche Impulsfragen der Lehrperson und erwartbare Schülerfragen zu jeder
Phase der Doppellektion, mit Antwort und physikalischer Erklärung für die
Vorbereitung. Reihenfolge und Phasennamen entsprechen
`kondensatoren-verlaufsplanung.md`/`.tex` (dort stehen nur noch Zeit,
Inhalt, Tätigkeiten und Material — die Fragen selbst stehen ausschliesslich
hier).

## 1. Einstieg

### Fragen der Lehrperson

**Frage:** Wozu braucht man einen Kondensator, wenn es doch schon Batterien gibt?
**Antwort:** Weil ein Kondensator sehr schnell sehr viel Ladung abgeben kann, eine Batterie aber nur langsam Energie liefert.
**Erklärung:** Batterien liefern Energie über chemische Reaktionen, die Zeit brauchen und daher nur eine begrenzte Stromstärke erzeugen können. Ein Kondensator speichert Ladung rein elektrostatisch auf zwei Platten und kann diese praktisch verzögerungsfrei (innerhalb von Millisekunden) wieder abgeben. Für Anwendungen, die einen sehr kurzen, sehr starken Stromstoss brauchen (z. B. einen Blitz oder einen Defibrillator-Schock), ist das entscheidend.

**Frage:** Was muss ein Defibrillator können, das eine normale Batterie nicht kann?
**Antwort:** Er muss die gespeicherte Energie in wenigen Millisekunden als starken Stromstoss abgeben.
**Erklärung:** Ein Defibrillator lädt einen Kondensator langsam über mehrere Sekunden aus der Batterie auf und entlädt ihn dann schlagartig über den Patienten. Nur ein Kondensator kann diese hohe Momentanleistung liefern; die Batterie liefert nur die (kleinere) Ladeleistung.

### Fragen der Schülerinnen und Schüler

**Frage:** Ist ein Kondensator einfach eine kleine, schnelle Batterie?
**Antwort:** Nein — ein Kondensator speichert Ladung rein elektrostatisch (getrennte Ladungen auf zwei Platten), eine Batterie erzeugt Spannung durch eine chemische Reaktion.
**Erklärung:** Die unterschiedlichen Speichermechanismen erklären auch die unterschiedlichen Eigenschaften: Kondensatoren haben typischerweise eine viel geringere Energiedichte als Batterien, können aber viel schneller ge- und entladen werden.

**Frage:** Warum ein eigenes Bauteil — kann die Batterie das nicht einfach schneller machen?
**Antwort:** Nein, die chemische Reaktion in einer Batterie hat eine physikalisch begrenzte Reaktionsgeschwindigkeit, die sich nicht beliebig beschleunigen lässt.
**Erklärung:** Die Ionenbewegung und die Ladungsübertragung an den Elektroden brauchen Zeit; ein zu schneller Entladeversuch würde die Batterie beschädigen, liefert aber immer noch nicht annähernd die Momentanleistung eines Kondensators.

## 2. Theorie 1 — Kondensator, Kapazität, Wassertankanalogie

### Fragen der Lehrperson

**Frage:** Was bedeutet es, dass die Ladung „getrennt“ gespeichert wird?
**Antwort:** Auf der einen Platte sammelt sich die positive Ladung $+Q$, auf der anderen die gleich grosse negative Ladung $-Q$ — insgesamt bleibt der Kondensator neutral.
**Erklärung:** Die Batterie pumpt Elektronen von einer Platte zur anderen; dadurch entsteht ein Ladungsüberschuss auf der einen und ein -mangel auf der anderen Platte. Die Energie steckt im elektrischen Feld zwischen den Platten, nicht in einem Ladungsüberschuss des gesamten Bauteils.

**Frage:** Warum definieren wir $C=Q/U$ zuerst formal, bevor wir die Wassertank-Analogie einführen?
**Antwort:** Damit die Analogie an eine bereits klar definierte physikalische Grösse angehängt wird, statt umgekehrt aus einem Bild eine Formel zu „erraten“.
**Erklärung:** Analogien helfen beim intuitiven Verständnis, sind aber keine Herleitung. Wenn die Formel zuerst steht, wissen die SuS genau, welche Grösse ($C$) durch welches Bildelement (Grundfläche des Tanks) dargestellt wird, statt die Analogie als Quelle der Formel misszuverstehen.

**Frage:** Was entspricht der Grundfläche des Tanks beim Kondensator? Was dem Füllstand?
**Antwort:** Die Grundfläche entspricht der Kapazität $C$, der Füllstand der Spannung $U$.
**Erklärung:** Ein Tank mit grosser Grundfläche braucht viel Wasser (Ladung $Q$), um den Füllstand (Spannung $U$) um einen bestimmten Betrag zu erhöhen — genauso braucht ein Kondensator mit grosser Kapazität viel Ladung, um die Spannung zu erhöhen ($Q=C\cdot U$).

### Fragen der Schülerinnen und Schüler

**Frage:** Ist die Kapazität $C$ dasselbe wie die Einheit Coulomb?
**Antwort:** Nein — $C$ ist hier das Formelzeichen für die physikalische Grösse Kapazität (Einheit Farad), Coulomb ist die Einheit der Ladung $Q$.
**Erklärung:** Die Doppelbedeutung des Buchstabens C (Formelzeichen für Kapazität UND Abkürzung für die Einheit Coulomb) ist eine bekannte Verwechslungsquelle — deshalb lohnt es sich, das explizit anzusprechen: „1 Farad = 1 Coulomb pro Volt“, zwei völlig unterschiedliche Grössen mit ähnlichem Symbol.

**Frage:** Wenn eine Platte $+Q$ und die andere $-Q$ trägt — ist der Kondensator dann nicht einfach neutral, speichert er also gar nichts?
**Antwort:** Nach aussen ist er neutral, aber er speichert trotzdem Energie — diese steckt im elektrischen Feld zwischen den getrennten Ladungen.
**Erklärung:** Die Ladungstrennung selbst hat gegen die anziehende Coulombkraft Arbeit gekostet (die Batterie musste diese Arbeit verrichten); genau diese Arbeit ist als Feldenergie im Kondensator gespeichert.

## 3. Sortieraufgabe — Wassertank vs. Kondensator

### Fragen der Lehrperson

**Frage:** Welche Grösse entspricht der Kapazität — warum genau diese und nicht die Wassermenge?
**Antwort:** Die Kapazität entspricht der Grundfläche des Tanks, nicht der Wassermenge.
**Erklärung:** Die Wassermenge (Ladung $Q$) hängt sowohl von der Grundfläche (Kapazität $C$) als auch vom Füllstand (Spannung $U$) ab — $Q=C\cdot U$. Die Grundfläche allein (die Kapazität) ist eine feste Eigenschaft des Tanks bzw. Kondensators, unabhängig davon, wie viel Wasser/Ladung gerade drin ist.

### Fragen der Schülerinnen und Schüler

**Frage:** Ist die Wassermenge im Tank jetzt die Ladung oder die Spannung?
**Antwort:** Die Wassermenge entspricht der Ladung $Q$, der Füllstand (die Höhe der Wassersäule) entspricht der Spannung $U$.
**Erklärung:** Genau wie der Druck am Boden eines Tanks mit dem Füllstand steigt, steigt die Spannung am Kondensator mit der gespeicherten Ladung — bei fester Grundfläche/Kapazität.

**Frage:** Was ist beim Kondensator das Gegenstück zum Zu-/Abfluss?
**Antwort:** Der elektrische Strom, der die Ladung auf die Platten transportiert bzw. von ihnen wegführt.
**Erklärung:** Genau wie Wasser durch ein Rohr in den Tank fliesst, fliesst beim Laden/Entladen ein (zeitlich abnehmender) Strom in bzw. aus dem Kondensator.

## 4. Herleitung: Coulombkraft → Spannung

### Fragen der Lehrperson

**Frage:** Welche Formel aus der Mechanik verbindet Kraft und Arbeit?
**Antwort:** $W=F\cdot s$ (Arbeit gleich Kraft mal Weg, für eine konstante Kraft in Wegrichtung).
**Erklärung:** Diese Formel aus der Mechanik (Translationsarbeit) lässt sich direkt aufs elektrische Feld übertragen, wenn man die Coulombkraft als „Kraft“ und den Plattenabstand als „Weg“ einsetzt.

**Frage:** Warum dürft ihr hier $W=F\cdot s$ direkt anwenden, ohne zu integrieren?
**Antwort:** Weil das Feld zwischen den Platten eines Plattenkondensators homogen ist — die Kraft auf die Probeladung ist über die ganze Strecke konstant.
**Erklärung:** Bei einer Punktladung nimmt die Coulombkraft mit $1/r^2$ ab, weshalb man dort integrieren muss ($W=\int F\,\mathrm{d}r$). Im homogenen Feld des Plattenkondensators ist $F=E\cdot q$ über den ganzen Abstand $d$ konstant, daher genügt die einfache Multiplikation.

### Fragen der Schülerinnen und Schüler

**Frage:** Warum ist die Kraft hier konstant — bei einer Punktladung war sie das doch nicht?
**Antwort:** Weil das E-Feld zwischen zwei grossen, parallelen Platten (fern von den Rändern) überall gleich stark und gleich gerichtet ist — im Gegensatz zum radialsymmetrischen Feld einer Punktladung.
**Erklärung:** Diese Homogenität des Feldes ist eine Eigenschaft des Plattenkondensators (Näherung, Randeffekte vernachlässigt) und der Grund, warum viele Formeln beim Plattenkondensator einfacher sind als beim Feld einer Punktladung.

**Frage:** Ist die Spannung $U$ jetzt dasselbe wie das Potential $\varphi$?
**Antwort:** Nicht ganz — $U$ ist die Potentialdifferenz $\Delta\varphi$ zwischen den beiden Platten, nicht ein einzelnes Potential.
**Erklärung:** Das Potential $\varphi$ ist immer nur bis auf eine additive Konstante definiert (man muss einen Nullpunkt festlegen); die Spannung $U=\Delta\varphi$ ist dagegen eindeutig, weil sich die willkürliche Konstante bei der Differenzbildung heraushebt.

## 5. Theorie 2 — E-Feld-Baustein repetieren

### Fragen der Lehrperson

**Frage:** Warum hängt $E=Q/(\varepsilon_0\cdot A)$ nicht vom Abstand zur Platte ab?
**Antwort:** Weil das Feld eines (unendlich ausgedehnten) geladenen Plattenpaars überall zwischen den Platten gleich stark ist, unabhängig vom Abstand zu einer der beiden Platten.
**Erklärung:** Das ist eine direkte Folge der Homogenität des Feldes im Plattenkondensator (siehe Phase 4) — anders als bei einer Punktladung, deren Feld mit $1/r^2$ abnimmt.

**Frage:** Was bedeutet „Randeffekte vernachlässigt“ ganz konkret?
**Antwort:** Es wird angenommen, dass der Plattenabstand $d$ viel kleiner ist als die Plattenausdehnung, sodass das Feld nur im Randbereich der Platten von der idealen, homogenen Form abweicht.
**Erklärung:** In der Realität „bauchen“ die Feldlinien an den Plattenrändern leicht nach aussen aus (Streufeld); für $d \ll$ Plattengrösse ist dieser Effekt auf einen kleinen Randstreifen beschränkt und wird für die Formel $E=Q/(\varepsilon_0\cdot A)$ vernachlässigt.

### Fragen der Schülerinnen und Schüler

**Frage:** Gilt diese Formel auch ausserhalb der Platten?
**Antwort:** Nein — ausserhalb eines idealen (unendlich ausgedehnten) Plattenkondensators ist das Feld null.
**Erklärung:** Die Feldbeiträge der beiden entgegengesetzt geladenen Platten heben sich ausserhalb exakt auf, während sie sich im Innenraum addieren — deshalb ist das Feld nur zwischen den Platten vorhanden (in der Idealisierung ohne Randeffekte).

## 6. Experiment: Kondensator & Lichtquelle

### Fragen der Lehrperson

**Frage:** Leuchtet die Lampe bei allen Kondensatoren gleich lange?
**Antwort:** Nein — ein Kondensator mit grösserer Kapazität lässt die Lampe länger leuchten, da er mehr Ladung/Energie speichert.
**Erklärung:** Die gespeicherte Energie eines Kondensators wächst mit der Kapazität (bei gleicher Ladespannung); mehr gespeicherte Energie bedeutet, dass die Lampe länger mit Strom versorgt werden kann, bevor der Kondensator entladen ist.

**Frage:** Begründet eure Vorhersage mit der Wassertank-Analogie, bevor wir es ausprobieren.
**Antwort:** Ein Tank mit grösserer Grundfläche (Kapazität) enthält bei gleichem Füllstand (Spannung) mehr Wasser (Ladung) und kann daher länger einen Abfluss (Strom) speisen.
**Erklärung:** Diese Übertragung der Analogie testet direkt, ob die SuS den Zusammenhang zwischen Kapazität und gespeicherter Ladungsmenge verinnerlicht haben, nicht nur auswendig gelernt.

### Fragen der Schülerinnen und Schüler

**Frage:** Wird die Lampe bei mehr Kapazität heller oder nur länger hell?
**Antwort:** Nur länger — die Anfangshelligkeit hängt von der Ladespannung ab (gleich für alle Kondensatoren), nicht von der Kapazität.
**Erklärung:** Die anfängliche Stromstärke direkt nach dem Umschalten wird durch die Ladespannung und den Lampenwiderstand bestimmt, nicht durch $C$. Erst im Zeitverlauf zeigt sich der Unterschied: Der grössere Kondensator hält die Spannung (und damit die Helligkeit) länger aufrecht.

**Frage:** Warum geht sie nicht sofort aus, sondern wird langsam dunkler?
**Antwort:** Weil sich der Kondensator nicht schlagartig, sondern kontinuierlich über die Lampe entlädt — mit sinkender Spannung sinkt auch der Strom und damit die Helligkeit.
**Erklärung:** Das ist das charakteristische exponentielle Entladeverhalten eines Kondensators (RC-Entladung) — ein Vorgriff auf die spätere Behandlung von Lade-/Entladekurven, hier nur qualitativ beobachtet.

## 7. Lernaufgabe Teil 1 — Q, U, C

### Fragen der Lehrperson

**Frage:** Was zeigt euch die Steigung eurer Trendlinie physikalisch?
**Antwort:** Die Steigung der $Q$-$U$-Trendlinie entspricht der Kapazität $C$, denn $Q=C\cdot U$ ist eine Ursprungsgerade mit Steigung $C$.
**Erklärung:** Da $Q$ proportional zu $U$ ist ($C$ ist bei fester Geometrie konstant), lässt sich $C$ direkt aus der gemessenen Steigung ablesen — eine praktische Anwendung der Definition $C=Q/U$ als linearer Zusammenhang.

### Fragen der Schülerinnen und Schüler

**Frage:** Wie lesen wir die Spannung mit dem Voltmeter der Simulation genau ab?
**Antwort:** Das Voltmeter in der PhET-Simulation zeigt die Spannung direkt digital an, wenn seine Messspitzen an die beiden Kondensatorplatten angelegt werden.
**Erklärung:** Eine technische Bedienfrage zur Simulation, keine physikalische Verständnisfrage — am besten kurz an der Simulation selbst vorführen.

**Frage:** Müssen die Messpunkte exakt durch den Ursprung gehen?
**Antwort:** Idealerweise ja (bei $Q=0$ ist $U=0$), aber Mess-/Ableseungenauigkeiten können zu einer kleinen Abweichung führen — das ist normal und kein Fehler.
**Erklärung:** Eine gute Gelegenheit, um über Messungenauigkeiten und die Rolle einer Trendlinie (Ausgleichsgerade statt exaktem Verbindungslinienzug) zu sprechen.

## 8. Lernaufgabe Teil 2 — A, d, Herleitung, ε₀-Vergleich

### Fragen der Lehrperson

**Frage:** Ihr habt $C\sim A$ und $C\sim 1/d$ gefunden — wie könnt ihr das mit $E=Q/(\varepsilon_0\cdot A)$ und $U=E\cdot d$ kombinieren?
**Antwort:** Aus $U=E\cdot d=\dfrac{Q}{\varepsilon_0 A}\cdot d$ folgt $Q=U\cdot\varepsilon_0\cdot A/d$, und mit $C=Q/U$ ergibt sich $C=\varepsilon_0\cdot A/d$.
**Erklärung:** Das ist die eigentliche Herleitung der Plattenkondensator-Formel: Die empirisch gefundenen Proportionalitäten ($C\sim A$, $C\sim 1/d$) werden mit den bereits bekannten Formeln für $E$ und $U$ kombiniert, um die vollständige Formel inklusive der Konstante $\varepsilon_0$ herzuleiten.

**Frage:** Euer berechnetes $\varepsilon_0$ weicht vom Literaturwert ab — woran könnte das liegen?
**Antwort:** Mögliche Ursachen sind Ablesefehler bei den Simulationswerten, eine zu kleine Anzahl Messpunkte, oder Rundungsfehler bei der Berechnung.
**Erklärung:** Diese Frage regt zur kritischen Reflexion über Messgenauigkeit an — wichtig ist, dass die SuS erkennen, dass eine Abweichung von wenigen Prozent normal und kein Zeichen eines grundsätzlichen Fehlers ist.

### Fragen der Schülerinnen und Schüler

**Frage:** Wir haben $Q=U\cdot\varepsilon_0\cdot A/d$ — wie kommen wir jetzt auf $C$?
**Antwort:** Durch Einsetzen in die Definition $C=Q/U$: $C=(U\cdot\varepsilon_0\cdot A/d)/U=\varepsilon_0\cdot A/d$.
**Erklärung:** Das $U$ kürzt sich heraus — das zeigt, dass $C$ tatsächlich unabhängig von der momentanen Ladespannung ist und nur von der Geometrie ($A$, $d$) und der Naturkonstante $\varepsilon_0$ abhängt, wie es für eine „Kapazität“ sein muss.

**Frage:** Ist eine Abweichung von 10 % vom Literaturwert schlimm?
**Antwort:** Nein, das ist für eine Messung mit einer Simulation und wenigen Messpunkten ein durchaus akzeptables Ergebnis.
**Erklärung:** Wichtiger als die exakte Zahl ist, dass die Grössenordnung stimmt ($\varepsilon_0\approx 8{,}85\cdot 10^{-12}\ \mathrm{F/m}$) und dass die SuS die Messmethode korrekt angewendet haben.

## 9. Lernaufgabe Teil 3 — Kondensator von der Batterie getrennt

### Fragen der Lehrperson

**Frage:** Was genau ändert sich, wenn ihr die Batterie trennt und dann $d$ verändert — und was bleibt konstant? Warum?
**Antwort:** Die Ladung $Q$ bleibt konstant (sie kann nicht mehr abfliessen oder nachfliessen), die Spannung $U$ ändert sich dagegen mit $d$.
**Erklärung:** Ohne Batterie gibt es keinen Ladungsaustausch mehr mit dem Kondensator — $Q$ ist „eingesperrt“. Da $C=\varepsilon_0\cdot A/d$ von $d$ abhängt, ändert sich $C$, und wegen $U=Q/C$ ändert sich dann zwangsläufig auch $U$ bei konstantem $Q$.

### Fragen der Schülerinnen und Schüler

**Frage:** Warum ändert sich $U$, wenn $Q$ doch konstant bleiben soll?
**Antwort:** Weil sich mit $d$ auch die Kapazität $C$ ändert, und $U=Q/C$ — bei konstantem $Q$ folgt aus einer Änderung von $C$ automatisch eine Änderung von $U$.
**Erklärung:** Dieser Fall (Batterie getrennt, $Q=\text{const.}$) steht bewusst im Kontrast zum Fall mit angeschlossener Batterie ($U=\text{const.}$, siehe Dielektrikum-Herleitung) — ein häufiger Verwechslungspunkt, welche Grösse in welchem Szenario konstant bleibt.

## 10. Lernaufgabe Teil 4 — Light-Bulb-Screen

### Fragen der Lehrperson

**Frage:** Bestätigt das eure Vorhersage aus dem Demoversuch (Phase 6)?
**Antwort:** Ja — auch hier zeigt sich, dass mehr Kapazität nur eine längere, nicht eine hellere Anfangsleuchtdauer bewirkt.
**Erklärung:** Diese Simulationsaufgabe dient als quantitative Bestätigung der bereits im Demoversuch qualitativ beobachteten Erkenntnis.

### Fragen der Schülerinnen und Schüler

**Frage:** Warum leuchtet die Glühbirne bei grösserer Kapazität nicht heller, sondern nur länger?
**Antwort:** Weil die anfängliche Stromstärke (und damit Helligkeit) nur von der Ladespannung und dem Lampenwiderstand abhängt, nicht von der Kapazität.
**Erklärung:** Siehe Phase 6 — die Kapazität bestimmt nur, wie lange diese Anfangsleistung aufrechterhalten werden kann (mehr gespeicherte Ladung reicht länger), nicht wie gross sie zu Beginn ist.

## 11. Theorie 3 — Dielektrikum

### Fragen der Lehrperson

**Frage:** Was passiert mit den Molekülen im Dielektrikum, wenn ein Feld anliegt?
**Antwort:** Die Moleküle werden polarisiert (bzw. ihre permanenten Dipole ausgerichtet) — die positiven und negativen Ladungsschwerpunkte verschieben sich leicht gegeneinander.
**Erklärung:** Je nach Material entsteht diese Polarisation durch Verschiebung der Elektronenhülle relativ zum Kern (induzierte Dipole) oder durch Ausrichtung bereits vorhandener permanenter Dipole (z. B. bei Wassermolekülen) entlang des äusseren Feldes.

**Frage:** Warum bleibt im Inneren des Dielektrikums keine Nettoladung übrig, an den Rändern aber schon?
**Antwort:** Im Inneren heben sich die positiven und negativen Enden benachbarter Dipole gegenseitig auf, an den Aussenflächen (den Rändern) bleibt dagegen eine unausgeglichene Ladungsschicht übrig.
**Erklärung:** Stellt man sich eine Kette aus Dipolen vor, liegt das negative Ende eines Dipols immer direkt neben dem positiven Ende des nächsten — diese heben sich auf. Nur ganz am Rand der Kette (an der Grenzfläche zur Metallplatte) bleibt eine Ladung ohne Gegenstück übrig: die sogenannte Polarisationsladung.

### Fragen der Schülerinnen und Schüler

**Frage:** Leitet das Dielektrikum dann nicht eigentlich Strom, wenn sich Ladungen verschieben?
**Antwort:** Nein — die Ladungen verschieben sich nur minimal innerhalb ihrer Moleküle (Polarisation), sie fliessen nicht als freier Strom durch das Material wie in einem Leiter.
**Erklärung:** Ein Dielektrikum ist ein Isolator: Es hat keine frei beweglichen Ladungsträger. Die Polarisation ist eine lokale, mikroskopische Verschiebung gebundener Ladung, kein makroskopischer Ladungstransport.

## 12. Herleitung: Kapazität mit Dielektrikum

### Fragen der Lehrperson

**Frage:** Warum muss das Gesamtfeld gleich bleiben, wenn die Batterie $U$ und der Abstand $d$ konstant hält?
**Antwort:** Weil $U=E\cdot d$ — solange $U$ und $d$ fest vorgegeben sind, ist auch $E=U/d$ durch diese beiden Grössen zwingend festgelegt.
**Erklärung:** Dieser Zusammenhang ist die zentrale Stellschraube der Herleitung: Obwohl das Dielektrikum ein eigenes Gegenfeld (Polarisationsfeld) erzeugt, das dem äusseren Feld entgegenwirkt, muss die Batterie diesem Effekt durch Nachpumpen von zusätzlicher Ladung entgegenwirken, damit $E=U/d$ konstant bleibt.

**Frage:** Was bedeutet $\varepsilon_r:=C/C_0$ in Worten?
**Antwort:** $\varepsilon_r$ gibt an, um welchen Faktor sich die Kapazität durch das Einfügen des Dielektrikums vergrössert, verglichen mit dem leeren Kondensator ($C_0$).
**Erklärung:** $\varepsilon_r$ (die relative Permittivität) ist eine dimensionslose Materialkonstante des Dielektrikums; sie ist immer grösser als 1, da ein Dielektrikum die Kapazität stets erhöht (nie verringert).

### Fragen der Schülerinnen und Schüler

**Frage:** Warum pumpt die Batterie mehr Ladung nach, wenn das Feld doch durch die Polarisation eigentlich schwächer werden sollte?
**Antwort:** Weil die Batterie die Spannung $U$ (und damit über $U=E\cdot d$ auch das Gesamtfeld $E$) konstant hält — sie kompensiert das schwächende Polarisationsfeld, indem sie zusätzliche freie Ladung auf die Platten pumpt.
**Erklärung:** Ohne Nachpumpen würde das Polarisationsfeld das Gesamtfeld tatsächlich schwächen und damit auch $U$ sinken lassen — das widerspräche aber der Vorgabe $U=\text{const.}$ der angeschlossenen Batterie. Die Batterie „reagiert“ also, indem sie mehr Ladung $Q$ liefert, bis $E$ (und damit $U$) wieder auf dem ursprünglichen Wert ist.

**Frage:** Ist $\varepsilon_r$ immer grösser als 1?
**Antwort:** Ja — jedes reale Dielektrikum erhöht die Kapazität, $\varepsilon_r=1$ entspricht dem Grenzfall Vakuum (kein Dielektrikum).
**Erklärung:** Da die Polarisation das Feld nur abschwächen, nie verstärken kann (das würde bedeuten, die Batterie müsste Ladung wieder abziehen), ist $C$ stets $\geq C_0$, also $\varepsilon_r\geq 1$.
