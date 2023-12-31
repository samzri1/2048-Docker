FROM ubuntu:20.04

RUN apt-get update && apt-get install -y nginx

COPY nginx.conf /etc/nginx/nginx.conf
COPY 2048 /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]