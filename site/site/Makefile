all: build deploy

clean: 
	rm -rf {0}-*/*.{md,html}

build:
	Rscript .build_docs.R

deploy:
	mkdocs gh-deploy

test:
	mkdocs serve
