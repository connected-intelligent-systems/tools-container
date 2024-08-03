FROM alpine:3.18

RUN apk update && \
    apk add --no-cache \
    postgresql-client \
    vault \
    jq \
    curl

RUN addgroup -S appgroup && \
    adduser -S appuser -G appgroup

RUN chown appuser:appgroup /usr/sbin/vault

USER appuser