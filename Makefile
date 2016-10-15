# road-safety
# Copyright (c) 2016 Ian Dennis Miller

all: analysis
	@echo "OK"

analysis:
	cd analysis && Rscript -e "library(bookdown); bookdown::render_book('toronto-road-safety.Rmd', 'bookdown::pdf_book')"
	cd analysis && Rscript -e "library(bookdown); bookdown::render_book('toronto-road-safety.Rmd', 'bookdown::gitbook')"
	cp -r analysis/_book/* docs
	convert -resize '600' docs/_main_files/figure-html/trends-1.png docs/trends-thumb.png

open:
	open docs/index.html

clean:
	rm -f analysis/toronto-road-safety.md
	rm -f analysis/toronto-road-safety.pdf
	rm -f analysis/toronto-road-safety.html
	rm -rf analysis/toronto-road-safety_files

.PHONY: all analysis release open clean
