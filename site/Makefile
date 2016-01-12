all: build deploy

clean: 
	rm -rf {0,1}-*/*.{md,html}
	rm -rf doc/[0-1]-*
	rm -rf site

build:
	# build markdown files in the dirs they live in
	Rscript doc/build.R 
	# move all dirs beginning with numbers to doc folder
	#rsync -av [0-9]-* doc/

deploy:
	cd doc && mkdocs gh-deploy --clean

test:
	cd doc && mkdocs serve
