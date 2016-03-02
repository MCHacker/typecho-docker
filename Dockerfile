FROM php:7.0-apache
ENV TYPECHO_MAJOR_VER 1.0
ENV TYPECHO_VER 14.10.10
RUN cd /tmp && curl -o typecho.tar.gz -L https://github.com/typecho/typecho/releases/download/v$TYPECHO_MAJOR_VER-$TYPECHO_VER-release/$TYPECHO_MAJOR_VER.$TYPECHO_VER.-release.tar.gz \
    && tar -xvf typecho.tar.gz && mv -rf /tmp/build/* /var/www/html/ \
    && chmod -R 777 /var/www/html \
    && rm -rf /tmp/*
VOLUME /data
