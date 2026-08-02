# Workflow: Arbeitsblätter mit Claude Code erstellen

Anleitung für die neu eingerichteten Claude-Code-Tools in diesem Repo (Subagents,
Slash-Commands, Auto-Compile-Hook) und wie du damit ein Arbeitsblatt für ein
Subthema von Grund auf erstellst. Richtet sich an dich (den Nutzer), nicht an
Claude — `CLAUDE.md` bleibt die Quelle für Konventionen, die Claude befolgt.

## 0. Voraussetzung: einmalig neu starten

Alles unten wurde in dieser Session neu angelegt (`.claude/agents/`,
`.claude/commands/`, `.claude/hooks/`, `.claude/settings.json`, `jq`). Claude
Code lädt Subagents und Slash-Commands nur beim Start ein, und der Hook braucht
die aktualisierte PATH-Variable (wegen der frischen `jq`-Installation) — starte
Claude Code deshalb einmal neu, bevor du hiermit arbeitest.

Kurzer Check nach dem Neustart:
- Tippe `/compile` und `/new-worksheet` — sollten in der Slash-Command-Liste
  auftauchen.
- Bitte Claude z. B. "run the latex-layout-reviewer on
  vorlagen/pruefung-vorlage.tex" — sollte ohne "agent not found" laufen.
- Mach eine triviale Änderung an einer `.tex`-Datei und schau, ob
  `/tmp/claude-tex-compile.log` entsteht.

## 1. Was wurde eingerichtet — Übersicht

| Was | Wo | Wozu |
|---|---|---|
| `/compile <pfad/zur/datei.tex>` | `.claude/commands/compile.md` | Kompiliert zweimal (nötig für `exam`-Klassen-Punktetotale), fasst nur die relevanten Fehler/Warnungen aus dem Log zusammen. |
| `/new-worksheet <Thema> <Klasse> <Semester> [--institution ...] [--type arbeitsblatt\|pruefung]` | `.claude/commands/new-worksheet.md` | Kopiert die passende Vorlage aus `vorlagen/` in den richtigen `institutionen/…`-Ordner, füllt Kopfzeile, verlinkt `lernziele.md` falls vorhanden, kompiliert einmal zur Kontrolle. |
| `latex-layout-reviewer` (Subagent) | `.claude/agents/` | Prüft Layout, Compile-Sauberkeit, Hausstil (Kopfzeile ausgefüllt, `\Antwortraum`-Grösse plausibel, kein `ß`, ngerman/T1/utf8). |
| `physics-accuracy-reviewer` (Subagent) | `.claude/agents/` | Prüft Einheiten, Vorzeichenkonventionen, Plausibilität der Zahlenwerte, Schwierigkeitsgrad. |
| `didaktik-alignment-reviewer` (Subagent) | `.claude/agents/` | Gleicht Aufgaben mit den Lernzielen aus `lernziele.md` ab — deckt Lücken und Scope-Creep auf. |
| `example-relatability-reviewer` (Subagent) | `.claude/agents/` | Prüft, ob die Aufgabenkontexte für Zürcher Gymi-Schüler:innen plausibel sind, plus Schweizer Rechtschreibung. |
| Auto-Compile-Hook | `.claude/hooks/compile-on-save.sh` | Kompiliert automatisch jede `.tex`-Datei, die Claude bearbeitet/schreibt — Fehler zeigen sich sofort, ohne dass du `/compile` tippen musst. Log: `/tmp/claude-tex-compile.log`. |
| Bash-Permission | `.claude/settings.json` | `pdflatex`, `kpsewhich exam.cls` etc. sind repo-weit vorab erlaubt — keine Rückfrage bei jedem Compile-Versuch. |

Diese Subagents sind reine **Reviewer** — sie ändern nichts selbst, sondern
liefern dir/Claude eine Punktliste zurück, die Claude dann umsetzt.

## 2. Was an Lernziel-Material schon da ist

Für drei Kinematik-Subthemen liegt bereits ein `lernziele.md` bereit (Extrakt
aus dem jeweiligen `BackwardDesign_<Thema>.docx`):

```
institutionen/KFR/arbeitsblaetter/4-klasse/1-hs/mechanik/
  s-t-diagramm/lernziele.md
  v-t-diagramm/lernziele.md
  beschleunigung/lernziele.md
```

Jede Datei enthält: Abgrenzung, Essentielle Fragen, operationalisierte
Lernziele (LZ1, LZ2, …), Lernschwierigkeiten mit Quellenangaben, und —
besonders wichtig — einen Abschnitt **Beispielkontexte / Aufgabenideen** mit
bereits im Unterricht erprobten bzw. geplanten Szenarien (z. B. das
Jongleur-Umkehrpunkt-Beispiel bei Beschleunigung, das Mazur-ConcepTest). Die
Reviewer-Subagents erwarten diese Datei im selben Themenordner wie die
`.tex`-Datei und nutzen die Beispielkontexte aktiv — Aufgaben, die ein
vorhandenes vetted Beispiel ignorieren und stattdessen etwas Generisches
erfinden, werden als MINOR-Punkt geflaggt.

**Nicht von Hand bearbeiten** — Quelle ist das `BackwardDesign_<Thema>.docx`;
bei inhaltlichen Änderungen dort ändern und `lernziele.md` neu exportieren.

## 3. Zusätzliches Quellenmaterial (PDFs, Bilder, Docx) einbringen

Für den Aufgaben-*Inhalt* selbst (konkrete Zahlenwerte, Diagramme, Fotos von
realen Messungen, Auszüge aus einem Lehrbuch) kannst du jederzeit weitere
Dateien beisteuern — Claude kann PDFs und Bilder direkt lesen, keine
Konvertierung nötig:

- **Wohin legen:** in den jeweiligen Themenordner (z. B.
  `.../mechanik/beschleunigung/`) oder irgendwo, solange du Claude den Pfad
  nennst. Es muss kein fester Ordnername sein — sag einfach, wo die Datei
  liegt.
- **Wie benutzen:** einfach in natürlicher Sprache verweisen, z. B.:
  - "Lies `beschleunigung/BackwardDesign_Beschleunigung.docx` und ergänze
    `lernziele.md` um X" — Claude nutzt dann sowohl die Fliesstext-Absätze als
    auch die Word-Tabellen (Stufe-2-Evidence-Tabellen, Stufe-3-Lektionsplan
    sind Tabellen, keine Absätze — beim Auslesen mit `python-docx` müssen
    `document.tables` mitgelesen werden, sonst gehen sie verloren, ohne dass
    ein Fehler auftritt).
  - "Hier ist ein Foto von der Jongleur-Messung
    (`umkehrpunkt-foto.jpg`) — baue eine Aufgabe darauf auf."
  - "In `lehrbuch-auszug.pdf`, Seite 12, ist ein Diagramm zu
    gleichförmiger Bewegung — nutze die dortigen Zahlenwerte für Aufgabe 2."
- **Nicht nötig:** die Dateien vorher irgendwie aufzubereiten oder zu
  beschreiben — einfach den Pfad angeben, Claude liest sie selbst.

## 4. Ablauf: ein Arbeitsblatt für ein Subthema erstellen

Beispiel: Arbeitsblatt zu Beschleunigung, 4. Klasse, 1. HS.

1. **Quellen bereitlegen** (optional, aber empfohlen): `lernziele.md` ist
   schon da; leg ggf. `BackwardDesign_Beschleunigung.docx`,
   `Pruefungsbausteine_*.docx`, Fotos/PDFs mit Rohdaten in den Themenordner,
   falls du konkrete Kontexte/Zahlen daraus übernehmen willst.
2. **Gerüst anlegen**:
   `/new-worksheet Beschleunigung 4-klasse 1-hs`
   (Default: Institution KFR, Typ Arbeitsblatt). Claude erkennt den
   bestehenden Ordner, kopiert `vorlagen/arbeitsblatt-vorlage.tex` hinein,
   füllt die Kopfzeile, liest `lernziele.md` und legt pro LZ einen
   Kommentar-Platzhalter für die Aufgaben an.
   *(Alternative: einfach in eigenen Worten bitten — "leg mir ein Arbeitsblatt
   zu Beschleunigung an" funktioniert genauso, der Slash-Command ist nur eine
   Abkürzung für denselben Ablauf.)*
3. **Aufgaben ausformulieren**: Claude bitten, die Platzhalter mit
   konkreten Aufgaben zu füllen — unter Verweis auf die Beispielkontexte aus
   `lernziele.md` und ggf. auf zusätzliches Material aus Schritt 1
   ("nutze das Jongleur-Beispiel aus lernziele.md für LZ5, mit den Werten aus
   der Fotoserie").
4. **Automatischer Compile-Check läuft mit**: jedes Mal, wenn Claude die
   `.tex`-Datei speichert, kompiliert der Hook im Hintergrund. Fällt dir ein
   Fehler auf, schau in `/tmp/claude-tex-compile.log` oder frag einfach
   "hat's kompiliert?".
5. **Review-Runde** — die vier Subagents sind für genau diesen Zeitpunkt
   gedacht (voller Aufgaben-Entwurf steht). Bitten:
   - "run the didaktik-alignment-reviewer on this file" → deckt
     LZ-Lücken/Scope-Creep auf.
   - "run the physics-accuracy-reviewer" → Einheiten, Vorzeichen,
     Plausibilität.
   - "run the example-relatability-reviewer" → Swiss-Kontext, Rechtschreibung.
   - "run the latex-layout-reviewer" → zuletzt, sobald der Inhalt steht;
     kompiliert zweimal und prüft Hausstil/Layout.
   Jeder liefert eine `[BLOCKING|MINOR]`-Punktliste zurück, die du Claude zum
   Beheben geben kannst.
6. **Feinschliff & Lösungen**: Punktliste abarbeiten lassen, dann bei Bedarf
   `\printanswers`/`\noprintanswers` fürs Lehrer- bzw. Schülerexemplar
   umschalten (siehe `CLAUDE.md`).
7. **Letzter Compile**: `/compile institutionen/KFR/arbeitsblaetter/4-klasse/1-hs/mechanik/beschleunigung/<datei>.tex`
   zur finalen Kontrolle (zweimal, für korrekte Punktetotale).

## 5. Kurzreferenz

| Aktion | Befehl / Formulierung |
|---|---|
| Gerüst anlegen | `/new-worksheet <Thema> <Klasse> <Semester>` |
| Kompilieren + Log zusammenfassen | `/compile <pfad>.tex` |
| Layout/Hausstil prüfen | "run the latex-layout-reviewer on \<datei\>" |
| Physik-Inhalt prüfen | "run the physics-accuracy-reviewer on \<datei\>" |
| Lernziel-Abdeckung prüfen | "run the didaktik-alignment-reviewer on \<datei\>" |
| Kontext-Plausibilität prüfen | "run the example-relatability-reviewer on \<datei\>" |
| Quelle einbinden | Pfad zu PDF/Bild/Docx einfach in der Nachricht nennen |

## 6. Stolpersteine

- **Hook feuert nur bei Claudes eigenen Edits.** Änderst du eine `.tex`-Datei
  selbst im Editor, kompiliert der Hook nicht automatisch — dann `/compile`
  nutzen.
- **`lernziele.md` nie von Hand ändern** — Quelle ist das Backward-Design-Docx.
- **Word-Tabellen beim Docx-Lesen nicht vergessen** (siehe Abschnitt 3) — sonst
  fehlen Stufe-2/3-Inhalte kommentarlos.
- **`.gitkeep`-Dateien** in den Themenordnern kannst du löschen, sobald echter
  Inhalt (wie `lernziele.md` oder eine `.tex`-Datei) drin liegt — nicht
  zwingend, aber sie sind dann überflüssig.
