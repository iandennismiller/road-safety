# road-safety
# Copyright (c) 2016 Ian Dennis Miller

all: analysis
	@echo "OK"

analysis:
	cd analysis && Rscript -e "library(bookdown); bookdown::render_book('toronto-road-safety.Rmd', 'bookdown::gitbook')"
	convert -resize '600' docs/_main_files/figure-html/trends-1.png docs/trends-thumb.png

pdf:
	cd analysis && Rscript -e "library(bookdown); bookdown::render_book('toronto-road-safety.Rmd', 'bookdown::pdf_book')"

release: analysis pdf
	cp -r analysis/_book/* docs
	@echo "ok"

open:
	open analysis/_book/introduction.html

clean:
	rm -f analysis/toronto-road-safety.md
	rm -f analysis/toronto-road-safety.pdf
	rm -f analysis/toronto-road-safety.html
	rm -rf analysis/toronto-road-safety_files
	rm -rf analysis/_bookdown_files
	rm -rf analysis/_book

.PHONY: all analysis release open clean
