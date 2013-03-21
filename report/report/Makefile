

slides: presentation/presentation.tex
	pdflatex -output-directory tmp presentation/presentation.tex
	pdflatex -output-directory tmp presentation/presentation.tex
	mv tmp/presentation.pdf .

diagrams:
	cd evaluation; gnuplot KNoT.gp
	cd evaluation; gnuplot KNoT2.gp
	cd evaluation; gnuplot xap.gp
	cd evaluation; gnuplot xap2.gp
	cd ..

report: diagrams report.tex bib.bib
	mkdir -p tmp 
	pdflatex -output-directory tmp report.tex
	bibtex report
	pdflatex -output-directory tmp report.tex
	pdflatex -output-directory tmp report.tex
	mv tmp/report.pdf .
	rm report.bbl
	rm report.blg

open:
	evince report.pdf &

dbox:
	cp report.pdf ~/Dropbox/KNoT/

all: clean report dbox open

clean:
	rm report.pdf report.log report.bbl report.toc report.blg
