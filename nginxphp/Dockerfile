FROM ubuntu:14.04
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -q

# Supervisor
RUN apt-get install -y supervisor && \
  mkdir -p /var/log/supervisor && \
  mkdir -p /etc/supervisor/conf.d


# NGINX
RUN \
  apt-get install -y nginx && \
  echo "\ndaemon off;" >> /etc/nginx/nginx.conf && \
  chown -R www-data:www-data /var/lib/nginx

# PHP 5 FPM
RUN \
  apt-get install -y php5-mysql php5-curl php5-gd php5-intl php-pear php5-imagick php5-imap php5-mcrypt php5-memcache php5-ming php5-ps php5-pspell php5-recode php5-snmp php5-sqlite php5-tidy php5-xmlrpc php5-xsl php5-fpm && \
  sed -i -e "s/;daemonize\s*=\s*yes/daemonize = no/g" /etc/php5/fpm/php-fpm.conf

EXPOSE 80
EXPOSE 443


# Mounts
VOLUME ["/data", "/etc/nginx/sites-enabled", "/etc/nginx/conf.d","/etc/php5/fpm/pool.d", /var/log"]

# Define working directory.
WORKDIR /data

# Configs
ADD conf/supervisor /etc/supervisor/conf.d/
ADD conf/fpm-pool /etc/php5/fpm/pool.d/
ADD conf/sites /etc/nginx/sites-enabled/

# Data, htdocs root
ADD data /data

CMD ["supervisord"]
