FROM ubuntu:14.04
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -q

RUN apt-get install -qy build-essential curl git
RUN curl -s https://storage.googleapis.com/golang/go1.3.src.tar.gz | tar -v -C /usr/local -xz
RUN cd /usr/local/go/src && ./make.bash --no-clean 2>&1
ENV PATH /usr/local/go/bin:$PATH
ENV GOPATH /opt/gopath
RUN mkdir -p /opt/gopath/src/github.com/hashicorp
RUN apt-get install -qy mercurial
RUN cd /opt/gopath/src/github.com/hashicorp && \
  git clone --depth 1 https://github.com/hashicorp/serf.git serf && \
  cd serf && \
  make
ENV PATH /opt/gopath/bin:$PATH
EXPOSE 7946