FROM alpine:3.4
MAINTAINER Kevin Fox <Kevin.Fox@pnnl.gov>

RUN apk add --update ca-certificates openssl ipmitool

ENTRYPOINT ["ipmitool"]

CMD ["--help"]
