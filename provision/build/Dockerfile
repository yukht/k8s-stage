FROM nginx:1.21.1-alpine
COPY ./create-htpasswd.sh /docker-entrypoint.d/80-create-htpasswd.sh
RUN apk add apache2-utils && chmod 775 /docker-entrypoint.d/80-create-htpasswd.sh 
CMD ["nginx", "-g", "daemon off;"]

