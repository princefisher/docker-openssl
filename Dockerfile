# Inspiration
# Link: https://loglevel-blog.com/how-to-create-self-signed-certificate-with-openssl-and-docker

# we use the tiny alpine linux as base
FROM alpine:3.8

# install openssl
RUN apk update && \
  apk add --no-cache openssl=1.0.2u-r0 && \
  rm -rf "/var/cache/apk/*"

# create and set mount volume
WORKDIR /openssl-certs
VOLUME  /openssl-certs

ENTRYPOINT ["openssl"]
