.PHONY: all clean

all: main.pdf

main.pdf: main.tex references.bib
	pdflatex main.tex
	pdflatex main.tex
	bibtex main
	pdflatex main.tex
	pdflatex main.tex

clean:
	rm -f main.pdf main.aux main.log main.out main.bbl main.blg
