# Auftrag: Anleitung "09EmmN – Reflexion und Brechung" als LaTeX generieren

Dieses Dokument ist das vollständige Inhalts-Briefing für die neue Praktikums-Anleitung, inkl. dem einzuhaltenden Format (dieses Repo hat kein eigenes `.github/copilot-instructions.md`, deshalb ist der Hausstil unten direkt eingebettet, siehe "Format/Preamble").

## Verfügbare Dateien in diesem Ordner

- `09EmmN_Messdaten_Reflexion_Brechung.xlsx` — vorbereitete Excel-Datei für die Schüler:innen-Messdaten (Blätter "Reflexion" und "Brechung"), inkl. automatischer Mittelwert-Berechnung pro Messpunkt, Streudiagramm mit Trendlinie, Vergleichsblock mit automatisch berechnetem `SLOPE`/`INTERCEPT`/`LINEST` (Standardfehler der Steigung, dient nur der Visualisierung/dem Vergleich, siehe Auswertung Schritt 2). Beim Blatt "Brechung" berechnet Excel zusätzlich automatisch pro Messpunkt $\Delta(\sin\alpha_i)$ und $\Delta(\sin\beta_i)$ (Intervallmethode, zwei zusätzliche Spalten in der Messwerttabelle) sowie $n_i=\sin\alpha_i/\sin\beta_i$ — die SuS lesen diese Werte nur ab und rechnen damit von Hand weiter (siehe Auswertung Schritt 3). Alle eigentlichen Fehlerrechnungs-Schritte (Δθ, pro Punkt $k_i/\Delta k_i$ bzw. $\Delta n_i$, sowie die abschliessende Mittelung) rechnen die SuS selbst mit dem Taschenrechner (Hilfstabelle in der Anleitung) und tragen nur die Endresultate als Zahl in die entsprechenden Eingabezellen ein. Wird in der Anleitung referenziert, die Messwerttabellen selbst kommen **nicht** mehr aufs Anleitungsblatt.
- `tikz_skizzen.tex` — geprüfter, kompilierender TikZ-Code für beide Theorie-Skizzen (Reflexion, Brechung), siehe unten unter Theorie eingebettet.
- `Bilder/tikz_vorschau.jpg` — Rendering-Vorschau der beiden Skizzen.
- `Bilder/aufbau_reflexion.jpeg`, `Bilder/aufbau_brechung.jpeg` — Original-Setupdiagramme (PASCO-Baukasten) aus der alten Vorlage, für die Durchführung.
- `Bilder/nahaufnahme_drehtisch.jpeg` — Nahaufnahme des Drehtisches mit Winkelskala, optional zusätzlich verwendbar.

## Format/Preamble (KFR-Hausstil für Praktikums-Anleitungen)

Inhaltliche Regeln: vollständige Theorie einbauen (Thema meist noch nicht im Unterricht behandelt); keine "KI-Gedankenstriche"; sichtbarer Antwortraum für jede Aufgabe, als kariertes Muster (nicht liniert); Geräte-Genauigkeiten nie als Fakt vorgeben, sondern als Entdeckungs-/Diskussionsfrage; Fehlerquellen/-konsequenzen nicht erklären, sondern als Aufgabe stellen; Schweizer Rechtschreibung (kein ß); Anleitung muss den tatsächlichen Ablauf abbilden.

Preamble (kompiliert nachweislich mit `pdflatex`, ohne babel/siunitx, da in mancher TeX-Live-Installation nicht vorhanden):

```latex
\documentclass[11pt,a4paper]{article}
\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}
\usepackage{lmodern}
\usepackage[a4paper,margin=2.3cm]{geometry}
\usepackage{enumitem}
\usepackage{booktabs}
\usepackage{array}
\usepackage{tabularx}
\usepackage{graphicx}
\usepackage{amsmath,amssymb}
\usepackage{xcolor}
\usepackage{tcolorbox}
\tcbuselibrary{skins,breakable}
\usepackage{fancyhdr}
\usepackage[hidelinks]{hyperref}
\usepackage{titlesec}
\usepackage{tikz}
\usetikzlibrary{arrows.meta}

\definecolor{kfrblue}{HTML}{1F5C99}
\definecolor{warnorange}{HTML}{B45309}
\definecolor{warnbg}{HTML}{FFF3E0}
\definecolor{tipbg}{HTML}{EAF3EA}
\definecolor{tipgreen}{HTML}{2E7D32}

\titleformat{\section}{\large\bfseries\color{kfrblue}}{\thesection}{0.6em}{}
\titleformat{\subsection}{\normalsize\bfseries\color{kfrblue}}{\thesubsection}{0.6em}{}

\pagestyle{fancy}
\fancyhf{}
\renewcommand{\headrulewidth}{0.4pt}
\fancyhead[L]{\small Physik 5.\,Klasse, Praktikum 09}
\fancyhead[R]{\small Reflexion und Brechung}
\fancyfoot[C]{\small\thepage}

\newtcolorbox{achtungbox}[1][]{%
  colback=warnbg, colframe=warnorange, coltitle=white, colbacktitle=warnorange,
  boxrule=0.8pt, arc=2pt, left=6pt, right=6pt, top=4pt, bottom=4pt, breakable,
  title={\textbf{Achtung: darauf kommt es an}#1}, fonttitle=\small, fontupper=\small
}
\newtcolorbox{tippbox}[1][]{%
  colback=tipbg, colframe=tipgreen, coltitle=white, colbacktitle=tipgreen,
  boxrule=0.8pt, arc=2pt, left=6pt, right=6pt, top=4pt, bottom=4pt, breakable,
  title={\textbf{Merke}#1}, fonttitle=\small, fontupper=\small
}
\newtcolorbox{aufgabebox}[1][]{%
  colback=gray!6, colframe=kfrblue, coltitle=white, colbacktitle=kfrblue,
  boxrule=0.8pt, arc=2pt, left=6pt, right=6pt, top=4pt, bottom=4pt, breakable,
  title={\textbf{Aufgabe}#1}, fonttitle=\small, fontupper=\small
}

\setlist[itemize]{leftmargin=1.4em, itemsep=2pt, topsep=3pt}
\setlist[enumerate]{leftmargin=1.6em, itemsep=2pt, topsep=3pt}

\newcommand{\celsius}{\ensuremath{^{\circ}\mathrm{C}}}
\newcommand{\SI}[2]{#1\,#2}

\newlength{\gridwidth}
\newcommand{\antwortraum}[1]{%
  \par\vspace{4pt}\noindent
  \setlength{\gridwidth}{\linewidth}%
  \begin{tikzpicture}
    \draw[step=0.5cm, gray!25, very thin] (0,0) grid (\gridwidth,#1);
    \draw[black, thin] (0,0) rectangle (\gridwidth,#1);
  \end{tikzpicture}
  \vspace{4pt}
}
\newcommand{\antwortraumS}{\antwortraum{2.5cm}}
\newcommand{\antwortraumM}{\antwortraum{4.5cm}}
\newcommand{\antwortraumL}{\antwortraum{8cm}}

\newcommand{\zeichenraum}[1][4.5cm]{%
  \par\vspace{4pt}\noindent
  \fbox{\begin{minipage}[t][#1][t]{\dimexpr\linewidth-2\fboxsep-2\fboxrule}\ \end{minipage}}
  \vspace{4pt}
}
```

Titelblock direkt nach `\begin{document}\thispagestyle{empty}`:

```latex
\begin{center}
  {\color{kfrblue}\Large\bfseries Praktikum 09: Reflexion und Brechung}\\[2pt]
  {\normalsize Kantonsschule Freudenberg, Physik 5.\ Klasse}
\end{center}
\vspace{4pt}
\noindent
\begin{tabularx}{\linewidth}{@{}X X@{}}
  Name/n: \dotfill & Datum: \dotfill \\[4pt]
  Halbklasse: \dotfill & Unterlagen von: L.\,Keller \\
\end{tabularx}
\vspace{10pt}\hrule\vspace{10pt}
```

Build-Workflow: `pdflatex -interaction=nonstopmode -halt-on-error` (zweimal), danach `pdftoppm -jpeg -r 130` und die Seiten visuell prüfen, bevor das Dokument als fertig gilt.

## Ziel

Reflexionsgesetz und Brechungsgesetz (Snellius) am PASCO-Optikbaukasten bestimmen, daraus die Brechzahl von Acrylglas messen und mit dem Literaturwert $n=1.49$ vergleichen.

## Theorie (ganz am Anfang, vor dem Mindmap)

**Reflexion:** Reflexionsgesetz $\theta_i=\theta_r$, Begriffe Lot/Einfallswinkel $\theta_i$/Reflexionswinkel $\theta_r$.

**Brechung:** Snellius $n_1\sin\alpha=n_2\sin\beta$; für $n_1\approx1$ (Luft) folgt $n_{Acryl}=\dfrac{\sin\alpha}{\sin\beta}$. Kein Snellius/Descartes-Geschichtsteil.

TikZ-Skizzen (aus `tikz_skizzen.tex`, bereits kompiliert getestet):

```latex
% ---- Reflexion ----
\begin{center}
\begin{tikzpicture}[>=Latex, scale=1.1]
  \draw[thick] (-3,0) -- (3,0);
  \fill[kfrblue!15] (-3,-0.15) rectangle (3,0);
  \draw[thick] (-3,-0.15) -- (3,-0.15);
  \node[below] at (2.7,-0.15) {\small Spiegel};
  \draw[dashed, gray] (0,-0.3) -- (0,2.6);
  \node[above] at (0,2.6) {\small Lot};
  \draw[->, thick] (-2.2,2.2) -- (0,0);
  \node at (-2.05,2.55) {\small einfallender Strahl};
  \draw[->, thick] (0,0) -- (2.2,2.2);
  \node at (2.0,2.55) {\small reflektierter Strahl};
  \draw (0,0) ++(90:0.9) arc (90:135:0.9);
  \node at (-0.4,1.05) {\small $\theta_i$};
  \draw (0,0) ++(90:0.9) arc (90:45:0.9);
  \node at (0.4,1.05) {\small $\theta_r$};
  \node[circle,fill=black,inner sep=1pt] at (0,0) {};
\end{tikzpicture}
\end{center}

% ---- Brechung ----
\begin{center}
\begin{tikzpicture}[>=Latex, scale=1.1]
  \fill[blue!5] (-3,0) rectangle (3,2.6);
  \fill[kfrblue!20] (-3,-2.2) rectangle (3,0);
  \draw[thick] (-3,0) -- (3,0);
  \node[above right] at (-3,0.15) {\small Luft, $n_1$};
  \node[below right] at (-3,-2.0) {\small Acrylglas, $n_2$};
  \draw[dashed, gray] (0,-2.0) -- (0,2.4);
  \node[above] at (0,2.4) {\small Lot};
  \draw[->, thick] (-2.1,2.1) -- (0,0);
  \node at (-1.5,2.35) {\small Einfallswinkel $\alpha$};
  \draw[->, thick] (0,0) -- (1.05,-1.9);
  \node at (2.15,-1.5) {\small Brechungswinkel $\beta$};
  \draw[->, thin, gray, dashed] (0,0) -- (2.1,2.1);
  \node[gray] at (2.75,2.2) {\small schwache Teilreflexion};
  \draw (0,0) ++(90:0.9) arc (90:135:0.9);
  \node at (-0.4,1.05) {\small $\alpha$};
  \draw (0,0) ++(-90:0.9) arc (-90:-61:0.9);
  \node at (0.45,-1.0) {\small $\beta$};
  \node[circle,fill=black,inner sep=1pt] at (0,0) {};
\end{tikzpicture}
\end{center}
```

Preamble braucht zusätzlich `\usetikzlibrary{arrows.meta}` (für den `Latex`-Pfeilkopf), sonst kompiliert es nicht.

## Mindmap-Aufgabe

Direkt nach der Theorie, als Anwendungsaufgabe (nicht als Vorwissens-Abfrage):

> Aufgabe: Fasse mit einem Mindmap die wichtigsten Begriffe aus der Theorie zusammen.

Antwortraum (gross, für Mindmap-Zeichnung, `\zeichenraum` oder grösseres `\antwortraumL`).

Die trivialen Lückentext-Fragen aus der Originalvorlage direkt danach ("Gegenstände sehen wir nur, wenn...") weglassen, das steht jetzt in der Theorie.

## Rechercheaufgabe (neu)

> Aufgabe: Recherchiert im Internet, wo Reflexion und Brechung in Technik oder Alltag eine wichtige Rolle spielen (mindestens zwei Beispiele, kurz erklärt).

`\antwortraumM`

## Sicherheitshinweise

Lichtquelle und Verlängerungskabel; nicht direkt in den Lichtstrahl blicken; Lampe kann nach längerem Betrieb warm werden.

## Material

Pro Gruppe ein vollständiger PASCO Optik-Baukasten: Lichtquelle mit Spaltblende, Drehtisch mit Winkelskala, Spiegel, Halbzylinder/Acrylglaskörper, Verlängerungskabel. Kein Lehrperson/Schüler-Split nötig (jede Gruppe hat ihren eigenen Baukasten).

## Planung (Plenum, vor dem Aufbau)

Das ist der Kern der bisherigen "Ideen für die Lehrperson", jetzt als Aufgabe statt geheimer Lehrpersonen-Notiz. Wird **im Plenum besprochen**, bevor die Gruppen aufbauen:

> Aufgabe (Plenum): Diskutiert gemeinsam:
> - Wie erreicht ihr einen möglichst dünnen, scharf begrenzten Lichtstrahl auf dem Drehtisch? (Tipp: Position des Drehtisches auf der Schiene)
> - Wie verhindert ihr störendes Streulicht neben dem eigentlichen Lichtstrahl?
> - In welcher Reihenfolge richtet ihr Lichtquelle, Drehtisch und Spiegel/Halbzylinder zueinander aus, damit der Drehpunkt exakt auf der Winkelskala liegt?
> - Was passiert, wenn Spiegel oder Halbzylinder nicht exakt im Drehpunkt stehen?
> - Warum messt ihr jeden Winkel zweimal, einmal mit dem einfallenden Strahl links und einmal rechts vom Lot?

`\antwortraumS` (Stichworte).

## Durchführung

Zwei Unterabschnitte, Reflexion und Brechung, je mit dem passenden Original-Foto (`Bilder/aufbau_reflexion.jpeg` bzw. `Bilder/aufbau_brechung.jpeg`) eingebunden.

Messwerte werden **nicht** mehr auf dem Anleitungsblatt eingetragen, sondern direkt in `09EmmN_Messdaten_Reflexion_Brechung.xlsx` (Blatt "Reflexion" bzw. "Brechung"). Kurzer Hinweistext dazu in der Anleitung.

Achtung-Box: Taschenrechner auf **DEG** (Grad) stellen, bevor sin-Werte berechnet werden (bei Brechung, für $\sin\alpha$ und $\sin\beta$).

Bei Brechung zusätzlich eine Bonusaufgabe:

> Bonusaufgabe: Bei grossen Einfallswinkeln bemerkt ihr evtl. einen schwachen, reflektiert wirkenden Strahl, obwohl ihr die Brechung untersucht. Woher kommt der? Ist er nur bei grossen Winkeln da, oder auch bei kleinen (nur weniger sichtbar)?

## Auswertung (für Reflexion und Brechung je gleich aufgebaut, Formel jeweils VOR der Rechenaufgabe angeben)

### Schritt 1: Messunsicherheit Δθ bestimmen (gemeinsam für beide Teilversuche)

> Aufgabe: Bestimmt eure Ablesegenauigkeit an der Winkelskala $\Delta\theta_{Skala}$ (wie fein könnt ihr den Winkel wirklich noch unterscheiden?) und schätzt zusätzlich die Winkelbreite des Lichtstrahls selbst $\Delta\theta_{Strahl}$ ab (der Strahl ist kein unendlich dünner Strich — wie breit erscheint er auf der Skala, in Grad?).

Formel (Summenregel), kombiniert beide Fehlerquellen zu einem einzigen Δθ pro Winkelablesung:
$$\Delta\theta = \Delta\theta_{Skala} + \Delta\theta_{Strahl}$$

`\antwortraumS` für die eigene Schätzung. Keinen Zahlenwert vorgeben — die SuS sollen selbst schätzen (typisch kommen beide bei ca. 1° heraus, das aber nicht vorwegnehmen).

### Schritt 2: Graph von Hand, Steigung ablesen (Visualisierung, Vergleich mit Excel)

Werte von Hand auf ein kariertes Diagrammraster übertragen: Reflexion → Einfallswinkel (x) vs. Reflexionswinkel-Mittelwert (y); Brechung → $\sin\alpha$ (x) vs. $\sin\beta$ (y), beide selbst mit dem Taschenrechner berechnet (Achtung DEG). Beste Gerade von Hand einzeichnen.

Formel (Steigungsdreieck, zwei Punkte auf der eigenen gezeichneten Geraden wählen):
$$k = \frac{y_2-y_1}{x_2-x_1}, \qquad d = y_1 - k\cdot x_1$$

Dieser Schritt dient der Visualisierung und dem späteren Vergleich mit Excels Trendlinie (Schritt 4) — die eigentliche Fehlerrechnung (Schritt 3) läuft unabhängig davon über die einzelnen Messpunkte, nicht über diese Handgerade.

### Schritt 3: Fehlerrechnung — pro Messpunkt, dann Mittelung über alle Punkte

Grundidee: statt nur einen Messpunkt oder die ganze Gerade zu betrachten, rechnet ihr die schon bekannte Quotientenregel für **jeden einzelnen** Messpunkt durch und mittelt danach — so nutzt ihr wirklich alle 10 Messungen, mit Werkzeugen, die ihr schon kennt (Quotientenregel, Mittelwert), ganz ohne neue Formel.

**Bei Reflexion:** Formel pro Messpunkt (Quotientenregel):
$$k_i = \frac{\theta_{r,i}}{\theta_{i,i}}, \qquad \Delta k_i = k_i\left(\frac{\Delta\theta}{\theta_{r,i}}+\frac{\Delta\theta}{\theta_{i,i}}\right)$$

> Aufgabe: Berechnet $k_i$ und $\Delta k_i$ für jeden Messpunkt **ausser** $\theta_i=0°$ (dort könnt ihr nicht durch 0 teilen — nennt selbst einen Grund, wieso das hier kein Problem für das Reflexionsgesetz ist). Tragt die Werte in die Hilfstabelle ein.

Hilfstabelle als Antwortraum: Spalten $\theta_i$ / $\theta_r$ / $k_i$ / $\Delta k_i$ / $(\Delta k_i)^2$, 9 Zeilen (10°–90°) plus Summenzeile für $(\Delta k_i)^2$.

Formel für das Endresultat (Mittelwert und Fehler des Mittelwerts, quadratische Kombination):
$$\bar k = \text{Mittelwert}(k_i), \qquad \Delta \bar k = \frac{1}{N}\sqrt{\sum_i (\Delta k_i)^2} \quad (N=9)$$

> Aufgabe: Bildet den Mittelwert eurer 9 $k_i$-Werte sowie die Summe der $(\Delta k_i)^2$ aus der Hilfstabelle, und berechnet damit $\bar k$ und $\Delta\bar k$. Tragt beide Werte in die Excel-Datei ein.

**Bei Brechung:** Formel für den Sinus-Fehler pro Messpunkt (Intervallmethode, wird für euch automatisch in der Excel-Datei berechnet, zwei Spalten in der Messwerttabelle):
$$\Delta(\sin\alpha_i) \approx \frac{\sin(\alpha_i+\Delta\theta)-\sin(\alpha_i-\Delta\theta)}{2}, \qquad \Delta(\sin\beta_i) \approx \frac{\sin(\beta_i+\Delta\theta)-\sin(\beta_i-\Delta\theta)}{2}$$

Formel pro Messpunkt (Quotientenregel), mit $n_i=\sin\alpha_i/\sin\beta_i$ (ebenfalls schon automatisch in Excel):
$$\Delta n_i = n_i\left(\frac{\Delta(\sin\alpha_i)}{\sin\alpha_i}+\frac{\Delta(\sin\beta_i)}{\sin\beta_i}\right)$$

> Aufgabe: Lest $n_i$, $\Delta(\sin\alpha_i)$, $\Delta(\sin\beta_i)$, $\sin\alpha_i$ und $\sin\beta_i$ aus der Excel-Datei für jeden Messpunkt **ausser** $\alpha=0°$ ab (gleicher Grund wie bei Reflexion: Division durch 0) und berechnet damit von Hand $\Delta n_i$. Tragt die Werte in die Hilfstabelle ein.

Hilfstabelle als Antwortraum: Spalten $\alpha_i$ / $n_i$ / $\Delta(\sin\alpha_i)$ / $\Delta(\sin\beta_i)$ / $\Delta n_i$ / $(\Delta n_i)^2$, 9 Zeilen (10°–90°) plus Summenzeile für $(\Delta n_i)^2$.

Formel für das Endresultat (gleiches Prinzip wie bei Reflexion):
$$\bar n = \text{Mittelwert}(n_i), \qquad \Delta \bar n = \frac{1}{N}\sqrt{\sum_i (\Delta n_i)^2} \quad (N=9)$$

> Aufgabe: Bildet den Mittelwert eurer 9 $n_i$-Werte (oder lest $\bar n$ direkt in Excel ab) sowie die Summe der $(\Delta n_i)^2$ aus der Hilfstabelle, und berechnet damit $\Delta\bar n$. Tragt beide Werte in die Excel-Datei ein.

### Schritt 4: Vergleich mit Theorie und mit Excel

Theorie: Reflexion erwartet $k=1,\ d=0$; Brechung erwartet $n_{Lit}=1.49$.

Euer Endresultat: $\bar k\pm\Delta\bar k$ (Reflexion) bzw. $\bar n\pm\Delta\bar n$ (Brechung) aus Schritt 3 — unabhängig von der Handgeraden aus Schritt 2 berechnet.

Excel zeigt zusätzlich automatisch die Trendlinie sowie im Vergleichsblock `SLOPE`/`INTERCEPT` (Steigung/Achsenabschnitt der Ausgleichsgeraden durch alle Punkte) und den statistischen Standardfehler der Steigung (`LINEST`) an. Diskussionsfrage im Text: Wie gut stimmen eure Handgerade (Schritt 2) und euer $\bar k$/$\bar n$ (Schritt 3) mit Excels Trendlinie überein? Woher könnten Abweichungen kommen?

### Bonusaufgabe: Wie rechnet Excel die Steigung eigentlich aus?

Formel (ohne Herleitung, nur zum Verstehen und Nachrechnen):
$$m = \frac{\sum_i (x_i-\bar x)(y_i-\bar y)}{\sum_i (x_i-\bar x)^2}$$

Kurze Erklärung direkt in der Anleitung: Der Zähler misst, ob $x$ und $y$ gemeinsam über/unter ihrem Mittelwert liegen (gemeinsame Variation), der Nenner ist die Streuung von $x$.

> Bonusaufgabe: Wählt 2–3 Messpunkte aus, berechnet für diese $(x_i-\bar x)(y_i-\bar y)$ von Hand und vergleicht die Grössenordnung mit dem in Excel automatisch angezeigten Steigungswert (`SLOPE`). Passt das Vorzeichen und ungefähr die Grössenordnung zusammen?

Kein Hausaufgaben-Split — alles inklusive Fehlerrechnung ist für die Doppellektion ausgelegt.

## Fehlerquellen (Plenum)

> Aufgabe (Plenum): Sammelt gemeinsam die wichtigsten Fehlerquellen dieses Versuchs.

## Fehlerkategorie (Plenum)

> Aufgabe (Plenum): Ihr habt Δθ aus zwei Quellen kombiniert (Skalenauflösung und Strahlbreite). Welcher Fehlerkategorie (Ablese-/Auflösungsfehler, systematischer Fehler, zufälliger Fehler) ordnet ihr diese beiden Quellen jeweils zu, und warum?

## Mein Ergebnis

Fazit-Box wie bei Versuch 01: gemessenes $\bar n\pm\Delta\bar n$ (aus Schritt 3, Mittelung über alle Messpunkte), Vergleich mit Literaturwert $1.49$, Diskussion ob es übereinstimmt. Analog für Reflexion: $\bar k\pm\Delta\bar k$, Vergleich mit $k=1$.

---

**Auftrag an dich (Copilot/Claude in VSCode):** In diesem Ordner existiert bereits `09EmmN_Reflexion_Brechung.tex` (mit zugehörigem `.pdf` und `09EmmN_Reflexion_Brechung_Loesungen.pdf`) aus einer früheren Version dieses Auftrags. Aktualisiere primär den Auswertungs-Teil (und "Mein Ergebnis") gemäss der neuen Beschreibung oben — die übrigen Abschnitte (Theorie, Mindmap, Recherche, Planung, Durchführung, Fehlerquellen, Fehlerkategorie) bleiben inhaltlich wie zuvor, ausser die Formeln/Struktur oben verlangen explizit eine Anpassung. Format/Preamble wie oben. Zwei Bilder aus `Bilder/` einbinden (`aufbau_reflexion.jpeg`, `aufbau_brechung.jpeg`), die beiden TikZ-Skizzen wie oben, und einen Hinweis auf `09EmmN_Messdaten_Reflexion_Brechung.xlsx` für die Messwerteingabe.

Wichtig für die neue Auswertung: baue für Reflexion UND Brechung je eine Hilfstabelle als Antwortraum ein (9 Zeilen, 10°–90°, plus Summenzeile), wie in Schritt 3 oben spezifiziert — Reflexion: $\theta_i$/$\theta_r$/$k_i$/$\Delta k_i$/$(\Delta k_i)^2$; Brechung: $\alpha_i$/$n_i$/$\Delta(\sin\alpha_i)$/$\Delta(\sin\beta_i)$/$\Delta n_i$/$(\Delta n_i)^2$. Der frühere Aufbau mit einer separaten $\Sigma(x_i-\bar x)^2$-Tabelle und der Regressions-Fehlerformel entfällt komplett — er ist durch das neue Schritt-3-Verfahren (pro Punkt Quotientenregel, dann Mittelwert mit $\frac1N\sqrt{\Sigma(\dots)^2}$) ersetzt.

Kompilieren mit `pdflatex -interaction=nonstopmode -halt-on-error` (zweimal), danach mit `pdftoppm -jpeg -r 130` visuell prüfen, und anschliessend die Lösungsdatei (`09EmmN_Reflexion_Brechung_Loesungen.pdf`) mit den neuen Fehlerrechnungs-Schritten konsistent nachführen.
