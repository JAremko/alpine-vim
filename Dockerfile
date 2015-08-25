FROM jare/alpine-vim-ycm:latest
FROM jare/bundle:latest

MAINTAINER JAremko <w3techplaygound@gmail.com>

ENV TERM=xterm-256color
ENV DISABLE=""

COPY run /usr/local/bin/

#custom .vimrc stub
RUN mkdir -p /ext/ && echo " " > /ext/.vimrc

ENV GOPATH /home/developer/workspace
ENV GOROOT /goroot

ENTRYPOINT ["sh", "/usr/local/bin/run"]
