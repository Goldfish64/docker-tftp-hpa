FROM alpine:3.13.2

RUN apk add --no-cache tftp-hpa

VOLUME /tftpboot

EXPOSE 69/udp

RUN adduser -D tftp

ENTRYPOINT ["in.tftpd"]

CMD ["-L", "--verbose", "-u", "tftp", "--secure", "/tftpboot"]
