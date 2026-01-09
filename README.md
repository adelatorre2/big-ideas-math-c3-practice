# Foundations Review — Big Ideas Math Course 3 Practice Packet

A LaTeX-based practice packet for Big Ideas Math Course 3 (Common Core, California Edition). It produces a printable PDF review packet meant for middle school students, with chapter-based practice on core skills and a structured progression for independent study.

## What this project is
- **The PDF:** `master_review.pdf` is a compiled review packet titled *Foundations Review*.
- **Who it is for:** Students preparing for Course 3 foundations (and anyone supporting them) who need a focused, organized practice set.
- **How it is organized:** A main LaTeX file includes chapter files, each of which includes multiple section files.

## Folder structure
```
.
├── master_review.tex          # Main entry point for the full packet
├── master_review.pdf          # Compiled output (if already built)
├── sections/                  # Chapter and appendix source files
│   ├── ch0_absolute_foundations/
│   │   ├── ch0_absolute_foundations.tex
│   │   └── sections/           # Section-level content files
│   ├── ch1_equations/
│   ├── ch2_transformations/
│   ├── ...
│   └── appendix.tex
├── figures/                   # Images used in the packet
├── references/                # Bibliography sources
│   └── math-c3_bigideas_prac-pak.bib
└── out/                        # Build output (if used locally)
```

## Build the PDF
From the project root:

```bash
pdflatex master_review.tex
bibtex master_review
pdflatex master_review.tex
pdflatex master_review.tex
```

This generates `master_review.pdf` in the project root.

If you use `latexmk`, you can also run:

```bash
latexmk -pdf master_review.tex
```

## Build standalone worksheets
Generate section PDFs into `worksheets/<chapter>/` using the Makefile target:

```bash
make worksheets
```

Outputs are written to paths like `worksheets/ch0/0.3_distributive_property.pdf`.

To add a new worksheet to the build list, add another `latexmk` line under the `worksheets` target in `Makefile` with the desired `-jobname` and output folder.

## Extending the project
To add a **new section** within a chapter:
1. Create a new `.tex` file inside that chapter’s `sections/` folder.
2. Add a matching `\subfile{...}` line in the chapter’s `.tex` file.

To add a **new chapter**:
1. Create a new folder in `sections/` (for example, `sections/ch11_new_topic/`).
2. Add a chapter file (for example, `sections/ch11_new_topic/ch11_new_topic.tex`) that starts with `\chapter{...}` and `\subfile{...}` lines for its sections.
3. Add a corresponding `\subfile{sections/ch11_new_topic/ch11_new_topic.tex}` line in `master_review.tex`.

To add references, update `references/math-c3_bigideas_prac-pak.bib` and cite them as needed.

## Author
Alejandro De La Torre
