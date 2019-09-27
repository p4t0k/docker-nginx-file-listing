FROM nginx:stable

MAINTAINER p4t0k, p4t0k@asocial.cz

COPY default.conf.template /etc/nginx/conf.d/
COPY najezd_download.py /usr/local/bin/

EXPOSE 80

RUN apk add python2

CMD /bin/bash -c "(while true ; do /usr/local/bin/najezd_download.py ; sleep 24h ; done) & ; envsubst < /etc/nginx/conf.d/default.conf.template > /etc/nginx/conf.d/default.conf \	
			&& nginx -g 'daemon off;'"
