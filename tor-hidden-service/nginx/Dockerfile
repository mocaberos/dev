FROM nginx:1.21-alpine

RUN rm -rf /etc/nginx/conf.d/*
RUN rm -f  /docker-entrypoint.d/10-listen-on-ipv6-by-default.sh
COPY config/ /etc/nginx/
