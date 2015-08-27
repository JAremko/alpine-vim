FROM jare/vim-pathogen:latest

MAINTAINER JAremko <w3techplaygound@gmail.com>

ENV TERM=xterm-256color
ENV DISABLE=""

COPY run /usr/local/bin/

#custom .vimrc stub
RUN mkdir -p /ext  && echo " " > /ext/.vimrc

ENTRYPOINT ["sh", "/usr/local/bin/run"]
