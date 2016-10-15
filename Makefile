# road-safety
# Copyright (c) 2016 Ian Dennis Miller

all: analysis
	@echo "OK"

analysis:
	cd analysis && Rscript -e "library(markdown); rmarkdown::render('toronto-road-safety.Rmd')"

pdf:
	# cd analysis && Rscript -e "library(markdown); rmarkdown::render('toronto-road-safety.Rmd', 'pdf_document')"
	cd analysis && Rscript -e "library(bookdown); bookdown::render_book('toronto-road-safety.Rmd', 'bookdown::pdf_book')"
	rm -rf analysis/figure
	rm -f analysis/*.log

release: pdf analysis
	# cp analysis/toronto-road-safety.md releases
	# cp analysis/toronto-road-safety.pdf releases
	# cp -r analysis/toronto-road-safety_files releases
	cp analysis/_book/_main.pdf releases/toronto-road-safety.pdf

website:
	# cd analysis && Rscript -e "library(bookdown); bookdown::html_document2('toronto-road-safety.Rmd')"
	cd analysis && Rscript -e "library(bookdown); bookdown::render_book('toronto-road-safety.Rmd', 'bookdown::gitbook')"
	cp -r analysis/_book/* docs

open:
	open analysis/toronto-road-safety.html

clean:
	rm -f analysis/toronto-road-safety.md
	rm -f analysis/toronto-road-safety.pdf
	rm -f analysis/toronto-road-safety.html
	rm -rf analysis/toronto-road-safety_files

.PHONY: all analysis release open clean
