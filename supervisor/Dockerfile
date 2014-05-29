FROM ubuntu:precise
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -q
RUN apt-get install -y supervisor

RUN mkdir -p /var/log/supervisor
RUN mkdir -p /etc/supervisor/conf.d

ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf