# Base image: sphinx with latex
FROM sphinxdoc/sphinx-latexpdf

# Copy files and set directory
COPY . /syllabus
WORKDIR /syllabus

# Install or update packages
RUN apt-get update
RUN pip3 install -r requirements.txt
RUN apt-get install -y make
RUN apt-get install -y git
RUN apt-get install -y python-sphinx
RUN apt-get install -y texlive-latex-base
RUN apt-get install -y texlive-latex-extra
RUN apt-get install -y texlive-fonts-recommended
RUN apt-get install -y python-sphinxcontrib.spelling
RUN apt-get install -y hunspell hunspell-fr
