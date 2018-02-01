FROM alpine:3.7
MAINTAINER Kevin Fox <Kevin.Fox@pnnl.gov>

RUN \
  echo http://dl-cdn.alpinelinux.org/alpine/edge/community >> /etc/apk/repositories && \
  apk update && \
  apk add --update ca-certificates openssl ipmitool

ENTRYPOINT ["ipmitool"]

CMD ["--help"]
