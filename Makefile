# road-safety
# Copyright (c) 2016 Ian Dennis Miller

analysis:
	cd analysis && Rscript -e "library(bookdown); bookdown::render_book('toronto-road-safety.Rmd', 'bookdown::gitbook')"
	convert -resize '600' docs/pedestrian-cyclist-safety_files/figure-html/trends-1.png docs/trends-thumb.png

all: analysis pdf
	@echo "OK"

pdf:
	cd analysis && Rscript -e "library(bookdown); bookdown::render_book('toronto-road-safety.Rmd', 'bookdown::pdf_book')"

open:
	open docs/index.html

clean:
	rm -f analysis/toronto-road-safety.md
	rm -f analysis/toronto-road-safety.pdf
	rm -f analysis/toronto-road-safety.html
	rm -rf analysis/toronto-road-safety_files
	rm -rf analysis/_bookdown_files
	rm -rf analysis/_book

.PHONY: all analysis release open clean
