FROM jare/alpine-vim:latest

MAINTAINER JAremko <w3techplaygound@gmail.com>

RUN apk --update add curl \
    && mkdir -p \
    /home/developer/bundle \
    /home/developer/.vim/autoload \
    /home/developer/.vim_runtime/temp_dirs \
    && curl -LSso \
    /home/developer/.vim/autoload/pathogen.vim \
    https://tpo.pe/pathogen.vim \
    && apk del curl \
# Cleanup
    && rm -rf \
    /var/cache/* \
    /var/log/* \
    /var/tmp/* \
    && mkdir /var/cache/apk \
    && echo "execute pathogen#infect('/home/developer/bundle/{}')" \
    > /home/developer/.vimrc \
    && echo "syntax on " \
    >> /home/developer/.vimrc \
    && echo "filetype plugin indent on " \
    >> /home/developer/.vimrc
