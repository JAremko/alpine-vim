
FROM jare/alpine-vim:latest

MAINTAINER JAremko <w3techplaygound@gmail.com>

RUN mkdir -p /home/developer
ENV HOME /home/developer
ENV TERM xterm-256color

#install Vim Pathogen
RUN apk --update add python git ctags curl && rm -rf /var/cache/apk/* && \ 
    mkdir -p /home/developer/.vim/autoload /home/developer/bundle && \
    curl -LSso /home/developer/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
    
#build and install YouCompleteMe
RUN apk --update add --virtual ycm-build-deps go llvm perl bash python-dev build-base \
#YCM
    mkdir -p /home/developer/bundle/YouCompleteMe && \
    cd /home/developer/bundle/YouCompleteMe && \
    git clone https://github.com/Valloric/YouCompleteMe.git . && \
    git submodule update --init --recursive && \
    /home/developer/bundle/YouCompleteMe/install.sh --gocode-completer && \
#cleanup
    apk --update del ycm-build-deps  && \
    apk --update add libsm libice libxt libx11 ncurses libstdc++ && \
    rm -rf /var/cache/apk/* && \
    rm -rf /tmp/*

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
    git clone https://github.com/derekwyatt/vim-scala.git
    
#build the default .vimrc
RUN curl -K https://raw.githubusercontent.com/amix/vimrc/master/vimrcs/basic.vim >> /home/developer/.vimrc && \
    curl -K https://raw.githubusercontent.com/amix/vimrc/master/vimrcs/extended.vim >> /home/developer/.vimrc && \
    curl -K https://raw.githubusercontent.com/JAremko/alpine-vim/master/.vimrc >> /home/developer/.vimrc && \
   #tidy up
    cat /home/developer/.vimrc | sed '/^\s*$/d' | sed '/^"/d' > tmp.vimrc && mv -f tmp.vimrc /home/developer/.vimrc

ENV GOROOT $HOME/workspace/goroot
ENV PATH $PATH:%GOROOT/bin
ENV GOPATH $HOME/workspace/gopath

WORKDIR /home/developer/workspace/
