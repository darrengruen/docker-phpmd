#################################################################################
# PHPMD Task Runner
# Use docker run -it --rm -v $(pwd):$(pwd) gruen/phpmd:latest [ phpmd options ]
#################################################################################
FROM alpine:3.3
MAINTAINER Darren Green <darrensgreen@gmail.com>

### needs to optimized for small images
# COPY package.json /usr/bin/package.json

WORKDIR /
# RUN apk --update --progress --no-cache add openssl
# RUN apk --update --progress --no-cache add php-dev
# RUN apk --update --progress --no-cache add php-json
# RUN apk --update --progress --no-cache add php-openssl
# I don't think this is actually needed now...
# RUN apk --update --progress --no-cache add git
# RUN apk --update --progress --no-cache add php-dom
# RUN apk --update --progress --no-cache add php-xml
# RUN apk --update --progress --no-cache add bzip2
# RUN apk --update --progress --no-cache add php-common
COPY phpmd/2.4.3.phar /usr/bin/phpmd
RUN apk --update --progress --no-cache add \
    php-cli \
    php-dom \
    php-phar \
    php-bz2 \
    php-ctype \
    && chmod 700 /usr/bin/phpmd
# RUN apk --update --progress --no-cache add php-phar
# RUN apk --update --progress --no-cache add php-bz2
# RUN apk --update --progress --no-cache add php-ctype
# RUN chmod 700 /usr/bin/phpmd

CMD [ "/usr/bin/phpmd", "/var/www/code", "$@" ]
