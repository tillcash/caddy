ARG CADDY_VERSION=2.9.1

FROM caddy:${CADDY_VERSION}-builder-alpine AS builder

RUN xcaddy build \
  --with github.com/caddy-dns/cloudflare \
  --with github.com/mholt/caddy-webdav

FROM caddy:${CADDY_VERSION}-alpine
COPY --from=builder /usr/bin/caddy /usr/bin/caddy
