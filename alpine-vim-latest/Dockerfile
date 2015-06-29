FROM jare/alpine-vim:base

MAINTAINER JAremko <w3techplaygound@gmail.com>

RUN apk add curl && \
#add user:group "developer:developer" with home "/home/developer". Root privilege and no password.
    addgroup -g 1000 developer && \
    adduser -D -G developer -u 1000 -h /home/developer -s /bin/bash developer && \
    mkdir -p /home/developer/ && chown -R developer:developer /home/developer && \
    echo "%developer ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers && \
#install vim Pathogen
    mkdir -p /home/developer/.vim/autoload /home/developer/bundle /home/developer/preinstalled && \
    curl -LSso /home/developer/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim && \
    echo "execute pathogen#infect('/home/developer/bundle/{}', '/home/developer/preinstalled{}')" \
       >> /home/developer/.vimrc && \
    echo "syntax on " >> /home/developer/.vimrc && \
    echo "filetype plugin indent on " >> /home/developer/.vimrc && \
#write start scirt
    echo '#!/bin/bash
          if [ -f /home/developer/bundle/.vimrc ]; then 
            echo "source /home/developer/bundle/.vimrc" >> /home/developer/.vimrc
          fi
          exec vim "$@"
         ' >> /home/developer/vim && \
         chmod 775 /home/developer/vim && \
#cleanup
  apk del curl

USER developer
WORKDIR /home/developer/
ENTRYPOINT "/home/developer/vim"
