FROM jare/alpine-vim:latest

MAINTAINER JAremko <w3techplaygound@gmail.com>

RUN mkdir -p /home/developer /util
ENV HOME /home/developer
ENV TERM=xterm-256color
ADD ocd-clean tidy-viml /util/
COPY .vimrc /home/developer/my.vimrc

#install Vim Pathogen
RUN apk --update add python git ncurses-terminfo curl && \ 
    mkdir -p /home/developer/.vim/autoload /home/developer/bundle && \
    curl -LSso /home/developer/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim && \
    sh /util/ocd-clean /usr/share/

#Get Vim plugins
RUN cd /home/developer/bundle/ && \
    git clone https://github.com/bling/vim-airline.git && \
    git clone https://github.com/majutsushi/tagbar.git && \
    git clone https://github.com/vim-scripts/EasyGrep.git && \
    git clone https://github.com/jlanzarotta/bufexplorer.git && \
    git clone https://github.com/kien/ctrlp.vim.git && \
    git clone https://github.com/scrooloose/nerdtree.git && \ 
    git clone https://github.com/jistr/vim-nerdtree-tabs.git && \
    git clone https://github.com/scrooloose/syntastic.git && \
    git clone https://github.com/tomtom/tlib_vim.git && \
    git clone https://github.com/marcweber/vim-addon-mw-utils.git && \
    git clone https://github.com/altercation/vim-colors-solarized.git && \
    git clone https://github.com/vim-scripts/taglist.vim.git && \
    git clone https://github.com/tpope/vim-commentary.git && \
    git clone https://github.com/terryma/vim-expand-region.git && \
    git clone https://github.com/tpope/vim-fugitive.git && \
    git clone https://github.com/airblade/vim-gitgutter.git && \
    git clone https://github.com/fatih/vim-go.git && \
    git clone https://github.com/plasticboy/vim-markdown.git && \
    git clone https://github.com/michaeljsmith/vim-indent-object.git && \
    git clone https://github.com/terryma/vim-multiple-cursors.git && \
    git clone https://github.com/tpope/vim-repeat.git && \
    git clone https://github.com/tpope/vim-surround.git && \
    git clone https://github.com/vim-scripts/mru.vim.git && \
    git clone https://github.com/vim-scripts/YankRing.vim.git && \
    git clone https://github.com/tpope/vim-haml.git && \
    git clone https://github.com/garbas/vim-snipmate.git && \
    git clone https://github.com/honza/vim-snippets.git && \
    git clone https://github.com/derekwyatt/vim-scala.git && \
    sh /util/ocd-clean /home/developer/bundle/

#build and install YouCompleteMe
RUN apk --update add --virtual ycm-build-deps go llvm perl bash cmake python-dev build-base && \
    git clone https://github.com/Valloric/YouCompleteMe.git /home/developer/bundle/YouCompleteMe/ && \
    cd /home/developer/bundle/YouCompleteMe && \
    git submodule update --init --recursive && \
    /home/developer/bundle/YouCompleteMe/install.sh --gocode-completer && \
    #cleanup
    apk --update del ycm-build-deps  && \
    apk --update add libxt libx11 libstdc++ && \
    rm -rf /home/developer/bundle/YouCompleteMe/third_party/ycmd/cpp \
      /home/developer/bundle/YouCompleteMe/third_party/ycmd/clang_includes && \
    find / -type f -name "*.vim" -exec sh /util/tidy-viml {} \; && \
    sh /util/ocd-clean /

#build the default .vimrc
RUN  curl https://raw.githubusercontent.com/amix/vimrc/master/vimrcs/basic.vim > /home/developer/.vimrc && \
     curl https://raw.githubusercontent.com/amix/vimrc/master/vimrcs/extended.vim >> /home/developer/.vimrc && \
     cat  /home/developer/my.vimrc >> /home/developer/.vimrc && rm /home/developer/my.vimrc && \
     sh /home/developer/tidy-viml /home/developer/.vimrc

ENV GOROOT $HOME/workspace/goroot
ENV PATH $PATH:%GOROOT/bin
ENV GOPATH $HOME/workspace/gopath
ENV TERM xterm-256color
WORKDIR /home/developer/workspace/
