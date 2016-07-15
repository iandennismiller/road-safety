# road-safety
# Copyright (c) 2016 Ian Dennis Miller

all: analysis
	@echo "OK"

analysis:
	cd analysis && Rscript -e "library(markdown); rmarkdown::render('toronto-road-safety.Rmd')"

release: analysis
	cp analysis/toronto-road-safety.md releases
	cp analysis/toronto-road-safety.html releases
	cp -r analysis/toronto-road-safety_files releases

open:
	open analysis/toronto-road-safety.html

clean:
	rm -f analysis/toronto-road-safety.md
	rm -f analysis/toronto-road-safety.html
	rm -rf analysis/toronto-road-safety_files

.PHONY: all analysis release open clean
