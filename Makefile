# road-safety
# Copyright (c) 2016 Ian Dennis Miller

all: analysis
	@echo "OK"

analysis:
	cd analysis && Rscript -e "library(markdown); rmarkdown::render('toronto-road-safety.Rmd')" && rm -f *.tex

release: analysis
	cp analysis/toronto-road-safety.md releases
	cp analysis/toronto-road-safety.html releases
	cp -r analysis/toronto-road-safety_files releases

.PHONY: all analysis release
