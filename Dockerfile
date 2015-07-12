FROM jare/alpine-vim-ycm:latest

MAINTAINER JAremko <w3techplaygound@gmail.com>

ENV TERM=xterm-256color
ENV DISABLE=""
COPY .vimrc /home/developer/my.vimrc
COPY run /usr/local/bin/

RUN apk --update add curl ctags git ncurses-terminfo && sh /util/ocd-clean /usr/share/
    
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
    sh /util/ocd-clean /home/developer/bundle/ && \
    find '/home/developer/bundle/' -name "*.vim" -exec sh /util/tidy-viml '{}' \; 
    
#build the default .vimrc
RUN  mv -f /home/developer/.vimrc /home/developer/.vimrc~ && \
     curl https://raw.githubusercontent.com/amix/vimrc/master/vimrcs/basic.vim >> /home/developer/.vimrc~ && \
     curl https://raw.githubusercontent.com/amix/vimrc/master/vimrcs/extended.vim >> /home/developer/.vimrc~ && \
     cat  /home/developer/my.vimrc >> /home/developer/.vimrc~ && \
     rm /home/developer/my.vimrc && \
     sh /util/tidy-viml /home/developer/.vimrc~ && \
#Mount point for a custom .vimrc
     echo " " > /.vimrc

#If required golang expected to be installed into the workspace folder.
ENV GOROOT $HOME/workspace/goroot
ENV PATH $PATH:%GOROOT/bin
ENV GOPATH $HOME/workspace/gopath

WORKDIR /home/developer/workspace/
ENTRYPOINT ["sh", "run"]
