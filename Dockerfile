FROM nimmis/alpine-apache
MAINTAINER Anant Gadekar <gadekar.anant@gmail.com>

# Add the whole repo.
ADD . /web/html

# Set this as initial path when ssh logging.
WORKDIR /web/html
