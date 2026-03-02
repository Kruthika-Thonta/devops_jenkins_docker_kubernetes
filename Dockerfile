FROM nginx:alpine
COPY ./first.html /usr/share/nginx/html/index.html
EXPOSE 80
