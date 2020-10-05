FROM php:7.3.19-cli-alpine AS builder
# Can not use > 7.3 (like php:rc-cli-alpine), due to a syntax change. Otherwise the error below will be raised
# Fatal error: Array and string offset access syntax with curly braces is no longer supported in /phpggc/lib/PHPGGC.php on line 626

RUN apk add git bash nano vim

RUN echo 'phar.readonly=0' >> /usr/local/etc/php/conf.d/docker-php-phar-readonly.ini

RUN git clone https://github.com/ambionics/phpggc

WORKDIR /phpggc

RUN chmod +x phpggc

ENTRYPOINT ["/phpggc/phpggc"]
