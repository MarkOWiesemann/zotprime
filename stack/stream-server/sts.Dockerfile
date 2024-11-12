FROM node:8.15-alpine
ARG ZOTPRIME_VERSION=2

RUN apk add --update --no-cache \
libc6-compat

WORKDIR /usr/src/app
COPY ./stream-server/ .
COPY config/default.js /usr/src/app/config/
RUN npm install
EXPOSE 81/TCP
CMD [ "npm", "start" ]

