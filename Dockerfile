FROM nginx:1.19.9-alpine

COPY ./configs /etc/nginx/conf.d
