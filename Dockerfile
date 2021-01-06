FROM nginx

RUN mkdir -p /usr/share/nginx/shell
COPY ./dist/release/* /usr/share/nginx/shell
COPY ./nginx.conf /etc/nginx/conf.d/default.conf

ENTRYPOINT nginx & /bin/bash