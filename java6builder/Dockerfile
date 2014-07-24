FROM ubuntu:14.04
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -q

RUN apt-get install -y software-properties-common

RUN add-apt-repository -y ppa:webupd8team/java && apt-get update -q

RUN echo debconf shared/accepted-oracle-license-v1-1 select true | \
    debconf-set-selections
RUN echo debconf shared/accepted-oracle-license-v1-1 seen true | \
   debconf-set-selections

RUN apt-get install -y oracle-java6-installer

VOLUME ["/data"]