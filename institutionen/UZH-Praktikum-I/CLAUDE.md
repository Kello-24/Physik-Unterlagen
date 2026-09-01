# UZH Praktikum I — institutionsspezifische Konventionen

Diese Datei ergänzt das Root-`CLAUDE.md` für Material, das im Rahmen des
Praktikums I bei Sara Romer Urban (Kantonsschule im Lee, HS2026) entsteht.
Alles im Root-`CLAUDE.md` (Engine/Sprache, `siunitx`, `tikz`/`circuitikz`,
`exam`-Klasse, Schritt-für-Schritt-Herleitungen, Swiss-Orthographie-Regel
usw.) gilt weiterhin unverändert. Diese Datei beschreibt nur, was hier
anders läuft als beim KFR-Workflow.

Den narrativen Gesamtplan (Kontext, Themenliste, aktueller Stand) siehe
`PLAN_Dokumentengenerierung.md` im selben Ordner — dort zuerst lesen, wenn
du neu in diesem Chat/Ordner bist.

## Grundeinheit: die Doppellektion, nicht das Thema

Anders als der KFR-Backward-Design-Workflow (der ein ganzes Thema über
mehrere Lektionen hinweg plant, mit eigenem Stufe-1/2/3-Aufbau) plant jedes
Dokument hier genau **eine Doppellektion** (2× 45 Min.). Jedes Dokument
beginnt mit den Lernzielen für genau diese Doppellektion — nicht für ein
übergeordnetes Thema. Wo ein Thema mehrere Doppellektionen braucht (z. B.
Elektrodynamik/Lorentzkraft), wird es in nummerierte Teile aufgeteilt
(`lorentzkraft-teil-1`, `lorentzkraft-teil-2`, ...), jeder Teil ein eigenes
Dokument mit eigenen Lernzielen.

## Zwei Dokumenttypen pro Thema

Sara Romer Urban möchte die gleiche Struktur wie in ihrem eigenen
Material. Die Zuordnung eines Aufgabe zu einem der beiden Dokumente richtet
sich nach dem **eingesetzten Werkzeug, nicht nach dem Zeitpunkt** der
Bearbeitung:

- **Arbeitsblatt**: das in der Lektion eingesetzte Papier-Material —
  Theorie, Herleitungen, Sortieraufgaben, Experimente/Demoversuche und
  alle sonstigen Aufgaben, die ohne Computer/Simulation bearbeitet werden.
- **Aufgabenblatt**: alle Aufgaben, die eine PhET-Simulation oder eine
  Excel-Vorlage brauchen (Lernaufgaben am Computer) — unabhängig davon,
  ob sie in der Lektion oder in der Vor-/Nachbereitung bearbeitet werden.
  Die PhET-/Excel-Lernaufgabe bei Kondensatoren wurde z. B. ebenfalls in
  der Lektion bearbeitet und gehörte trotzdem ins Aufgabenblatt, weil sie
  die Simulation und Excel braucht.

Beide Dokumente liegen im selben Themenordner (z. B.
`elektrodynamik/kondensatoren/arbeitsblatt4-kondensatoren-teil1.tex` und
`.../aufgabenblatt3-kondensatoren-teil1.tex`), analog dazu, wie ein
KFR-Thema Backward-Design-Dokument und Arbeitsblatt im selben Ordner hält.
Siehe "Nummerierung und Dateibenennung" unten für das `x`/`y`-Namensschema.

## Konventionen aus Sara Romers Feedback (ab Kondensatoren, 24.08.2026)

Nach dem ersten fertigen Thema (Kondensatoren) hat Sara Romer Feedback
gegeben, das ab sofort für **jedes** neue Praktikum-I-Dokument gilt, nicht
nur rückwirkend für Kondensatoren:

### Ansprache: Sie-Form

Praktikum-I-Dokumente sprechen die Schülerinnen und Schüler mit **„Sie"
an, nicht mit „du"/„ihr"** — abweichend vom sonst in diesem Repo üblichen
Duzen (Root-`CLAUDE.md` trifft dazu keine Aussage; das ist eine
KFR-Gewohnheit, keine verbindliche Repo-Regel). Betrifft jede
Handlungsaufforderung ("Ordnen Sie...", "Leiten Sie ... her", "Verändern
Sie...") ebenso wie Aussagen über die SuS selbst ("Sie wissen bereits...",
"Sie finden ... selbst heraus"). Gilt für Arbeitsblatt und Aufgabenblatt
gleichermassen, für alle Klassen (2e, 1f, 4fh, 4cdeg).

### Nummerierung und Dateibenennung: Arbeitsblatt/Aufgabenblatt

Jedes Arbeitsblatt und Aufgabenblatt bekommt eine fortlaufende Nummer `x`
und, bei mehrteiligen Themen, eine Teil-Nummer `y`. Datei- und Titelschema:

- **Dateiname** (überschreibt für diese beiden Dokumenttypen die
  generische `<thema>-<typ>.tex`-Vorlage aus Root-`CLAUDE.md`; lowercase,
  hyphenated, keine Umlaute gilt weiterhin):
  `arbeitsblatt<x>-<thema>-teil<y>.tex` bzw.
  `aufgabenblatt<x>-<thema>-teil<y>.tex`, z. B.
  `arbeitsblatt4-kondensatoren-teil1.tex`,
  `aufgabenblatt3-kondensatoren-teil1.tex`.
- **Gedruckter Titel** (`\ArbeitsblattTitel`, für die SuS sichtbar): weiterhin
  die lesbare Form `Arbeitsblatt <x>: <Thema>` bzw. `Aufgabenblatt <x>:
  <Thema>`, bei mehrteiligen Themen zusätzlich `(Teil <y>)` anhängen.

**Herkunft von `x`:** zwei getrennte, pro Klasse laufende Zählungen (eine
für Arbeitsblatt, eine für Aufgabenblatt), die Sara Romers eigene, bereits
vor der Übergabe an Loris verwendete Nummerierung fortsetzen — sie starten
also nicht bei 1 für das erste in diesem Repo gebaute Dokument
(Kondensatoren war für 4fh/4cdeg bereits Arbeitsblatt 4 / Aufgabenblatt 3).
Die nächste Zahl wird aus der Benennung von Sara Romers eigenen Dokumenten
im `Vorwissen/`-Ordner des jeweiligen Bereichs abgeleitet — pro
Dokumenttyp getrennt weiterzählen ab der höchsten dort erkennbaren Nummer
— nicht aus diesem Repo selbst, da die hier gebauten Arbeitsblätter/
Aufgabenblätter nicht bei 1 beginnen. Enthält `Vorwissen/` (noch) keine
eindeutig nummerierten Dokumente, bei Sara Romer nachfragen statt zu
raten.

**Herkunft von `y`:** entspricht der Teil-Nummer aus der bereits
bestehenden `-teil-N`-Ordnerkonvention für mehrteilige Themen (siehe
"Grundeinheit" oben, z. B. `lorentzkraft-teil-1/`, `lorentzkraft-teil-2/`)
— jeder Teil ist ein eigenes Dokument mit eigenem `x`. Für ein Thema mit
nur einer Doppellektion ist `y=1`.

### Lernziele: Ergebnisse nicht vorwegnehmen

Lernziele dürfen die Kompetenz benennen, aber nicht das konkrete Ergebnis,
das die SuS in einer nachfolgenden Aufgabe selbst herausfinden sollen
(z. B. nicht „linearer Zusammenhang zwischen Q und U" oder die fertige
Formel, wenn genau das der Clou einer Messaufgabe ist). Sonst merken die
schnelleren SuS, dass sie die Antwort schon kennen, und fragen sich, wozu
sie die Aufgabe überhaupt noch lösen sollen. Kompetenz-Formulierung ("...
aus Messdaten den Zusammenhang zwischen $Q$ und $U$ untersuchen und daraus
die Kapazität bestimmen") statt Ergebnis-Formulierung ("... den linearen
Zusammenhang ... und die Steigung ablesen").

### Neue Einheiten: vollständige Ableitungskette zeigen

Wird im Theorie-Teil eine neue abgeleitete SI-Einheit eingeführt, immer
die volle Kette von der Kombination über den Einheitennamen bis zum
Symbol zeigen, z. B. `[C] = 1 C/V = 1 Farad = 1 F`, nicht nur
`\si{\farad} = \si{\coulomb\per\volt}`.

### Textmenge: knapp halten

Sara Romer hat explizit zurückgemeldet, dass die Unterlagen (Stand
Kondensatoren) zu textlastig waren ("fast zu viel... Lesen die Schüler
selbst den Text?"). Vor Fertigstellung jedes Theorie-Blocks/jeder
Einleitung prüfen: Ist jeder Absatz nötig, oder wiederholt er nur, was
eine Bildunterschrift oder eine spätere Aufgabe schon sagt? Im Zweifel
kürzen, besonders bei Analogie-Erklärungen, die bereits durch eine
Bildunterschrift abgedeckt sind.

### Keine Repetition als Herleitungsaufgabe verkaufen

Stoff, der in einer vorherigen Lektion bereits behandelt/hergeleitet
wurde, wird im Theorie-Block als **bekannt vorausgesetzt** (kurzer
Repetitionssatz mit Formel), nicht als eigene Herleitungsaufgabe erneut
gestellt — auch wenn er als Baustein für das neue Thema gebraucht wird.
Eine as-ob-neue Herleitung von letzte-Woche-Stoff wirkt für die SuS wie
Zeitverschwendung und führt eher zum Abschalten als zur Vertiefung. Vor
dem Entwurf einer Herleitungsaufgabe deshalb im `Vorwissen/`-Material bzw.
in der Themenabfolge prüfen, ob der Baustein nicht schon in der
unmittelbar vorangegangenen Lektion desselben Bereichs behandelt wurde.

### Diagramme: SuS selbst ergänzen lassen, wo sinnvoll

Wo ein Diagramm/eine Skizze das Ergebnis eines Gedankengangs zeigt, den
die SuS in der zugehörigen Aufgabe selbst nachvollziehen sollen (z. B. wo
sich beim Dielektrikum eine Nettoladung ausbildet), das fertige Bild nicht
in der Theorie zeigen, sondern als leeres `answerbox`-Feld in die Aufgabe
legen und das fertige Bild erst in der `solution` zeigen.

### Aufgabenblatt: kein einleitender Erklärkasten

Das Aufgabenblatt beginnt direkt mit der ersten Aufgabe/Lernaufgabe, ohne
einleitende `infobox`, die erklärt, wozu das Blatt dient oder wie es mit
dem Arbeitsblatt zusammenhängt — diese Erklärung gibt die Lehrperson
mündlich, das Aufgabenblatt ist kein Selbstlern-Auftrag für zu Hause.

### Boxen-Layout: keine Farbboxen ausser Formel-, Hinweis- und Antwortbox

Abweichend vom KFR-Workflow (Root-`CLAUDE.md`, Abschnitt "Theorie-Block")
werden Lernziele (`infobox`), Einleitung (`beispielbox`), Theorie
(`theoriebox`) und die Rahmung einer Aufgabe/Gruppenarbeit
(`taskbox`/`groupbox`, inkl. `teilkopf` für Teile innerhalb einer langen
Lernaufgabe) in Praktikum-I-Dokumenten **nicht mehr farbig gerahmt** — nur
`formelbox` (Formelsammlung), `hinweisbox` (Klarstellungen) und
`answerbox`/`\Antwortraum` (Platz für die schriftliche Antwort) bleiben
sichtbare Boxen. Stand ab 31.08.2026, gilt für jedes neue Praktikum-I-
Dokument, nicht nur rückwirkend für die bereits umgestellten
(Kondensatoren, Gewichtskraft & Federkraft).

Technische Umsetzung beim Kopieren einer bestehenden Datei als Vorlage
(statt frisch aus `vorlagen/arbeitsblatt-vorlage.tex`, das noch die
farbigen KFR-Boxen definiert — dort NICHT ändern, das ist KFR-Hausstil):
Box-Definitionen aus einer bereits umgestellten Datei übernehmen, z. B.
`arbeitsblaetter/mechanik/kraefte/gewichtskraft-federkraft/arbeitsblatt2-gewichtskraft-federkraft-teil1.tex`
oder `arbeitsblaetter/elektrodynamik/kondensatoren/aufgabenblatt3-kondensatoren-teil1.tex`.
Dabei zwei unterschiedliche Muster beachten:

- `infobox`, `theoriebox`, `beispielbox`, `teilkopf`: reine
  `\newenvironment`-Absätze mit fetter Überschrift (kein `tcolorbox` mehr).
  Diese stehen entweder auf Dokumentebene oder (bei `teilkopf`) erst nach
  dem ersten `\question` einer Aufgabe, also ausserhalb/nach einer
  offenen `questions`-Liste ohne `\item` — dort ist eine reine
  `\newenvironment` unproblematisch.
- `taskbox`, `groupbox`: bleiben technisch `tcolorbox` (`enhanced,
  breakable`), aber unsichtbar gemacht (`colback=white, colframe=white,
  boxrule=0pt`, kein Padding). Grund: Sie stehen innerhalb der
  `exam`-Klasse `questions`-Liste **vor** dem ersten `\question` (Bild,
  Fliesstext) — eine reine `\newenvironment` ohne echte Box löst dort
  `LaTeX Error: Something's wrong--perhaps a missing \item`, sobald z. B.
  ein `\begin{center}` vor dem ersten `\item` der äusseren Liste steht.
  Eine unsichtbare `tcolorbox` behält die nötige Box-Isolation, ohne
  optisch als Box zu erscheinen.

## Ordnerstruktur: nach Thema, nicht nach Klasse

Anders als bei KFR (Stoffplan-Klasse/Semester-Struktur) und anders als
Sara Romers eigener Ablage (pro Klasse) ist `arbeitsblaetter/` hier nach
**Bereich/Thema** organisiert, weil dieselbe Doppellektion oft wortgleich
bei mehreren Klassen unterrichtet wird (z. B. Kondensatoren bei 4fh und
4cdeg mit identischem Material). Klassen-Zuordnung, Daten und Rollen (s/h)
stehen im Semesterplan, nicht in der Ordnerstruktur.

Aktuelle Bereiche (aus dem Semesterplan abgeleitet, siehe
`PLAN_Dokumentengenerierung.md` für die vollständige Zuordnung
Thema→Klasse→Datum):

```
arbeitsblaetter/
  mechanik/kraefte/
    gewichtskraft-federkraft/
    kraefte-addieren-zerlegen/
    normalkraft/
    wechselwirkung/
  elektrizitaet/
    ladung-e-feld/
    e-feld-vertiefung/
    u-i-r/
    schaltungen/
  elektrodynamik/
    kondensatoren/
    magnetfelder/
    lorentzkraft-teil-1/
    lorentzkraft-teil-2/
```

Neue Themen (falls der Semesterplan sich ändert oder weitere s-Lektionen
dazukommen) bekommen nach demselben Muster einen neuen Themenordner unter
dem passenden Bereich — lowercase, hyphenated, keine Umlaute, wie im
Root-`CLAUDE.md` festgelegt.

## `Vorwissen/`-Ordner: Sara Romers eigenes Material, pro Bereich

Sara Romer legt ihr eigenes, bereits verwendetes Material (PDFs ihrer
Arbeitsblätter/Aufgabenblätter/Folien) nicht pro Doppellektion-Thema ab,
sondern **ein Dokument/eine Sammlung pro übergeordnetem Bereich** (z. B.
ein Elektrodynamik-Foliensatz, der Kondensatoren, Magnetfelder und
Lorentzkraft zusammen abdeckt). Der `Vorwissen/`-Unterordner liegt deshalb
**eine Ebene höher als der Thema-Ordner**, direkt im Bereichsordner:
`mechanik/kraefte/Vorwissen/`, `elektrizitaet/Vorwissen/`,
`elektrodynamik/Vorwissen/` — nicht in den einzelnen Thema-Unterordnern.
Zum Nachschlagen/Abrufen, nicht zur Wiederverwendung als eigenes Dokument.

**Vorwissen wird konsultiert, bevor Lernziele oder Inhalt entstehen** —
genau wie beim KFR-Workflow `lernziele.md` vor einer Einleitung konsultiert
wird. Da ein Vorwissen-Dokument mehrere Themen desselben Bereichs
gleichzeitig abdeckt, beim Lesen gezielt auf den Teil achten, der zum
gerade bearbeiteten Thema gehört — nicht das ganze Dokument unreflektiert
auf jedes Thema des Bereichs anwenden. Zweck: Schwierigkeitsgrad/Tiefe
kalibrieren und abschätzen, was die Klasse bereits kennt (Vorwissen im
wörtlichen Sinn), nicht nur den Namen des Ordners.

Weiteres Referenzmaterial (fachliche Quellen wie PhysikLibre-Auszüge, nicht
Sara Romers eigenes Material) liegt **direkt im Themenordner**, nicht in
`Vorwissen/` — gleiches Muster wie bei KFR, wo z. B.
`PhysikLibre_Kraefte-Teil-2.pdf` direkt neben `lernziele.md` liegt statt in
einem Unterordner.

## `Bilder/`-Ordner: Bilder für die fertigen Dokumente, pro Thema

Jeder Themenordner enthält einen eigenen `Bilder/`-Unterordner — für
Bilder, die im fertigen Arbeitsblatt/Aufgabenblatt per `\includegraphics`
eingebunden werden. Gleiche Rolle wie `Bilder/` bei KFR-Themen (z. B.
`Bilder/Falcon_9_Landung.jpg` bei freier-fall): Bilder werden erst
eingefügt, sobald eine echte Datei vorliegt, nicht als Platzhalter erfunden
(siehe Root-`CLAUDE.md`, Abschnitt „Einleitung"). Anders als `Vorwissen/`
bleibt `Bilder/` bewusst auf Thema-Ebene (nicht auf Bereichsebene), weil
Bilder zu genau einem fertigen Dokument gehören, während Vorwissen
Kalibrierungsmaterial ist, das mehrere Themen eines Bereichs gemeinsam
abdeckt — unterschiedliche Zwecke, deshalb unterschiedliche Ebenen.

## Fachliche Referenz: PhysikLibre + PhET/phyphox (Standard für jedes Thema)

Analog zum KFR-Workflow (`C:\Users\Loris Keller KFR\Documents\KFR\HS 2026\Unterricht`)
werden für jedes neue Praktikum-I-Thema zusätzlich zu Sara Romers eigenem
`Vorwissen/`-Material folgende Dateien aus diesem `Unterricht`-Ordner
konsultiert, bevor `lernziele.md` bzw. Lektionsplan entstehen:

- **`PhysikLibre.pdf`** (grosses Referenzlehrbuch, ca. 1370 Seiten): das
  relevante Kapitel als fachliche Absicherung/Vertiefung heranziehen. Wegen
  der Dateigrösse nicht komplett mit pdfplumber verarbeiten — stattdessen
  `pdftotext -layout` auf die ganze Datei anwenden (deutlich schneller),
  das Ergebnis anhand der Form-Feed-Zeichen (`\f`) seitenweise aufteilen,
  per Stichwort-Häufigkeitsscan das passende Kapitel lokalisieren und nur
  diesen Seitenbereich vollständig lesen. `pdfgrep` ist auf diesem System
  nicht installiert, `pdftotext` schon.
- **`PhET_Simulationen_Referenz.md`** und **`phyphox_Experimente_Referenz.md`**:
  mögliche Simulationen bzw. Experimente für das Thema nachschlagen, als
  Ideen für Aktivierung/Lernaufgabe oder als optionales
  Zusatz-/Selbstkontrollmaterial — nicht automatisch als Ersatz für ein von
  Sara Romer vorgegebenes reales Experiment.

Gefundene Inhalte werden mit Quellenangabe (Kapitel/Seite bzw.
Simulationsname) in `lernziele.md` und/oder den Lektionsplan aufgenommen,
nicht ungeprüft übernommen — insbesondere bei PhysikLibre-Beispielen
(Zahlenwerte, Abbildungen) prüfen, ob sie zur eigenen Aufgabe passen, statt
sie unverändert zu kopieren.

## `lernziele.md`-Äquivalent pro Thema

Vor dem Entwurf von Arbeitsblatt/Aufgabenblatt entsteht pro Themenordner
ein `lernziele.md` (gleiches Format wie bei KFR: Abgrenzung, Lernziele,
Voraussehbare Lernschwierigkeiten, Beispielkontexte), hergeleitet aus dem
Bereichs-`Vorwissen/` (dem für das jeweilige Thema relevanten Teil davon)
und ggf. zusätzlichem Referenzmaterial im Themenordner — nicht aus dem
Semesterplan-Thema-Stichwort allein.

## SP (Schwerpunktfach) vs. reguläre Physik

4cdeg ist SP4 (Schwerpunktfach), 4fh/2e/2f/1f/1h sind reguläre
Physik-Klassen. Aktuell ist der Inhalt für die geteilten Elektrodynamik-
Themen (4fh/4cdeg) identisch — kein SP/regulär-Split nötig. Falls
Vorwissen-Material oder Sara Romers Vorgaben für ein Thema einen
Tiefe-/Tempo-Unterschied zwischen SP und regulärem Zweig nahelegen, prüfen
statt automatisch anzunehmen, dass beide Klassen dasselbe Dokument nutzen
können — im Zweifel nachfragen.

## Kein Stoffplan-Mirroring

Anders als bei KFR gibt es hier keinen mehrjährigen Stoffplan, der die
Ordnerstruktur vorgibt — das Praktikum I ist ein einzelnes Semester. Die
themenbasierte Struktur oben ist die alleinige Organisationslogik.

## Qualitätssicherung: Reviewer-Agenten vor Fertigstellung

Root-`CLAUDE.md` verlangt für jedes Dokument in diesem Repo bereits
verbindlich, dass der `bindestrich-stil-reviewer` Agent auf überarbeiteter/
neuer Prosa läuft, bevor das Dokument als fertig gilt (siehe dort, "When
adding new material"). Für Praktikum-I-Dokumente laufen zusätzlich die
übrigen sechs `.claude/agents/*.md`-Reviewer, jeweils zu dem Zeitpunkt, den
ihre eigene `description` als Trigger nennt — dieselben Agenten, dieselben
Trigger wie im Rest des Repos, hier nur einmal explizit in Reihenfolge
aufgeführt:

1. `physics-accuracy-reviewer` — sobald der Inhalt entworfen ist, bevor das
   Layout finalisiert wird.
2. `didaktik-alignment-reviewer`, `example-relatability-reviewer`,
   `redundanz-tiefe-reviewer` — sobald ein vollständiger Aufgaben-Entwurf
   vorliegt (parallel, reine Report-Reviews, kein Edit).
3. `bindestrich-stil-reviewer` — auf überarbeiteter/neuer Prosa (s. oben,
   root-`CLAUDE.md`, verbindlich für das ganze Repo).
4. `latex-layout-reviewer` — nach dem Erstellen/Bearbeiten der `.tex`-Datei,
   bevor sie als fertig gilt.
5. `latex-whitespace-reviewer` — als letzter Schliff, explizit erst
   nachdem `latex-layout-reviewer` die Diagrammgeometrie bereits geprüft
   hat.

Diese Agenten sind in der Cowork-Cloud-Sitzung nicht aufrufbar (fester,
generischer Agenten-Katalog dort). Diese Reihenfolge greift, sobald die
Dokumentengenerierung lokal in VS Code (Claude Code mit Repo-Zugriff)
gestartet wird — ein in der Cowork-Sitzung vorbereitetes Arbeitsblatt/
Aufgabenblatt hat diese Prüfungen noch nicht durchlaufen, bis es lokal
einmal durch diese Kette läuft.

## Bekannter LaTeX-Stolperfall: bare `"` unter `ngerman`-babel

In jedem `.tex`-Dokument dieses Projekts (via `[ngerman]{babel}`) wird ein
gewöhnliches ASCII-`"` unmittelbar vor einem Grossbuchstaben von babels
`ngerman`-Shorthands stillschweigend als Umlaut-Diaerese-Produktion
fehlinterpretiert — z. B. wird `"Observe"-Schritt` zu `ÖbserveSchritt`
gerendert. Der Compile-Log zeigt dafür keine Warnung/keinen Fehler; es
fällt nur bei visueller Kontrolle des PDFs auf. Deshalb: **in jedem
`.tex` dieses Repos ausschliesslich `\glqq...\grqq{}` für Anführungszeichen
verwenden, nie ein bare `"`** — bei neuen/bearbeiteten Dateien vor
Fertigstellung mit `grep -n '"'` gegenprüfen.
