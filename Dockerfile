FROM nginx:alpine
WORKDIR /usr/share/nginx/html
RUN rm -rf ./*
COPY fitness-website-template/ .
HEALTHCHECK CMD wget -qO- http://localhost:80/ || exit 1
EXPOSE 80
