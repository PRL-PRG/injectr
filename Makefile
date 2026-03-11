R := R

.PHONY: all build check document test

all: document build check

build: document
	$(R) CMD build .

check: build
	$(R) CMD check injectr*tar.gz

clean:
	-rm -f injectr*tar.gz
	-rm -fr injectr.Rcheck
	-rm -fr src/*.{o,so}

document: clean install-devtools install-rmarkdown
	$(R) -s -e 'devtools::document()'
	$(R) -s -e 'rmarkdown::render("README.Rmd")'

test: install-devtools
	$(R) -s -e 'devtools::test()'

install: clean
	$(R) CMD INSTALL .

install-devtools:
	$(R) -s -e "if (!require('devtools')) install.packages('devtools', repos = 'http://cran.rstudio.com/')"
	
install-rmarkdown:
	$(R) -s -e "if (!require('rmarkdown')) install.packages('rmarkdown', repos = 'http://cran.rstudio.com/')"
