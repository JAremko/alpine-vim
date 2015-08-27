FROM jare/vim-wrapper:latest

MAINTAINER JAremko <w3techplaygound@gmail.com>

COPY .vimrc /home/developer/my.vimrc

#Get plugins
RUN apk --update add curl ctags git  ncurses-terminfo                                                        && \
    cd /home/developer/bundle/                                                                               && \
    git clone --depth 1 https://github.com/pangloss/vim-javascript.git                                       && \
    git clone --depth 1 https://github.com/scrooloose/nerdcommenter.git                                      && \
    git clone --depth 1 https://github.com/godlygeek/tabular.git                                             && \
    git clone --depth 1 https://github.com/Raimondi/delimitMate.git                                          && \
    git clone --depth 1 https://github.com/nathanaelkane/vim-indent-guides.git                               && \
    git clone --depth 1 https://github.com/groenewege/vim-less.git                                           && \
    git clone --depth 1 https://github.com/othree/html5.vim.git                                              && \
    git clone --depth 1 https://github.com/elzr/vim-json.git                                                 && \
    git clone --depth 1 https://github.com/bling/vim-airline.git                                             && \
    git clone --depth 1 https://github.com/easymotion/vim-easymotion.git                                     && \
    git clone --depth 1 https://github.com/mbbill/undotree.git                                               && \
    git clone --depth 1 https://github.com/majutsushi/tagbar.git                                             && \
    git clone --depth 1 https://github.com/vim-scripts/EasyGrep.git                                          && \
    git clone --depth 1 https://github.com/jlanzarotta/bufexplorer.git                                       && \
    git clone --depth 1 https://github.com/kien/ctrlp.vim.git                                                && \
    git clone --depth 1 https://github.com/scrooloose/nerdtree.git                                           && \ 
    git clone --depth 1 https://github.com/jistr/vim-nerdtree-tabs.git                                       && \
    git clone --depth 1 https://github.com/scrooloose/syntastic.git                                          && \
    git clone --depth 1 https://github.com/tomtom/tlib_vim.git                                               && \
    git clone --depth 1 https://github.com/marcweber/vim-addon-mw-utils.git                                  && \
    git clone --depth 1 https://github.com/altercation/vim-colors-solarized.git                              && \
    git clone --depth 1 https://github.com/vim-scripts/taglist.vim.git                                       && \
    git clone --depth 1 https://github.com/terryma/vim-expand-region.git                                     && \
    git clone --depth 1 https://github.com/tpope/vim-fugitive.git                                            && \
    git clone --depth 1 https://github.com/airblade/vim-gitgutter.git                                        && \
    git clone --depth 1 https://github.com/fatih/vim-go.git                                                  && \
    git clone --depth 1 https://github.com/plasticboy/vim-markdown.git                                       && \
    git clone --depth 1 https://github.com/michaeljsmith/vim-indent-object.git                               && \
    git clone --depth 1 https://github.com/terryma/vim-multiple-cursors.git                                  && \
    git clone --depth 1 https://github.com/tpope/vim-repeat.git                                              && \
    git clone --depth 1 https://github.com/tpope/vim-surround.git                                            && \
    git clone --depth 1 https://github.com/vim-scripts/mru.vim.git                                           && \
    git clone --depth 1 https://github.com/vim-scripts/YankRing.vim.git                                      && \
    git clone --depth 1 https://github.com/tpope/vim-haml.git                                                && \
    git clone --depth 1 https://github.com/SirVer/ultisnips.git                                              && \
    git clone --depth 1 https://github.com/honza/vim-snippets.git                                            && \
    git clone --depth 1 https://github.com/derekwyatt/vim-scala.git                                          && \
#Build YouCompleteMe
    apk --update add --virtual ycm-build-deps go python llvm perl cmake python-dev build-base                && \
    export  GOROOT=/goroot && export GOPATH=/home/developer/workspace                                        && \
    mv -f /usr/bin/gofmt $GOROOT/bin/gofmt                                                                   && \
    mv -f /usr/bin/go $GOROOT/bin/go                                                                         && \
    mv -f /usr/lib/go/* $GOROOT/                                                                             && \
    git clone --depth 1 https://github.com/Valloric/YouCompleteMe.git /home/developer/bundle/YouCompleteMe/  && \
    cd /home/developer/bundle/YouCompleteMe                                                                  && \
    git submodule update --init --recursive                                                                  && \
    /home/developer/bundle/YouCompleteMe/install.py --gocode-completer                                       && \
#Cleanup
    rm -rf /home/developer/bundle/YouCompleteMe/third_party/ycmd/cpp $GOROOT/*  $GOPATH/* \
      /home/developer/bundle/YouCompleteMe/third_party/ycmd/clang_includes                                   && \
    apk --update del ycm-build-deps && apk --update add python libxt libx11 libstdc++                        && \
    sh /util/ocd-clean /                                                                                     && \
    find '/home/developer/bundle/' -name "*.vim" -exec sh /util/tidy-viml '{}' \; 
    
#Build the default .vimrc
RUN  mv -f /home/developer/.vimrc /home/developer/.vimrc~                                                    && \
     curl https://raw.githubusercontent.com/amix/vimrc/master/vimrcs/basic.vim >> /home/developer/.vimrc~    && \
     curl https://raw.githubusercontent.com/amix/vimrc/master/vimrcs/extended.vim >> /home/developer/.vimrc~ && \
     cat  /home/developer/my.vimrc >> /home/developer/.vimrc~                                                && \
     rm /home/developer/my.vimrc                                                                             && \
     sh /util/tidy-viml /home/developer/.vimrc~     
     
ENV GOPATH /home/developer/workspace
ENV GOROOT /goroot
ENV HOME /home/developer
