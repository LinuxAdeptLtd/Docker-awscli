FROM alpine

RUN apk -v --update add --no-cache python3 && \
  pip3 install --no-cache-dir --upgrade pip && \
  pip3 install --no-cache-dir --upgrade awscli

WORKDIR /data
ENTRYPOINT ["aws"]