FROM debian:stretch

RUN apt-get update && apt-get install -qq -y libpcre3 libgmp-dev --fix-missing --no-install-recommends


RUN mkdir /log

WORKDIR /duckling
COPY .stack-work/install/x86_64-linux/lts-9.10/8.0.2/bin/duckling-example-exe /duckling/

EXPOSE 8000

CMD /duckling/duckling-example-exe

