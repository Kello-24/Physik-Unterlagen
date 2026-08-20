# Physik-Unterlagen

LaTeX source for physics worksheets, exams, lab handouts (Praktika), and
lesson slides across multiple teaching contexts: Gymnasium/Maturität-level
physics at Kantonsschule KFR (Zürich), plus UZH Praktikum I and Praktikum II
placements. Student-facing material for KFR is in German; conventions for
the UZH placements may differ (see "Institution-specific conventions"
below) — ask which institution's conventions apply whenever it isn't
specified.

## Repo layout

```
uebungen/{mechanik,elektrizitaet,optik,thermodynamik}/
vorlagen/
institutionen/
  KFR/{pruefungen,arbeitsblaetter,praktika,folien}/
  UZH-Praktikum-I/{pruefungen,arbeitsblaetter,praktika,folien,reflexion}/
  UZH-Praktikum-II/{pruefungen,arbeitsblaetter,praktika,folien,reflexion}/
diplomarbeit/
```

- `uebungen/` is a shared bank of reusable physics exercises, organized by
  topic and not tied to any one school or placement. Draw from it when
  building Arbeitsblätter/Prüfungen for any institution.
- `vorlagen/` holds the canonical worksheet, exam, praktikum, and beamer
  templates — also shared across all contexts. Copy one out into the
  relevant `institutionen/<name>/` subfolder, don't edit in place.
- `institutionen/` holds institution-specific output: `KFR/` (Kantonsschule
  KFR), `UZH-Praktikum-I/`, and `UZH-Praktikum-II/` (the two UZH teaching
  placements). Each has `pruefungen/`, `arbeitsblaetter/`, `praktika/`, and
  `folien/`; the two UZH folders additionally have `reflexion/` for lesson
  reports and supervisor feedback (KFR has no equivalent).
- `diplomarbeit/` holds material spanning both UZH placements — portfolio,
  final report — that doesn't belong to either placement individually.

### Institution-specific conventions

The house style below (grading scale, exam duration, header block, folder
layout within `institutionen/KFR/`) was written for **KFR** and is the
default assumed throughout this file. The UZH placements may follow
different grading scales, header conventions, or naming schemes required by
their supervisors. **Whenever a task doesn't specify which institution it's
for, ask** rather than assuming KFR's conventions apply — don't silently
carry KFR-specific rules (e.g. the Note = 1 + 3× formula, 45-minute default
exam length) over to UZH material.

## House style

### Engine and language

- Compile with **pdflatex** (MiKTeX). No LuaLaTeX/XeLaTeX-only features.
- `\usepackage[T1]{fontenc}` + `\usepackage[utf8]{inputenc}` +
  `\usepackage[ngerman]{babel}` in every document.
- **Swiss orthography: never use `ß`.** Always write `ss` (e.g. `Masse`,
  `dass`, `Grösse` not `Größe`). This is the one deliberate deviation from
  `ngerman`'s default hyphenation habits — it doesn't enforce spelling, so
  watch for `ß` sneaking in via autocomplete/copy-paste.
- **Avoid unnecessary hyphen-family punctuation in Fliesstext** — both
  Bindestriche in compound words and `--`/`---` Gedankenstriche used to
  bolt a parenthetical or explanatory clause onto a sentence. Prefer the
  German default of Zusammenschreibung (`Autotacho`, not `Auto-Tacho`) for
  compounds, and restructure sentences that lean on `--` instead: split
  into two sentences, or use a comma/colon/parentheses, whichever reads
  most naturally (`ändert -- nicht Y.` → `ändert. Sie beschreibt nicht
  Y.`; `X -- weil Y` → `X: Y` or `X, weil Y`). This does **not** apply to
  hyphens German orthography actually requires: physics/diagram notation
  (`$s$-$t$-Diagramm`, `v-t-Linie`, ...), abbreviation-compounds
  (`SBB-App`, `GPS-Sender`, `S-Bahn`, `E-Bike`), or numeral-compounds
  (`Tempo-30-Zone`) — none of those are the kind of hyphen this rule
  targets, and TikZ path syntax (`\draw ... -- (1,1);`) isn't punctuation
  at all. Run the `bindestrich-stil-reviewer` agent over drafted/edited
  prose before treating a worksheet/exam as done (see "When adding new
  material"
  below); it knows the full exception list and fixes in place.
- Math is written in plain LaTeX math mode (`$...$`, `align`, etc.) — no
  KaTeX, no MathJax, no HTML output. Everything targets PDF.
- Units and quantities: use `siunitx` (`\SI{9.81}{\meter\per\second\squared}`,
  `\si{\newton}`) rather than hand-typed unit spacing. Compound units must
  render as a real stacked fraction, not inline slash/exponent notation:
  every template sets `\sisetup{per-mode=fraction,fraction-command=\frac}`
  right after `\usepackage{siunitx}` — carry this line into any new
  document that loads `siunitx` directly instead of copying a `vorlagen/`
  template.

### Document classes and diagrams

- Worksheets, exams, Praktika: `exam` document class. It's the source of
  truth for question/part numbering, point tracking, and the solutions
  toggle — don't reimplement any of that manually.
- Slides: `beamer` with the custom `KFR` theme (see
  `vorlagen/folien-vorlage.tex`) — large fonts, high contrast, minimal
  chrome. Do not switch to a stock theme like Warsaw/Berlin/Madrid.
- Diagrams: `tikz` for figures (vectors, force diagrams, ray diagrams, ...)
  and `circuitikz` for circuit schematics. Prefer these over imported raster
  images so figures stay editable and print sharply. Also load the
  `physics` package (`\dv`, `\pdv`, bra-ket notation, `\vb{}` for bold
  vectors) — it's a math-notation package, not a diagram tool, but it's
  used constantly enough in physics documents to belong in every preamble
  alongside `tikz`/`circuitikz`. (Note: there is no CTAN/MiKTeX package
  actually named "tikz-physics" — don't `\usepackage{tikz-physics}`, it
  doesn't exist.)

### Templates are self-contained, not DRY

Each file in `vorlagen/` carries its own full preamble rather than pulling
in a shared `.sty`. This is intentional: a teacher (or Claude) should be
able to copy one template into `institutionen/<name>/pruefungen/`,
`institutionen/<name>/arbeitsblaetter/`, etc., rename it, and have it
compile with no other repo state required. The cost is that a house style
change (e.g. a new package, a header tweak) has to be applied to each
template in `vorlagen/` by hand — there are only four, so this is cheap and
keeps every document legible standalone.

### Header block

Every worksheet/exam/Praktikum starts with the same header block (see
`\Kopfzeile{...}` in each template's preamble): **Klasse**, **Datum**, and
**Thema**, plus a title line. Keep the four pieces of information — class,
date, topic, title — in that order and in that visual position across
templates so students recognize the layout instantly.

### Einleitung (Arbeitsblätter)

Every Arbeitsblatt starts with an **Einleitung**: a real-world motivation
block (blue `beispielbox`, titled `Einleitung: ...`) placed directly after
the Lernziele `infobox` and before anything else — before even a
topic-specific "Einstieg" hook, if the worksheet has one. It answers "why
does this topic matter, where is it actually used" with one or two
concrete, relatable examples, not a generic bullet list of unrelated
facts. This is a standing default for every new Arbeitsblatt, not
something that has to be re-requested per document.

- **Draw the content from the topic's `lernziele.md`** (Abgrenzung,
  Essentielle Fragen, and especially Beispielkontexte) before inventing a
  hook from scratch — a Backward-Design document is usually already
  thinking about why the topic matters, and reusing that framing keeps
  the Einleitung aligned with what the didaktik-alignment-reviewer expects.
  If no `lernziele.md` exists for the topic, fall back to general
  physics-education judgment, but hold the same bar: concrete and
  topic-specific, not filler.
- **Images are added later, not blocked on.** Write the Einleitung's text
  first, even with no image in hand yet — reference what a supporting
  photo would show if one is relevant, but don't invent a placeholder
  graphic or a URL. Once the user supplies a real image file (dropped
  into that topic's `Bilder/`), fold it in with a centered
  `\includegraphics` right under the box title, the way the
  Bewegungsgleichungen Einleitung was rewritten around
  `Bilder/Falcon_9_Landung.jpg` after the fact.

### Theorie-Block (Arbeitsblätter)

Every Arbeitsblatt follows a fixed order: **Kopfzeile → Lernziele (blue
`infobox`) → Einleitung (blue `beispielbox`) → Theorie (green
`theoriebox`) → Aufgaben (blue `taskbox`)**. The
Theorie block is real physics content — definitions, formulas, worked
derivations, Merksätze — not filler; it's the material the exercises that
follow actually depend on. Write it *before* drafting the exercises, and
write it as if a student should be able to read the Theorie block and then
attempt the Aufgaben without needing the textbook.

Use the `theoriebox` environment (defined in
`vorlagen/arbeitsblatt-vorlage.tex`, green colour scheme, distinct from the
blue `infobox`/`taskbox`) for this section — don't reuse `infobox` or plain
prose for it. This convention is **Arbeitsblätter-specific**: Prüfungen
don't carry a theory recap (they test recall/application under exam
conditions, no reference material), and Praktika already have their own
`\Abschnitt{Theorie}` section serving the same purpose.

**Highlighted terms inside a `theoriebox` are bold *and* italic, not just
italic.** Use `\textbf{\emph{...}}` (not bare `\emph{...}`) for every
defined/highlighted term or phrase within Theorie content, so key
vocabulary stands out at a glance while reading the theory recap. This
rule is scoped to `theoriebox` content specifically — `\emph{...}` alone
is still correct everywhere else (`beispielbox`, exercise text, etc.),
where emphasis is ordinary in-line stress, not a term definition.

**The unit of a newly introduced quantity is stated right where it's
introduced, not left to a diagram axis label or a later paragraph.** The
first time a `theoriebox` defines a physical quantity or its formula
(whether or not the quantity had a prior formula in the same document —
e.g. `$s$`, `$t$`, `$v$`, `$a$`), attach its SI unit immediately: either
inline in the defining sentence (`$a$ (Einheit: $\si{\meter\per\second\squared}$)`)
or appended to the display equation itself
(`v = \dfrac{\Delta s}{\Delta t}, \qquad \text{Einheit von } v\colon\ \si{\meter\per\second}.`).
A `tikzpicture` axis label like `$s$ in m` doesn't satisfy this — it's easy
to skip past while reading the prose derivation, and each Arbeitsblatt
must stand on its own without relying on an earlier lesson's worksheet
having already established the unit. Exception: a box whose entire
purpose is a unit conversion (e.g. m/s ↔ km/h) is already unit-explicit
throughout and doesn't need a separate tag; likewise a formula followed
immediately (next sentence) by a dimensional-analysis walkthrough that
derives the resulting unit already satisfies this rule.

### Gruppenarbeit-Boxen (Arbeitsblätter)

Any exercise that has students work in pairs or groups (Partnerarbeit,
Gruppenarbeit, "besprecht zu zweit", ...) must use the `groupbox`
environment (defined in `vorlagen/arbeitsblatt-vorlage.tex`, teal/petrol
colour scheme) instead of the regular blue `taskbox`. This is a dedicated
third colour, distinct from both `taskbox` (blue, individual exercises)
and `theoriebox` (green, theory) — a student should be able to tell at a
glance, before reading a word of the task, whether an exercise is meant to
be done alone or with a partner. `groupbox` is structurally identical to
`taskbox` (same indentation correction, same usage inside `questions`) —
only the colour and default title (`Gruppenarbeit`) differ; pass a custom
title the same way as `taskbox`, e.g.
`\begin{groupbox}[Partnerarbeit: ...]`.

### Methodenvielfalt (Arbeitsblätter)

`Methodensammlung_Physikunterricht.pdf` at the repo root catalogs teaching
methods from Fachdidaktik Physik I/II coursework (ETHZ/UZH). Consult it
when planning a new Arbeitsblatt's Aufgaben section — not only when asked
to — the same way `lernziele.md`'s Beispielkontexte are consulted for
content. It distinguishes small, few-minute "Sandwich" Einschübe (Teil A:
A1 Advance Organizer, B1 Vergewisserungsphase, B2 Partnerinterview, B3
Lerntempoduett, C1 Sortieraufgabe, C3 Think-Pair-Share) from larger,
dossier-driven methods spanning a substantial part of a lesson or several
lessons (Teil B: D1 Lernaufgabe, D3 Partner-/Gruppenpuzzle, D4
Werkstattunterricht, M1 Concept-Map, M2 Clickers/Peer Instruction, M3
Whiteboarding, M4 Predict-Observe-Explain, M5 Hands-On-Experimente, M6
Smartphone-Physik, M7 Video-Analyse, M8 Physlets, M9 Produktives Üben).

Several house conventions already implement specific methods from this
list without naming them — recognize the overlap instead of reinventing:
- Every `groupbox` exercise (see above) is the vehicle for any
  partner/group method (B2, B3, D3, M3, M5) — when drafting a partner
  task, pick the concrete method that fits the content instead of
  defaulting to an unstructured "besprecht zu zweit".
- A Predict-Observe-Explain activity (M4) is the established pattern for
  a Hook-Fortsetzung right after the Einleitung — reach for this whenever
  a topic has a strong, testable misconception to surface, structured as
  labelled Predict/Observe/Explain `\part`s inside a `groupbox` (see the
  Münzenexperiment in
  `institutionen/KFR/arbeitsblaetter/4-klasse/1-hs/mechanik/freier-fall/`).
- A Clicker-ConcepTest-style multiple-choice question with plausible
  distractors (M2) is the established pattern for probing a
  Lernschwierigkeit directly (see the Umkehrpunkt exercise in the same
  file) — pull the distractors from `lernziele.md`'s
  Lernschwierigkeiten list, not invented strawmen.

Beyond these two, actively consider the smaller Teil-A methods as cheap
variety within an otherwise plain sequence of individual `taskbox`
exercises: a short Sortieraufgabe (C1) to activate prior knowledge before
a new `theoriebox`, a Think-Pair-Share (C3) or Vergewisserungsphase (B1)
prompt instead of another solo exercise, a Lerntempoduett (B3) for a
practice set with uneven difficulty. Don't force a method where a plain
exercise already serves the Lernziel well — this is a palette to draw
from when varying the Aufgaben mix, not a checklist every worksheet must
tick off, and most Teil-B methods (Werkstattunterricht, Videoanalyse,
Physlets, ...) need equipment/setup beyond a single printed worksheet, so
apply them only where the topic and lesson format genuinely call for it.
When a method changes how an exercise should read (e.g. asking for an
individual prediction before showing a result), write that structure
into the exercise text explicitly, the same way the POE Münzenexperiment
spells out Predict/Observe/Explain as labelled parts rather than leaving
it as unstructured prose.

### Exercises and points

- Use the `exam` class's native `\question[n]` / `\part[n]` for numbering —
  `n` is the point value, and it's what drives `\numpoints` (the auto-summed
  total) and the per-question point display. Don't hand-write "(3 Punkte)"
  next to a question; let the class print it (`\pointname`/`\pointsinmargin`
  are configured in the preamble).
- Leave blank answer space sized to the point value: **~2.5 cm of vertical
  space per point** for handwritten answers (`\Antwortraum{n}` helper in the
  templates multiplies this out). Err generous rather than cramped — Swiss
  students write calculations out in full (Ansatz, Einsetzen, Resultat), not
  just a final number.

### Step-by-step derivations and solutions

Every worked derivation in a `theoriebox` and every worked calculation
inside a `solution` environment must show **every algebraic step**, not
just the starting equation and the final result. Don't compress several
moves (substituting, expanding a square, combining fractions, factoring,
isolating a variable) into a single `\Longrightarrow` jump — put each
individual step on its own line, with a short phrase naming the move
where it isn't obvious (e.g. "nach $(t-t_0)$ auflösen", "gemeinsamer
Nenner", "$(v-v_0)$ ausklammern"). Assume students at this level cannot
mentally fill in a skipped step and will get stuck rather than follow
along — if you'd need an extra line of scratch paper to get from one
displayed equation to the next by hand, that line belongs in the
document. This applies equally to a from-scratch derivation of a formula
and to a specific numeric worked example; both need the full chain, not
just start and end.

### Solutions toggle

Solutions live inline in the source, wrapped in the `exam` class's native
`solution` environment:

```latex
\begin{solution}
  ...worked solution / expected answer...
\end{solution}
```

Toggle visibility with a single line near the top of the preamble:

```latex
\printanswers   % show solutions — teacher/answer-key copy
% \noprintanswers  % hide solutions — student copy (default)
```

Student copies ship with `\noprintanswers` (or the line commented out,
which is the class default). Never delete or duplicate exercise content to
make a "solutions" version — always the same source, toggled.

### Grading scale (exams)

Default conversion formula, printed in a "Bewertung" box on the exam's
first page, computed from the class's auto-summed `\numpoints`:

```
Note = 1 + 3 × (erreichte Punkte / Maximalpunkte)
Bestehensgrenze: 60 % der Maximalpunkte = Note 4
```

This is linear with the passing grade (4.0) pinned at 60% and the maximum
(6.0) at 100%. It's the default in `vorlagen/pruefung-vorlage.tex` — this
is a **KFR** default; see "Institution-specific conventions" above before
assuming it applies to UZH material. Override per-exam only if a specific
exam needs a different curve, and say so explicitly in that exam's file
(don't change the template's default).

### Exam duration

Default exam length is **45 minutes** (single lesson), shown in the header
as `Zeit: 45 Minuten`. Override per-exam for double-period Klausuren (90
min) by editing that field directly in the copied file.

### Folder structure

`vorlagen/` is flat (canonical starting points — copy, don't edit in
place). See "Repo layout" above for the top-level shape.

`uebungen/` is flat by topic (`mechanik/`, `elektrizitaet/`, `optik/`,
`thermodynamik/`) — a shared bank not tied to any institution's curriculum
schedule, so it does not mirror any school's Stoffplan.

Within `institutionen/KFR/`, `pruefungen/` and `praktika/` are flat, one
file per Prüfung/Praktikum. `arbeitsblaetter/` and `folien/` instead mirror
**KFR's** Stoffplan (curriculum plan, `Stoffplan Physik KFR +
Praktika.xlsx`, sheet "Stoffplan"): `<Klasse>/<Semester>/<Thema>/`, e.g.
`institutionen/KFR/arbeitsblaetter/5-klasse/1-hs/thermodynamik/`. This lets
Klasse/Semester folders sort correctly (numeric prefixes: `3-klasse` …
`6-klasse`, `1-hs` before `2-fs` — HS/Herbstsemester is chronologically
first, so don't rely on alphabetical order alone) and keeps material
findable by *when it's taught*, not just by topic:

```
<root>/3-klasse/2-fs/{einfuehrung,optik,mechanik}/
<root>/4-klasse/1-hs/mechanik/
<root>/4-klasse/2-fs/{mechanik,hydrostatik,erhaltungssaetze}/
<root>/5-klasse/1-hs/{mechanik,statik,thermodynamik,elektrizitaet}/
<root>/5-klasse/2-fs/pam/{mechanik,erhaltungssaetze,thermodynamik,elektrizitaet-magnetismus}/
<root>/6-klasse/1-hs/{mechanik,erhaltungssaetze,thermodynamik,elektrizitaet-magnetismus}/
<root>/6-klasse/1-hs/pam/{schwingungen-wellen,wellenoptik,wellen-teilchen,quantenmechanik}/
<root>/6-klasse/2-fs/{elektrizitaet-magnetismus,schwingungen-wellen}/
<root>/6-klasse/2-fs/pam/{spezielle-relativitaetstheorie,kern-teilchenphysik,astrophysik}/
```

(`<root>` is `institutionen/KFR/arbeitsblaetter/` or
`institutionen/KFR/folien/`. This Stoffplan mirroring is KFR-specific — the
UZH placement folders under `institutionen/UZH-Praktikum-I/` and
`institutionen/UZH-Praktikum-II/` don't necessarily follow it; ask if
unsure how UZH material should be organized within its `pruefungen/`,
`arbeitsblaetter/`, `praktika/`, `folien/`, `reflexion/` subfolders.)

From 5. Klasse onward the Stoffplan splits into two tracks with different
content per semester: the standard track ("EF für Sprachprofil und BC")
and **PAM**. Topics that only exist in the PAM curriculum for a given
Klasse/Semester live in a `pam/` subfolder alongside that
Klasse/Semester's standard-track topic folders (5. Klasse has no
standard-track 2. Semester at all — that slot is PAM-only). Some topics
(e.g. `schwingungen-wellen`) appear in *both* tracks but at different
points in time, so the same topic name can legitimately exist twice in
the tree (once under the standard track's semester, once under the PAM
`pam/` subfolder of its own, earlier or later, semester) — that's
intentional, not a duplicate to merge.

If the Stoffplan itself changes (new topic, moved semester, track
restructured), update these folders to match it — the spreadsheet is the
source of truth, not this file; re-derive from it rather than patching
folder names ad hoc.

Filename convention: `<thema>-<typ>.tex`, e.g. `newtonsche-gesetze-arbeitsblatt.tex`,
`kinematik-pruefung.tex`. Keep filenames (and folder names) lowercase,
hyphenated, no umlauts (use `ae`/`oe`/`ue` — avoids encoding surprises
across tools/OSes even though the document content itself uses proper
umlauts).

### When adding new material

- Start from the matching file in `vorlagen/`, not from a blank file or an
  existing exercise — the templates carry the header, point/answer-space
  conventions, and solutions toggle already wired up correctly.
- Single reusable exercises go in the matching `uebungen/<topic>/` folder
  as standalone `exam`-class fragments (own `\question`, no full exam
  wrapper) so they can be `\input{}`ed into multiple Arbeitsblätter/
  Prüfungen later, for any institution. Ask before building out that
  `\input` composition workflow if it isn't set up yet — it isn't as of
  this writing; exercises are currently standalone documents.
- Arbeitsblätter, Prüfungen, Praktika, and Folien for a specific
  institution go under `institutionen/<name>/`. If the task doesn't say
  which institution, ask — don't assume KFR. Within `institutionen/KFR/`,
  `arbeitsblaetter/` and `folien/` follow the `<klasse>/<semester>/<thema>/`
  Stoffplan layout; `pruefungen/` and `praktika/` stay flat. The UZH
  placement folders may need a different layout — ask if it isn't obvious.
- Once prose (Theorie/Beispiele/Aufgabentext/Lösungen) is drafted or
  edited, run the `bindestrich-stil-reviewer` agent on the file — it fixes
  avoidable Bindestriche in place per the house-style rule above, before
  the worksheet/exam is considered done.
