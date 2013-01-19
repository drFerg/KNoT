

report: report.tex bib.bib
	pdflatex report.tex
	bibtex report
	pdflatex report.tex
	pdflatex report.tex

open:
	evince report.pdf &

dbox:
	cp report.pdf ~/Dropbox/KNoT/

all: clean report dbox open

clean:
	rm report.pdf report.log report.bbl report.toc report.blg
