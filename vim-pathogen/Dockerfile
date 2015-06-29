FROM jare/alpine-vim:latest

MAINTAINER JAremko <w3techplaygound@gmail.com>

# start scirt
COPY vim /home/developer/
COPY install /usr/bin/
RUN chmod 775 /home/developer/vim /usr/bin/install && \
#add user:group "developer:developer" with home "/home/developer". Root privilege and no password.
    addgroup -g 1000 developer && \
    adduser -D -G developer -u 1000 -h /home/developer -s /bin/bash developer && \
    mkdir -p /home/developer/ && chown -R developer:developer /home/developer && \
    echo "%developer ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoersi && \
#install vim Pathogen
    apk add --update curl && \
    mkdir -p /home/developer/.vim/autoload /home/developer/bundle /home/developer/preinstalled && \
    curl -LSso /home/developer/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim && \
    echo "execute pathogen#infect('/home/developer/bundle/{}', '/home/developer/preinstalled{}')" \
       >> /home/developer/.vimrc && \
    echo "syntax on " >> /home/developer/.vimrc && \
    echo "filetype plugin indent on " >> /home/developer/.vimrc && \
#cleanup
  apk del curl && rm -rf /var/cache/apk/*

USER developer
WORKDIR /home/developer/
ENTRYPOINT "/home/developer/vim"
