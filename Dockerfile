#################################################################################
# PHPMD Task Runner
# Use docker run -it --rm -v $(pwd):/app gruen/phpmd [ phpmd options ]
#################################################################################
FROM alpine:3.3
MAINTAINER Darren Green <darrensgreen@gmail.com>

WORKDIR /
COPY phpmd/2.4.3.phar /usr/bin/phpmd
RUN apk --update --progress --no-cache add \
    php-cli \
    php-dom \
    php-phar \
    php-bz2 \
    php-ctype \
    && chmod 700 /usr/bin/phpmd

WORKDIR /app
ENTRYPOINT [ "phpmd" ]
