FROM nginx

VOLUME /etc/microservices
VOLUME /var/run/api-gateway/sockets

COPY nginx.conf /etc/nginx/nginx.conf
COPY run-nginx .
COPY keys /etc/nginx/ssl

CMD ["./run-nginx"]
