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
exercises/{mechanics,electricity,optics,thermodynamics}/
templates/
institutionen/
  KFR/{exams,worksheets,praktika,slides}/
  UZH-Praktikum-I/{exams,worksheets,praktika,slides,reflexion}/
  UZH-Praktikum-II/{exams,worksheets,praktika,slides,reflexion}/
diplomarbeit/
```

- `exercises/` is a shared bank of reusable physics exercises, organized by
  topic and not tied to any one school or placement. Draw from it when
  building worksheets/exams for any institution.
- `templates/` holds the canonical worksheet, exam, praktikum, and beamer
  templates — also shared across all contexts. Copy one out into the
  relevant `institutionen/<name>/` subfolder, don't edit in place.
- `institutionen/` holds institution-specific output: `KFR/` (Kantonsschule
  KFR), `UZH-Praktikum-I/`, and `UZH-Praktikum-II/` (the two UZH teaching
  placements). Each has `exams/`, `worksheets/`, `praktika/`, and `slides/`;
  the two UZH folders additionally have `reflexion/` for lesson reports and
  supervisor feedback (KFR has no equivalent).
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
- Math is written in plain LaTeX math mode (`$...$`, `align`, etc.) — no
  KaTeX, no MathJax, no HTML output. Everything targets PDF.
- Units and quantities: use `siunitx` (`\SI{9.81}{\meter\per\second\squared}`,
  `\si{\newton}`) rather than hand-typed unit spacing.

### Document classes and diagrams

- Worksheets, exams, Praktika: `exam` document class. It's the source of
  truth for question/part numbering, point tracking, and the solutions
  toggle — don't reimplement any of that manually.
- Slides: `beamer` with the custom `KFR` theme (see
  `templates/folien-vorlage.tex`) — large fonts, high contrast, minimal
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

Each file in `templates/` carries its own full preamble rather than pulling
in a shared `.sty`. This is intentional: a teacher (or Claude) should be
able to copy one template into `institutionen/<name>/exams/`,
`institutionen/<name>/worksheets/`, etc., rename it, and have it compile
with no other repo state required. The cost is that a house style change
(e.g. a new package, a header tweak) has to be applied to each template in
`templates/` by hand — there are only four, so this is cheap and keeps
every document legible standalone.

### Header block

Every worksheet/exam/Praktikum starts with the same header block (see
`\Kopfzeile{...}` in each template's preamble): **Klasse**, **Datum**, and
**Thema**, plus a title line. Keep the four pieces of information — class,
date, topic, title — in that order and in that visual position across
templates so students recognize the layout instantly.

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
(6.0) at 100%. It's the default in `templates/pruefung-vorlage.tex` — this
is a **KFR** default; see "Institution-specific conventions" above before
assuming it applies to UZH material. Override per-exam only if a specific
exam needs a different curve, and say so explicitly in that exam's file
(don't change the template's default).

### Exam duration

Default exam length is **45 minutes** (single lesson), shown in the header
as `Zeit: 45 Minuten`. Override per-exam for double-period Klausuren (90
min) by editing that field directly in the copied file.

### Folder structure

`templates/` is flat (canonical starting points — copy, don't edit in
place). See "Repo layout" above for the top-level shape.

`exercises/` is flat by topic (`mechanics/`, `electricity/`, `optics/`,
`thermodynamics/`) — a shared bank not tied to any institution's curriculum
schedule, so it does not mirror any school's Stoffplan.

Within `institutionen/KFR/`, `exams/` and `praktika/` are flat, one file per
Prüfung/Praktikum. `worksheets/` and `slides/` instead mirror **KFR's**
Stoffplan (curriculum plan, `Stoffplan Physik KFR + Praktika.xlsx`, sheet
"Stoffplan"): `<Klasse>/<Semester>/<Thema>/`, e.g.
`institutionen/KFR/worksheets/5-klasse/1-hs/thermodynamik/`. This lets
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

(`<root>` is `institutionen/KFR/worksheets/` or `institutionen/KFR/slides/`.
This Stoffplan mirroring is KFR-specific — the UZH placement folders under
`institutionen/UZH-Praktikum-I/` and `institutionen/UZH-Praktikum-II/` don't
necessarily follow it; ask if unsure how UZH material should be organized
within its `exams/`, `worksheets/`, `praktika/`, `slides/`, `reflexion/`
subfolders.)

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

- Start from the matching file in `templates/`, not from a blank file or an
  existing exercise — the templates carry the header, point/answer-space
  conventions, and solutions toggle already wired up correctly.
- Single reusable exercises go in the matching `exercises/<topic>/` folder
  as standalone `exam`-class fragments (own `\question`, no full exam
  wrapper) so they can be `\input{}`ed into multiple worksheets/exams later,
  for any institution. Ask before building out that `\input` composition
  workflow if it isn't set up yet — it isn't as of this writing; exercises
  are currently standalone documents.
- Worksheets, exams, praktika, and slides for a specific institution go
  under `institutionen/<name>/`. If the task doesn't say which institution,
  ask — don't assume KFR. Within `institutionen/KFR/`, `worksheets/` and
  `slides/` follow the `<klasse>/<semester>/<thema>/` Stoffplan layout;
  `exams/` and `praktika/` stay flat. The UZH placement folders may need a
  different layout — ask if it isn't obvious.
