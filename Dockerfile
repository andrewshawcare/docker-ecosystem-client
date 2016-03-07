FROM nginx

COPY ./html /usr/share/nginx/html

COPY ./wait-for-it.sh .
COPY ./docker-entrypoint.sh .

ENTRYPOINT ["./wait-for-it.sh", "java-service:4567", "--", "./wait-for-it.sh", "node-service:5678", "--", "./docker-entrypoint.sh"]
