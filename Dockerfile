# Base image: Python
FROM python:slim

# Install or update packages
RUN apt-get update
RUN apt-get install --no-install-recommends -y \
    gcc \
    graphviz \
    imagemagick \
    make \
    libenchant-dev \
    perl \
    latexmk
RUN python3 -m pip install --no-cache-dir -U pip
RUN python3 -m pip install --no-cache-dir \
    pyenchant \
    Sphinx==1.7.1 \
    Pillow \
    sphinxcontrib-spelling==2.0
RUN apt-get install -y texlive-latex-base
RUN apt-get install -y texlive-latex-extra
RUN apt-get install -y texlive-fonts-recommended
RUN apt-get install -y hunspell hunspell-fr
RUN apt-get autoremove
RUN apt-get clean

# Set working directory
WORKDIR /syllabus
