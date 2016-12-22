FROM alpine:3.4

RUN apk add --no-cache dnsmasq

EXPOSE 53/udp

ENTRYPOINT ["/usr/sbin/dnsmasq", "-d", "-f", "-D", "--user=root"]
