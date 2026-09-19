# LaTeX poster (Gemini theme)

Poster 5 for the 1st Workshop on Neuromuscular Robotics, IROS 2026, built with
[Gemini](https://github.com/anishathalye/gemini), a beamerposter theme by Anish
Athalye (MIT licence, `LICENSE-gemini.md`). It replaces the hand-written HTML /
headless-Chrome poster kept alongside it (`../poster.html`, rendered copy
`../poster_A0_html.pdf`); the content is the same.

## Files

- `poster.tex` -- the poster: A0 portrait, three columns, sections 1-11 plus
  references, figures pulled from `../figures/*.pdf` (vector).
- `beamerthemegemini.sty` -- vendored verbatim from upstream, unmodified.
- `beamercolorthemeslatemagenta.sty` -- this project's own colour theme for
  Gemini: white canvas, dark-slate text (`#34495e`), magenta accent
  (`#ec008b`), light-gray panels, per `~/.claude/web-color-theme.md`. Slate
  headline band with a magenta rule, magenta block titles, the take-home on an
  accent tint, references on a gray panel.

## Build

Dependencies: `tectonic` (XeTeX; `brew install tectonic`) and the Raleway and
Lato fonts the theme asks for, installed system-wide:

```
brew install --cask font-raleway font-lato
make            # -> poster.pdf, one A0 page
make preview    # -> poster_preview.png, a small check render
```

Upstream builds with LuaTeX; tectonic's XeTeX works here and needs no TeX Live
installation. The vertical fit is tuned by the `scale` option in the
`beamerposter` line (currently `0.98`) plus the spacing overrides just below
`\usecolortheme`: raise `scale` and the content overflows the page, which shows
up as an `Overfull \vbox` warning, so check the build log after editing text.

Figures come from `scripts/poster_figures.py` (no flag = poster scale), which
writes SVG, PNG and PDF into `../figures/`.
