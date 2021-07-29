FROM sphinxdoc/sphinx
COPY . /syllabus
WORKDIR /syllabus
RUN pip3 install -r requirements.txt