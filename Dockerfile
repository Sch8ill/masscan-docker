FROM alpine:latest

ENV MASSCAN_VERSION 1.3.2

RUN apk update \
  && apk add --no-cache libpcap-dev \
  && apk add --no-cache --virtual .build-deps \
        git \
        build-base \
		clang \
		clang-dev \
		linux-headers \
  && git clone --depth 1 --branch "$MASSCAN_VERSION" https://github.com/robertdavidgraham/masscan.git /masscan \
  && cd /masscan \
  && make install \
  && apk del .build-deps

ENV PATH="/masscan/bin:${PATH}"

ENTRYPOINT ["masscan"]