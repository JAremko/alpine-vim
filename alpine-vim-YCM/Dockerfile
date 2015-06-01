FROM jare/alpine-vim:base

MAINTAINER JAremko <w3techplaygound@gmail.com>

ENV HOME /home/developer
RUN apk --update add git python --virtual build-deps go bash build-base \
      python-dev clang cmake boost llvm curl perl && rm -rf /var/cache/apk/*
#add developer:developer user:group
RUN addgroup -g 1000 developer && \
    adduser -D -G developer -u 1000 -h /home/developer -s /bin/bash developer && \ 
    mkdir -p /home/developer/workspace && chown -R developer:developer /home/developer && \
    echo "%developer ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
#vim pathogen
RUN mkdir -p /home/developer/.vim/autoload /home/developer/.vim/sources_non_forked && \
    curl -LSso /home/developer/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim && \
    echo "execute pathogen#infect('/home/developer/.vim/sources_non_forked{}')" >> /home/developer/.vimrc && \
    echo "syntax on " >> /home/developer/.vimrc && \
    echo "filetype plugin indent on " >> /home/developer/.vimrc 
#YCM
RUN mkdir -p /home/developer/.vim/sources_non_forked/YouCompleteMe && \
    cd /home/developer/.vim/sources_non_forked/YouCompleteMe && \
    git clone https://github.com/Valloric/YouCompleteMe.git . && \
    git submodule update --init --recursive
RUN /home/developer/.vim/sources_non_forked/YouCompleteMe/install.sh --clang-completer --gocode-completer
RUN cd /tmp/ && \
    mkdir ycm_build && \
    cd ./ycm_build && \ 
    cmake -G "Unix Makefiles" -DPATH_TO_LLVM_ROOT=/usr/share/llvm \
      . /home/developer/.vim/sources_non_forked/YouCompleteMe/third_party/ycmd/cpp && \
    make ycm_support_libs -DEXTERNAL_LIBCLANG_PATH=/usr/lib/libclang.so && \
    rm -rf /tmp/*
RUN chown developer:developer -R /home/developer && \
    chmod 775 -R /home/developer
RUN apk del build-deps && \
    rm -rf /var/cache/apk/* && \
    rm -rf /tmp/*
USER developer
ONBUILD USER root
