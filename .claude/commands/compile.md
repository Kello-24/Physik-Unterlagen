---
description: Compile a LaTeX worksheet/exam twice (required for exam-class point totals) and surface only the actionable errors/warnings from the log.
argument-hint: <path/to/file.tex>
allowed-tools: Bash(pdflatex *)
---

Compile $ARGUMENTS twice with `pdflatex -interaction=nonstopmode -halt-on-error`, run from the file's own directory (build artifacts stay next to the source, matching this repo's existing convention).

After both passes, read the .log file and report:
- Any errors (halt-on-error stops on the first one — fix and note what was fixed)
- Overfull/Underfull hbox or vbox warnings, with the offending line numbers
- Whether the PDF was produced and how many pages it has

Do not paste the raw log — summarize only what's actionable.
