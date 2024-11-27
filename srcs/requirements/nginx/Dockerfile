FROM alpine:3.16

RUN apk update && apk upgrade && apk add --no-cache nginx

COPY ./requirements/nginx/conf/entry.sh /entry.sh

RUN chmod +x /entry.sh

EXPOSE 443

ENTRYPOINT ["/entry.sh"]

CMD ["nginx", "-g", "daemon off;"]
