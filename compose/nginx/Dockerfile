# syntax=docker/dockerfile:1.2

FROM nginx:1.20.1-alpine
COPY nginx.conf /etc/nginx/nginx.conf
COPY default.conf /etc/nginx/conf.d/default.conf
CMD ["nginx", "-g", "daemon off;"]

# dockerize
ENV DOCKERIZE_VERSION=v0.6.1
RUN \
  wget -O- https://github.com/jwilder/dockerize/releases/download/${DOCKERIZE_VERSION}/dockerize-alpine-linux-amd64-${DOCKERIZE_VERSION}.tar.gz | tar -xz -C /usr/local/bin
COPY 99-dockerize.sh /docker-entrypoint.d/
