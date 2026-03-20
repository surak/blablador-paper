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
	rm -f arxiv_package/main.pdf arxiv_package/main.aux arxiv_package/main.log arxiv_package/main.out arxiv_package/main.bbl arxiv_package/main.blg
