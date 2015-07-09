FROM jare/alpine-vim:latest

MAINTAINER JAremko <w3techplaygound@gmail.com>

RUN mkdir -p /home/developer/bundle
ENV HOME /home/developer

ADD ocd-clean tidy-viml /util/

#install Vim Pathogen
RUN apk --update add python git curl && \ 
    mkdir -p /home/developer/.vim/autoload /home/developer/bundle && \
    curl -LSso /home/developer/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim && \
#build and install YouCompleteMe
    apk --update add --virtual ycm-build-deps go llvm perl bash cmake python-dev build-base && \
    git clone https://github.com/Valloric/YouCompleteMe.git /home/developer/bundle/YouCompleteMe/ && \
    cd /home/developer/bundle/YouCompleteMe && \
    git submodule update --init --recursive && \
    /home/developer/bundle/YouCompleteMe/install.sh --gocode-completer && \
    #cleanup
    apk --update del ycm-build-deps curl git && \
    apk --update add libxt libx11 libstdc++ && \
    rm -rf /home/developer/bundle/YouCompleteMe/third_party/ycmd/cpp \
      /home/developer/bundle/YouCompleteMe/third_party/ycmd/clang_includes && \
    find / -type f -name "*.vim" -exec sh /util/tidy-viml {} \; && \
    echo "execute pathogen#infect('/home/developer/bundle/{}')" > /home/developer/.vimrc && \
    sh /util/ocd-clean \/
    
WORKDIR /home/developer/workspace/
