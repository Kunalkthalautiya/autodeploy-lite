# Basic NodeJS / Python / Static example (customize as needed)
FROM nginx:alpine
COPY ./app /usr/share/nginx/html
EXPOSE 80
