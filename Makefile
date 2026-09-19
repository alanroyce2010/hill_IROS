# Poster 5 (IROS 2026 Neuromuscular Robotics workshop), Gemini beamerposter
# theme. Needs tectonic (XeTeX) and the Raleway + Lato fonts installed on the
# system: brew install --cask font-raleway font-lato
.PHONY: poster preview clean

poster: poster.pdf

poster.pdf: poster.tex beamerthemegemini.sty beamercolorthemeslatemagenta.sty
	tectonic -X compile poster.tex

preview: poster.pdf
	pdftoppm -r 26 -png -singlefile poster.pdf poster_preview

clean:
	rm -f poster.pdf poster.log poster_preview.png
