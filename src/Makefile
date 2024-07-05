# Makefile for the whole LEPL1503 syllabus
# Author: François De Keersmaeker

# All possible Sphinx targets
TARGETS=html dirhtml singlehtml pickle json htmlhelp qthelp devhelp epub \
latex latexpdf text man texinfo info gettext changes linkcheck doctest spelling

.PHONY: $(TARGETS) lepl1503 lepl1503-latex lepl1503-epub lepl1503-html index clean

# Full compilation, in LaTeX-PDF, EPUB and HTML
lepl1503: lepl1503-html lepl1503-epub index

# No latex lepl1503-latex 

lepl1503-latex:
	make latexpdf -C Theorie

lepl1503-epub:
	make epub -C Theorie
	make epub -C Outils

lepl1503-html:
	make html -C Theorie
	make html -C Outils
	make html -C Exercices


# Generic rule for all targets
$(TARGETS):
	make $@ -C Theorie
	make $@ -C Outils
	make $@ -C Exercices

# Compilation of the index of the website
index:
	make html -C Index

# Delete compiled files
clean:
	rm -rf web
