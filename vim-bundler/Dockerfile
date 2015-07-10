FROM jare/vim-pathogen:latest

MAINTAINER JAremko <w3techplaygound@gmail.com>

#start scirts
ADD run add-bundle /home/developer/
RUN chmod 775 /home/developer/run /home/developer/add-bundle
#install Vim Pathogen
RUN apk add --update curl && \
    mkdir -p /bundle /home/developer/preinstalled && \
    echo "execute pathogen#infect('/bundle/{}', '/home/developer/preinstalled/{}')" \
      > /home/developer/.vimrc && \
    echo "syntax on " >> /home/developer/.vimrc && \
    echo "filetype plugin indent on " >> /home/developer/.vimrc && \
    #cleanup
    apk del curl && rm -rf /var/cache/apk/* /tmp/*
ENV HOME /home/developer
WORKDIR /home/developer/workspace
ENTRYPOINT ["sh", "/home/developer/run"]
