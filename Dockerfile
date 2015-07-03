
FROM jare/alpine-vim:latest

MAINTAINER JAremko <w3techplaygound@gmail.com>

#add user:group "developer:developer" with home "/home/developer".

RUN mkdir -p /home/developer/  && \
    apk --update add python git ctags openjdk7 --virtual build-deps python-dev build-base \
    make llvm curl cmake libxpm-dev libx11-dev libxt-dev \
    ncurses-dev && rm -rf /var/cache/apk/* && \
    mkdir -p /home/developer/.vim/autoload /home/developer/bundle && \
    curl -LSso /home/developer/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim && \
    echo "execute pathogen#infect('/home/developer/bundle/{}')" >> /home/developer/.vimrc && \
    echo "syntax on " >> /home/developer/.vimrc && \
    echo "filetype plugin indent on " >> /home/developer/.vimrc && \
#YCM
    mkdir -p /home/developer/bundle/YouCompleteMe && \
    cd /home/developer/bundle/YouCompleteMe && \
    git clone https://github.com/Valloric/YouCompleteMe.git && \
    git submodule update --init --recursive && \
    /home/developer/bundle/YouCompleteMe/install.sh --gocode-completer && \
#plugins
    cd /home/developer/bundle/ && \
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
    git clone https://github.com/amix/vimrc/tree/master/sources_non_forked/taglist.vim.git && \
    git clone https://github.com/tpope/vim-commentary.git  && \
    git clone https://github.com/terryma/vim-expand-region.git && \
    git clone https://github.com/tpope/vim-fugitive.git && \
    git clone https://github.com/airblade/vim-gitgutter.git && \
    git clone https://github.com/fatih/vim-go.git && \
    git clone https://github.com/plasticboy/vim-markdown.git && \
    git clone https://github.com/michaeljsmith/vim-indent-object.git && \
    git clone https://github.com/terryma/vim-multiple-cursors.git && \
    git clone https://github.com/tpope/vim-repeat.git && \
    git clone https://github.com/tpope/vim-surround.git && \
    git clone https://github.com/amix/vimrc/tree/master/sources_forked/mru.git && \
    git clone https://github.com/amix/vimrc/tree/master/sources_forked/set_tabline.git && \
    git clone https://github.com/amix/vimrc/tree/master/sources_forked/yankring.git && \
    git clone https://github.com/tpope/vim-haml.git && \
    git clone https://github.com/tomtom/tlib_vim.git && \
    git clone https://github.com/MarcWeber/vim-addon-mw-utils.git && \
    git clone https://github.com/garbas/vim-snipmate.git && \
    git clone https://github.com/honza/vim-snippets.git && \
#cleanup
    apk del build-deps && \
    rm -rf /var/cache/apk/* && \
    rm -rf /tmp/* && \
    
ENV HOME /home/developer
ENV TERM xterm-256color
WORKDIR /home/developer/workspace/
