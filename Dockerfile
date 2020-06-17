FROM nginx
#COPY static-html-directory /usr/share/nginx/html
COPY nginx/conf.d/default.conf /etc/nginx/conf.d/default.conf

RUN mkdir /etc/nginx/certs && \
    openssl req -x509 -nodes -days 365 -newkey rsa:4096 -keyout /etc/nginx/certs/localhost.key -out /etc/nginx/certs/localhost.crt -subj "/C=US/ST=California/L=Los Angeles/O=Hive/OU=Development/CN=localhost"

CMD ["nginx", "-g", "daemon off;"]
