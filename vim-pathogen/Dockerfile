FROM jare/alpine-vim:latest

MAINTAINER JAremko <w3techplaygound@gmail.com>

#start scirt
ADD run add-bundle /home/developer/
RUN chmod 775 /home/developer/run /home/developer/add-bundle && \
#add user:group "developer:developer" with home "/home/developer".
    addgroup -g 1000 developer && \
    adduser -D -G developer -u 1000 -h /home/developer -s /bin/bash developer && \
    mkdir -p /home/developer/ && chown -R developer:developer /home/developer && \
    #might be unnecessary
    echo "%developer ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
USER developer
#make a directory for plugin plugins
RUN  mkdir /bundle/ && chown developer:developer /bundle/ 
#install Vim Pathogen
RUN apk add --update curl && \
    mkdir -p /home/developer/.vim/autoload /bundle /home/developer/preinstalled && \
    curl -LSso /home/developer/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim && \
    echo "execute pathogen#infect('/bundle/{}', '/home/developer/preinstalled/{}')" \
        >> /home/developer/.vimrc && \
    echo "syntax on " >> /home/developer/.vimrc && \
    echo "filetype plugin indent on " >> /home/developer/.vimrc && \
    #cleanup
    apk del curl && rm -rf /var/cache/apk/* /tmp/*
WORKDIR /home/developer/workspace
ENTRYPOINT ["sh", "/home/developer/run"]
