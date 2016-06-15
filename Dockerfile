FROM alpine:3.3
MAINTAINER Darren Green <darrensgreen@gmail.com>

### needs to optimized for small images
# COPY package.json /usr/bin/package.json

WORKDIR /
RUN apk --update --progress --no-cache add bzip2
RUN apk --update --progress --no-cache add openssl
RUN apk --update --progress --no-cache add php-common
RUN apk --update --progress --no-cache add php-cli
RUN apk --update --progress --no-cache add php-dev
RUN apk --update --progress --no-cache add php-json
RUN apk --update --progress --no-cache add php-openssl
RUN apk --update --progress --no-cache add php-phar
RUN apk --update --progress --no-cache add php-bz2
RUN apk --update --progress --no-cache add git
RUN apk --update --progress --no-cache add php-ctype
RUN apk --update --progress --no-cache add php-dom
RUN apk --update --progress --no-cache add php-xml
COPY phpmd.phar /usr/bin/phpmd
RUN chmod 700 /usr/bin/phpmd

CMD [ "/usr/bin/phpmd", "/var/www/code", "$@" ]
