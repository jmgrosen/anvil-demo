FROM ubuntu

RUN apt-get update && apt-get install -y python

ADD index.html /srv/index.html

ENTRYPOINT cd /srv && /usr/bin/python -m SimpleHTTPServer 80
