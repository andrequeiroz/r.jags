DOC = jags

.PHONY: all clean

all: $(DOC).pdf clean

$(DOC).pdf: $(DOC).Rnw
	Rscript -e "knitr::knit2pdf('$<', compiler = 'pdflatex')"

clean:
	rm -rf ./figure $(addprefix $(DOC), .log .aux .out .tex .toc .bbl .blg)
