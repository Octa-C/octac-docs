TEX     = book.tex
PDF     = book.pdf
OUTDIR  = build

LATEXMK = latexmk
FLAGS   = -pdf -interaction=nonstopmode -halt-on-error -outdir=$(OUTDIR)

all: $(PDF)

$(PDF): $(TEX)
	$(LATEXMK) $(FLAGS) $(TEX)

clean:
	$(LATEXMK) -C -outdir=$(OUTDIR)
	rm -f $(PDF)

.PHONY: all clean
