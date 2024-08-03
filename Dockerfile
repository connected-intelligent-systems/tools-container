FROM alpine:3.18

RUN apk update && \
    apk add --no-cache \
    postgresql-client \
    vault \
    jq \
    curl

USER 1001