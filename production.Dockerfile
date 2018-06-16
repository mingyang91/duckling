FROM alpine:latest

RUN apk add --no-cache pcre

RUN mkdir /log

WORKDIR /duckling
COPY .stack-work/install/x86_64-linux/lts-9.10/8.0.2/bin/duckling-example-exe /duckling/

EXPOSE 8000

CMD /duckling/duckling-example-exe

