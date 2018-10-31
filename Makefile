.PHONY: docs

%.pdf: %.org
	emacs $*.org --batch -f org-latex-export-to-pdf --kill
	mv $*.pdf docs/
	rm $*.tex

docs: how-to-guide.pdf software-release-guide.pdf
