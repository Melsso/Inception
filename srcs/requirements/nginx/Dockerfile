FROM alpine:3.16

# Install Nginx and envsubst (which comes with the gettext package)
RUN apk update && apk upgrade && apk add --no-cache nginx

# Copy your existing nginx.conf and entrypoint script into the container
COPY ./requirements/nginx/conf/entry.sh /entry.sh

# Make the entry script executable
RUN chmod +x /entry.sh

# Expose port 443 for SSL
EXPOSE 443

# Set the entry to run the script before starting Nginx
ENTRYPOINT ["/entry.sh"]

# Run Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]