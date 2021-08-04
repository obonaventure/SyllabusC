# Makefile for the whole LEPL1503 syllabus
# Author: François De Keersmaeker

TARGETS=html dirhtml singlehtml pickle json htmlhelp qthelp devhelp epub \
latex latexpdf text man texinfo info gettext changes linkcheck doctest

.PHONY: $(TARGETS) lepl1503 index clean

# Full compilation, in LaTeX-PDF, EPUB and HTML
lepl1503: latexpdf epub html index

$(TARGETS):
	make $@ -C Theorie
	make $@ -C Outils
	make $@ -C Exercices

# Compilation of the index of the website
index:
	make html -C Index

# Delete compiled files
clean:
	sudo rm -rf web
