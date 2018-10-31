.PHONY: docs

%.pdf: %.org
	emacs $*.org --batch -f org-latex-export-to-pdf --kill
	mv $*.pdf docs/
	rm $*.tex

%.html: %.org
	emacs $*.org --batch -f org-html-export-to-html --kill
	mv $*.html docs/

docs: how-to-guide.pdf software-release-guide.pdf how-to-guide.html software-release-guide.html
