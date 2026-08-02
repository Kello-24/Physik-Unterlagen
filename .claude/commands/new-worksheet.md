---
description: Scaffold a new Arbeitsblatt or Prüfung from the house template, placed in the correct institutionen/ path, with the header pre-filled and the topic's lernziele.md linked if present.
argument-hint: <Thema> <Klasse> <Semester> [--institution KFR|UZH-Praktikum-I|UZH-Praktikum-II] [--type arbeitsblatt|pruefung]
---

1. Determine target folder: `institutionen/<institution>/arbeitsblaetter/<Klasse>/<Semester>/[pam/]<Thema>/` (default institution: KFR; default type: arbeitsblatt) — match the existing Stoffplan-mirrored folder for this topic if it already exists as an empty `.gitkeep` directory; do not invent a new naming scheme.
2. Copy the matching `vorlagen/<type>-vorlage.tex` into that folder, named `<Thema>.tex`.
3. Fill in `\Kopfzeile`/`\Klasse`/`\Datum`/`\Thema` placeholders with the known values (leave `\Datum` as a clear placeholder like `TT.MM.JJJJ` if the actual lesson date isn't given).
4. Check whether a `lernziele.md` already exists in that folder (copied over from the Backward Design docx). If yes, read it and use the LZ list to structure exercise placeholders (one comment block per LZ, e.g. `% --- LZ3: Sekantensteigung berechnen ---`). If no, proceed without it and note in the response that no lernziele.md was found for this topic.
5. For `--type arbeitsblatt` (not `pruefung`): the copied template already carries a `\begin{theoriebox}...\end{theoriebox}` block between the Lernziele `infobox` and `\begin{questions}` — leave it in place as the scaffold's placeholder. When exercise content is later drafted for this file (a separate step, see below), the Theorie block must be filled in with the actual physics content (definitions/formulas/Merksätze) the exercises depend on, written *before* the exercises themselves — never left as `\dots`.
6. Compile once via `/compile` to confirm the scaffold is valid before handing back.

Do not write actual exercise content in this step unless explicitly asked — this command only scaffolds structure.
