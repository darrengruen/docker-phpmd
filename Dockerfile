FROM alpine:3.3
MAINTAINER Darren Green <darrensgreen@gmail.com>

### needs to optimized for small images
COPY package.json /usr/bin/package.json

WORKDIR /
RUN apk --update --progress add bzip2
RUN apk --update --progress add openssl
RUN apk --update --progress add php-common
RUN apk --update --progress add php-cli
RUN apk --update --progress add php-dev
RUN apk --update --progress add php-json
RUN apk --update --progress add php-openssl
RUN apk --update --progress add php-phar
RUN apk --update --progress add php-bz2
RUN apk --update --progress add git
RUN apk --update --progress add php-ctype
RUN apk --update --progress add php-dom
RUN apk --update --progress add php-xml
COPY phpmd.phar /usr/bin/phpmd
CMD [ "/usr/bin/phpmd", "/var/www/code", "$@" ]
