# Makefile for the whole LEPL1503 syllabus
# Author: François De Keersmaeker

.PHONY: lepl1503 latexpdf epub html index

# Full compilation
lepl1503: latexpdf epub html index

# Compilation of "Théorie" in LaTeX then in PDF
latexpdf:
	make latexpdf -C Theorie

# Compilation of "Théorie" and "Outils" in EPUB
epub:
	make epub -C Theorie
	make epub -C Outils

# Compilation of "Théorie", "Outils", and "Exercices" in HTML
html:
	make html -C Theorie
	make html -C Outils
	make html -C Exercices

# Compilation of the index of the website
index:
	make html -C Index
