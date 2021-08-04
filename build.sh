#!/bin/bash

# Shell script to deploy the syllabus container,
# to compile the syllabus with Sphinx.
# Author: François De Keersmaeker

# Name of the container
CONTAINER="syllabus"

# Get compilation option from command line argument
case $1 in
  lepl1503 | html | dirhtml | singlehtml | pickle | json | htmlhelp \
  | qthelp | devhelp | epub | latex | latexpdf | text | man | texinfo \
  | info | gettext | changes | linkcheck | '')
    # Compilation command is correct, build and run container
    sudo docker build -t $CONTAINER .
    sudo docker run --rm --name $CONTAINER -i -t -v $(pwd):/syllabus $CONTAINER make $1
    ;;
  *)
    # Command is incorrect
    echo "Please provide a valid compilation target:"
    echo "  lepl1503   to compile the full syllabus in HTML, EPUB, and LaTeX PDF"
    echo "  html       to make standalone HTML files"
	echo "  dirhtml    to make HTML files named index.html in directories"
	echo "  singlehtml to make a single large HTML file"
	echo "  pickle     to make pickle files"
	echo "  json       to make JSON files"
	echo "  htmlhelp   to make HTML files and a HTML help project"
	echo "  qthelp     to make HTML files and a qthelp project"
	echo "  devhelp    to make HTML files and a Devhelp project"
	echo "  epub       to make an epub"
	echo "  latex      to make LaTeX files, you can set PAPER=a4 or PAPER=letter"
	echo "  latexpdf   to make LaTeX files and run them through pdflatex"
	echo "  text       to make text files"
	echo "  man        to make manual pages"
	echo "  texinfo    to make Texinfo files"
	echo "  info       to make Texinfo files and run them through makeinfo"
	echo "  gettext    to make PO message catalogs"
	echo "  changes    to make an overview of all changed/added/deprecated items"
	echo "  linkcheck  to check all external links for integrity"
	echo "  doctest    to run all doctests embedded in the documentation (if enabled)"
    ;;
esac
