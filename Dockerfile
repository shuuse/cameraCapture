FROM alpine:3.3
MAINTAINER Simen Huuse - itelligence / NTT Data 
LABEL Simen Huuse - itelligence / NTT Data 

run apk add --update darkhttpd && rm -rf /var/cache/apk/*

ADD camera.html /var/www/localhost/htdocs/camera.html

EXPOSE 80

ENTRYPOINT ["/entrypoint.sh"]