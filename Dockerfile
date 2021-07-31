# Base image: sphinx with latex
FROM sphinxdoc/sphinx

# Install or update packages
RUN apt-get update
RUN apt-get install -y make
RUN apt-get install -y git
RUN apt-get install -y python-sphinx
RUN apt-get install -y texlive-latex-base
RUN apt-get install -y texlive-latex-extra
RUN apt-get install -y texlive-fonts-recommended
RUN apt-get install -y python-sphinxcontrib.spelling
RUN apt-get install -y hunspell hunspell-fr

# Install python module
COPY requirements.txt .
RUN pip3 install -r requirements.txt

# Set working directory
WORKDIR /syllabus
