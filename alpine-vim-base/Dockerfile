FROM jare/alpine:latest

MAINTAINER JAremko <w3techplaygound@gmail.com>

ADD tidy-viml /util/

RUN apk add --update --virtual build-deps python python-dev ctags build-base \
      make mercurial libxpm-dev libx11-dev libxt-dev ncurses-dev git           && \
    cd /tmp                                                                    && \
    hg clone https://code.google.com/p/vim/                                    && \
    cd /tmp/vim                                                                && \
    ./configure --with-features=big \
                #needed for editing text in languages which have many characters
                --enable-multibyte \     
                #python interop needed for some of my plugins
                --enable-pythoninterp \
                --with-python-config-dir=/usr/lib/python2.7/config \
                --disable-gui \
                --disable-netbeans \
                --prefix /usr                                                  && \
    make VIMRUNTIMEDIR=/usr/share/vim/vim74                                    && \
    make install                                                               && \
    apk del build-deps                                                         && \
    apk add libsm libice libxt libx11 ncurses                                  && \
    #deleting docs, tutorials, icons and lang
    rm -rf /usr/share/man/* /usr/share/icons/* /usr/share/doc/* /tmp/* \
      /var/cache/* /var/log/* /var/tmp/*                                       && \
    mkdir /var/cache/apk                                                       && \
    cd /usr/share/vim/vim74/                                                   && \ 
    rm -rf lang/* tutor/* gvimrc_example.vim vimrc_example.vim                 && \
    find . -name *.txt | while read line; do rm "$line"; done                  && \
    sh /util/ocd-clean /                                           

ENTRYPOINT ["vim"]
