FROM blang/supervisor:latest

ADD ./work/bin /usr/local/sbin
ADD ./work/www /www
ADD ./work/arma /arma
ADD ./conf /conf
EXPOSE 9000/tcp 9001/tcp 9002/tcp 9003/tcp

ADD supervisor/mantis.sv.conf /etc/supervisor/conf.d/
ADD supervisor/stinger.sv.conf /etc/supervisor/conf.d/
ADD supervisor/httpserv.sv.conf /etc/supervisor/conf.d/

CMD ["supervisord"]