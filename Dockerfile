FROM node:14.15.4-alpine AS builder
WORKDIR /home
ADD . /home
RUN npm i piral-cli -g \
    && npm run build

FROM nginx
COPY --from=builder /home/dist/release/* /usr/share/nginx/shell/
COPY --from=builder /home/nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
ENTRYPOINT nginx & /bin/bash