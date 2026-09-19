LATEX := tectonic
FIGURES := $(wildcard figures/*.pdf)
.PHONY: all poster preview clean
all: poster
poster: poster.pdf
poster.pdf: poster.tex beamerthemegemini.sty beamercolorthemeheriotwatt.sty $(FIGURES)
	$(LATEX) -X compile --keep-logs poster.tex
preview: poster.pdf
	pdftoppm -r 40 -png -singlefile poster.pdf poster_preview
clean:
	rm -f poster.pdf poster.log poster_preview.png poster.aux poster.nav poster.out poster.snm poster.toc
