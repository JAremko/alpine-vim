FROM jare/alpine-vim:latest

MAINTAINER JAremko <w3techplaygound@gmail.com>

RUN apk --update add curl && \
    mkdir -p /home/developer /home/developer/.vim/autoload && \
    curl -LSso /home/developer/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim && \
    apk del curl && rm -rf /var/cache/apk/* /tmp/*
ENV HOME /home/developer
