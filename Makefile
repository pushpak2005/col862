PDF=book.pdf
TEX=main.tex

all:
	latexmk -pdf -interaction=nonstopmode -halt-on-error $(TEX)
	@cp main.pdf $(PDF)

clean:
	latexmk -C
	@rm -f $(PDF)
