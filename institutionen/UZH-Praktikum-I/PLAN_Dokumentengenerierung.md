# Plan: Dokumentengenerierung Praktikum I

Dieses Dokument ist die Übergabe an einen neuen, dedizierten Chat für die
Erstellung der Arbeitsblätter/Aufgabenblätter für das Praktikum I. Es
erklärt Kontext, Quellen, Themenliste und Arbeitsablauf. Details zu
Ordnerkonventionen stehen im `CLAUDE.md` im selben Ordner — dieses Dokument
hier ist die Erzählung dazu, jenes die verbindlichen Regeln.

## Kontext

Praktikum I bei Sara Romer Urban, Kantonsschule im Lee, Herbstsemester
2026. Anforderung: 30 selbständig unterrichtete Lektionen (s) + 20
Hospitationslektionen (h), total 50. Für jede selbständig unterrichtete
Doppellektion (Rolle „s") soll eigenes Unterrichtsmaterial entstehen:
ein Arbeitsblatt (Theorie/Anwendungen, für den Lektioneneinsatz) und ein
Aufgabenblatt (reine Übungsaufgaben, für Vor-/Nachbereitung).

Der verbindliche Zeitplan liegt in
`C:\Users\Loris Keller KFR\Documents\UZH\Praktikum I\Semesterplan_Praktikum_I.xlsx`
(Blatt „Semesterplan", Spalte „Rolle"). Nur Zeilen mit Rolle **s** sind
hier relevant — Hospitationen (h) brauchen kein eigenes Material.

## Themenliste (Stand: aktueller Semesterplan)

Aus den 15 s-Zeilen ergeben sich 12 eigenständige Doppellektion-Dokumente,
weil identisches Material bei zwei Klassen wiederverwendet wird (4fh/4cdeg
bei allen Elektrodynamik-Themen). Zuordnung Thema → Ordner → Klasse(n) →
Datum(en):

**`mechanik/kraefte/`** (Klasse 2e, regulär)
- `gewichtskraft-federkraft/` — 2e, 26.08.2026
- `kraefte-addieren-zerlegen/` — 2e, 02.09.2026
- `normalkraft/` — 2e, 09.09.2026
- `wechselwirkung/` — 2e, 16.09.2026

**`elektrizitaet/`** (Klasse 1f, regulär)
- `ladung-e-feld/` — 1f, 02.09.2026
- `e-feld-vertiefung/` — 1f, 09.09.2026 (Fortsetzung von Ladung/E-Feld)
- `u-i-r/` — 1f, 16.09.2026
- `schaltungen/` — 1f, 23.09.2026

**`elektrodynamik/`** (Klassen 4fh regulär + 4cdeg SP4, gleiches Material)
- `kondensatoren/` — 4fh 25.08.2026 + 4cdeg 28.08.2026
- `magnetfelder/` — 4fh 01.09.2026 (nur 4fh, 4cdeg hier nur Hospitation)
- `lorentzkraft-teil-1/` — 4fh 15.09.2026 + 4cdeg 18.09.2026
- `lorentzkraft-teil-2/` — 4fh 22.09.2026 + 4cdeg 25.09.2026

Falls sich der Semesterplan ändert (z. B. nach dem Treffen mit Sara Romer
am 14.8.), zuerst die Excel-Datei neu prüfen, bevor an dieser Liste
weitergearbeitet wird — sie ist eine Momentaufnahme, keine feste Vorgabe.

## Ordnerstruktur (bereits angelegt)

```
institutionen/UZH-Praktikum-I/arbeitsblaetter/<bereich>/
  Vorwissen/                     ← Sara Romers eigenes Material zum GANZEN Bereich (PDFs), zum Abrufen/Kalibrieren
  <thema>/
    Bilder/                      ← Bilder für die fertigen Dokumente (\includegraphics), pro Thema
    (weitere Referenzquellen direkt hier, analog PhysikLibre bei KFR)
    lernziele.md                 ← noch zu erstellen
    <thema>-arbeitsblatt.tex      ← noch zu erstellen
    <thema>-aufgabenblatt.tex     ← noch zu erstellen
```

Wichtig: `Vorwissen/` liegt **eine Ebene höher als gedacht** — nicht pro
Thema, sondern einmal pro Bereich (`mechanik/kraefte/Vorwissen/`,
`elektrizitaet/Vorwissen/`, `elektrodynamik/Vorwissen/`), weil Sara Romer
ihr eigenes Material pro übergeordnetem Bereich ablegt (z. B. ein
Elektrodynamik-Dokument, das Kondensatoren, Magnetfelder und Lorentzkraft
zusammen abdeckt), nicht einzeln pro Doppellektion-Thema. `Bilder/` bleibt
dagegen pro Thema, weil Bilder zu genau einem fertigen Dokument gehören.

Alle 12 Themenordner mit leeren `Bilder/`-Unterordnern und alle 3
Bereichsordner mit je einem leeren `Vorwissen/`-Unterordner existieren
bereits. Noch nichts befüllt, kein `lernziele.md`, kein
Arbeitsblatt/Aufgabenblatt entworfen — das ist die Aufgabe dieses neuen
Chats.

## Arbeitsablauf pro Thema

1. **Vorwissen prüfen**: PDFs in `Vorwissen/` des übergeordneten Bereichs
   (Loris legt diese pro Bereich ab, nicht pro Einzelthema) lesen — Sara
   Romers bisheriges Material zu diesem Bereich, gezielt den Teil, der zum
   gerade bearbeiteten Thema gehört. Daraus Schwierigkeitsgrad, bereits
   behandelte Vorkenntnisse und ggf. bereits festgelegte Inhalte
   (Experimente, PhET-Simulationen) ableiten.
2. **Zusätzliche Referenzquellen prüfen**: falls Loris weitere Quellen
   direkt in den Themenordner gelegt hat (z. B. PhysikLibre-Auszüge),
   diese wie bei KFR als fachliche Grundlage einbeziehen.
3. **`lernziele.md` entwerfen**: gleiches Format wie bei KFR (Abgrenzung,
   Lernziele, Lernschwierigkeiten, Beispielkontexte) — aber Lernziele
   gelten für die eine Doppellektion, nicht für ein Mehrlektionen-Thema.
4. **Arbeitsblatt + Aufgabenblatt bauen**: Arbeitsblatt mit
   Theorie/Anwendungen für den Lektioneneinsatz, Aufgabenblatt mit reinen
   Übungsaufgaben für die Vor-/Nachbereitung. Root-`CLAUDE.md`-Konventionen
   (Engine, `siunitx`, Schritt-für-Schritt-Herleitungen, Swiss-Orthographie)
   gelten unverändert.
5. **SP/regulär prüfen**: bei den `elektrodynamik/`-Themen (4fh + 4cdeg)
   aktuell ein gemeinsames Dokument, ausser Vorwissen-Material legt einen
   Tiefe-/Tempo-Unterschied nahe — im Zweifel nachfragen statt annehmen.

## Warum ein eigener Chat

Der bestehende Chat für dieses Repo ist stark mit KFR-spezifischer
Backward-Design-Arbeit gefüllt (Themen wie Kräfte Teil 2, Zusammengesetzte
Bewegungen, Semesterplan 4a). Diese Historie ist für die Praktikum-I-
Materialerstellung irrelevant und bläht nur den Kontext auf. Ein neuer Chat
auf demselben Repo liest `CLAUDE.md` (Root + dieser Ordner) automatisch neu
ein — nichts an Konventionen geht verloren, nur der irrelevante KFR-Verlauf
bleibt aussen vor.
