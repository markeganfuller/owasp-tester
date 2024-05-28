FROM ubuntu:22.04

RUN apt-get update
RUN apt-get install -y apache2 vim libapache2-mod-security2 curl iproute2
RUN a2enmod headers
RUN cp /etc/modsecurity/modsecurity.conf-recommended /etc/modsecurity/modsecurity.conf

COPY crs-setup.conf /etc/modsecurity/crs/crs-setup.conf

ENV TERM=xterm-256color


ENTRYPOINT ["/usr/sbin/apachectl", "-DFOREGROUND"]
