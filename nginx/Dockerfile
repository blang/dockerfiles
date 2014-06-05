FROM ubuntu:precise
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -q

RUN \
  apt-get install -y nginx && \
  echo "\ndaemon off;" >> /etc/nginx/nginx.conf && \
  chown -R www-data:www-data /var/lib/nginx

# Define working directory.
WORKDIR /etc/nginx

# Expose ports.
EXPOSE 80
EXPOSE 443

CMD ["nginx"]