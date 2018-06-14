FROM alpine:latest

RUN apk add --no-cache pcre

RUN mkdir /log

WORKDIR /duckling
COPY .stack-work/install/x86_64-osx/lts-9.10/8.0.2/bin/duckling-example-exe /ducking/bin

ENTRYPOINT /ducking/bin
