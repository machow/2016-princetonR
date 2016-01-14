all: clean build

clean: 
	rm -rf {0,1}-*/*.{md,html}
	rm -rf site

build:
	# build markdown files in the dirs they live in
	Rscript doc/build.R 

deploy: clean build
	cd doc && mkdocs gh-deploy --clean

test:
	cd doc && mkdocs serve

watch:
	# figure this out!
