FROM alpine:3.7
RUN apk add --no-cache ca-certificates git openssh-client curl

# issue: https://github.com/gliderlabs/docker-alpine/issues/367
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf