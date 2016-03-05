FROM nginx

COPY ./docker-entrypoint.sh .

COPY ./html /usr/share/nginx/html

ENTRYPOINT ["./docker-entrypoint.sh"]
