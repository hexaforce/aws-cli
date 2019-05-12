FROM alpine:latest
RUN echo http://dl-cdn.alpinelinux.org/alpine/edge/main >> /etc/apk/repositories
RUN echo http://dl-cdn.alpinelinux.org/alpine/edge/community >> /etc/apk/repositories
RUN echo http://dl-cdn.alpinelinux.org/alpine/edge/testing >> /etc/apk/repositories
RUN apk update 
RUN apk add aws-cli
RUN apk add mysql-client
COPY init.sh .
ENTRYPOINT ["sh init.sh"]