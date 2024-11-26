#!/bin/sh

# Use envsubst to substitute environment variables into nginx config template
envsubst '${SERVER_NAME} ${SSL_CERTIFICATE} ${SSL_CERTIFICATE_KEY}' < /etc/nginx/http.d/nginx.conf.template > /etc/nginx/http.d/nginx.conf

# Start Nginx
exec "$@"