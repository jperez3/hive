FROM nginx

ARG domain=localhost
COPY nginx/html/index.html /usr/share/nginx/html/index.html
COPY nginx/conf.d/default.conf /etc/nginx/conf.d/default.conf

RUN mkdir /etc/nginx/certs && \
    openssl req -x509 -nodes -days 365 -newkey rsa:4096 -keyout /etc/nginx/certs/self-signed.key -out /etc/nginx/certs/self-signed.crt -subj "/C=US/ST=California/L=Los Angeles/O=Hive/OU=Development/CN=${domain}"

CMD ["nginx", "-g", "daemon off;"]
