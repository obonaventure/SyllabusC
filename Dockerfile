# Base image: Python
FROM python:slim

# Base packages
RUN apt-get update
RUN apt-get install -y gcc
RUN apt-get install -y make
RUN apt-get install -y perl
RUN apt-get install -y ruby-full
RUN apt-get install -y git
RUN apt-get install -y hunspell hunspell-fr
RUN apt-get install -y cppcheck
RUN apt-get install -y enchant

# Sphinx packages
# ATTENTION: do not modify versions !
RUN pip3 install sphinx==1.7.1
RUN pip3 install sphinxcontrib.spelling==4.2.1

# LaTeX packages
RUN apt-get install -y texlive-latex-base
RUN apt-get install -y texlive-latex-extra
RUN apt-get install -y texlive-fonts-recommended
RUN apt-get install -y latexmk

# Install Travis CI
RUN apt-get install -y curl
RUN apt-get install -y ruby-full
RUN gem install travis --no-document

# Additonal Python packages for deployment script
RUN pip3 install requests
RUN pip3 install pyyaml

# Clean
RUN apt-get autoremove
RUN apt-get clean

# Set working directory
WORKDIR /syllabus
