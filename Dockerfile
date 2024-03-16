ARG ALPINE_VERSION=edge
FROM alpine:$ALPINE_VERSION
RUN apk --no-cache add dnsmasq-dnssec
EXPOSE 53 53/udp
COPY startup.sh /startup.sh
CMD ["/startup.sh"]
