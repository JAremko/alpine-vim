FROM jare/alpine-vim:latest

MAINTAINER JAremko <w3techplaygound@gmail.com>

# start scirt
ADD run add-bundle /home/developer/
RUN chmod 775 /home/developer/run /home/developer/add-bundle && \
#add user:group "developer:developer" with home "/home/developer".
    addgroup -g 1000 developer && \
    adduser -D -G developer -u 1000 -h /home/developer -s /bin/bash developer && \
    mkdir -p /home/developer/ && chown -R developer:developer /home/developer && \
    echo "%developer ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers && \
#make a directory for plugin plugins
    mkdir /bundle/ && chown developer:developer /bundle/ && \
#install vim Pathogen
    apk add --update curl && \
    mkdir -p /home/developer/.vim/autoload /bundle /home/developer/preinstalled && \
    curl -LSso /home/developer/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim && \
    echo "execute pathogen#infect('/bundle/{}', '/home/developer/preinstalled/{}')" \
        >> /home/developer/.vimrc && \
    echo "syntax on " >> /home/developer/.vimrc && \
    echo "filetype plugin indent on " >> /home/developer/.vimrc && \
#finaliz
    chown developer:developer -R /home/developer && \
#cleanup
    apk del curl && rm -rf /var/cache/apk/*

USER developer
WORKDIR /home/developer/
ENTRYPOINT ["sh", "run"]
