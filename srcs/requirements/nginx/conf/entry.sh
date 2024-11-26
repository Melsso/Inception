#!/bin/sh

# Use envsubst to substitute environment variables directly in the existing nginx.conf
envsubst '${SERVER_NAME} ${SSL_CERTIFICATE} ${SSL_CERTIFICATE_KEY}' < /etc/nginx/http.d/nginx.conf > /etc/nginx/http.d/nginx.conf.tmp

# Replace the original nginx.conf with the updated version
mv /etc/nginx/http.d/nginx.conf.tmp /etc/nginx/http.d/nginx.conf

# Start Nginx
exec "$@"
