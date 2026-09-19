# Muscle activation control poster

Portrait poster for the IROS 2026 Workshop on Neuromuscular Robotics.
Uses this repository's original Gemini-portrait layout and Heriot-Watt colour
theme. Scientific text and figures come from `../docs/poster/`; the older
poster's layout is not used.

## Build

Requires Tectonic, Raleway and Lato fonts; previews need Poppler.

```sh
brew install tectonic poppler
brew install --cask font-raleway font-lato
make
make preview
```

Outputs: `poster.pdf` and `poster_preview.png`. The first Tectonic build may
need network access to download packages. Check `poster.log` for overfull
boxes after editing.

## Edit

- `poster.tex`: content and original custom layout (91 × 122 cm).
- `figures/*.pdf`: six vector figures copied from the project draft.
- `beamercolorthemeheriotwatt.sty`: colour palette.
- `beamerthemegemini.sty`: layout and typography.

The build is independent of the parent project's directories. Numerical
results, event details and poster number 5 come from the existing draft;
this layout revision does not independently validate them.
References are inline; BibTeX is not required. The original `poster.bib`,
`img/`, `assets/` and alternative colour themes are unused template assets.

Gemini is MIT licensed; see `LICENSE.md`.
