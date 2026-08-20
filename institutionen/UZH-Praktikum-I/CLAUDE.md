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
Material:

- **Arbeitsblatt**: das in der Lektion verwendete Material — Theorie und
  ggf. Anwendungen/Beispiele.
- **Aufgabenblatt**: reine Übungsaufgaben, für die Vor-/Nachbereitung
  gedacht, nicht für den Lektioneneinsatz selbst.

Beide Dokumente liegen im selben Themenordner (z. B.
`elektrodynamik/kondensatoren/kondensatoren-arbeitsblatt.tex` und
`.../kondensatoren-aufgabenblatt.tex`), analog dazu, wie ein KFR-Thema
Backward-Design-Dokument und Arbeitsblatt im selben Ordner hält.

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
