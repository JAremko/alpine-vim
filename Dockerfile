FROM jare/alpine-vim-ycm:latest

MAINTAINER JAremko <w3techplaygound@gmail.com>

ENV TERM=xterm-256color
ENV DISABLE=""
COPY .vimrc /home/developer/my.vimrc
COPY run /usr/local/bin/

RUN apk --update add curl ctags git ncurses-terminfo && sh /util/ocd-clean /usr/share/
    
#Get Vim plugins
RUN cd /home/developer/bundle/ && \
    git clone --depth 1 https://github.com/bling/vim-airline.git && \
    git clone --depth 1 https://github.com/majutsushi/tagbar.git && \
    git clone --depth 1 https://github.com/vim-scripts/EasyGrep.git && \
    git clone --depth 1 https://github.com/jlanzarotta/bufexplorer.git && \
    git clone --depth 1 https://github.com/kien/ctrlp.vim.git && \
    git clone --depth 1 https://github.com/scrooloose/nerdtree.git && \ 
    git clone --depth 1 https://github.com/jistr/vim-nerdtree-tabs.git && \
    git clone --depth 1 https://github.com/scrooloose/syntastic.git && \
    git clone --depth 1 https://github.com/tomtom/tlib_vim.git && \
    git clone --depth 1 https://github.com/marcweber/vim-addon-mw-utils.git && \
    git clone --depth 1 https://github.com/altercation/vim-colors-solarized.git && \
    git clone --depth 1 https://github.com/vim-scripts/taglist.vim.git && \
    git clone --depth 1 https://github.com/tpope/vim-commentary.git && \
    git clone --depth 1 https://github.com/terryma/vim-expand-region.git && \
    git clone --depth 1 https://github.com/tpope/vim-fugitive.git && \
    git clone --depth 1 https://github.com/airblade/vim-gitgutter.git && \
    git clone --depth 1 https://github.com/fatih/vim-go.git && \
    git clone --depth 1 https://github.com/plasticboy/vim-markdown.git && \
    git clone --depth 1 https://github.com/michaeljsmith/vim-indent-object.git && \
    git clone --depth 1 https://github.com/terryma/vim-multiple-cursors.git && \
    git clone --depth 1 https://github.com/tpope/vim-repeat.git && \
    git clone --depth 1 https://github.com/tpope/vim-surround.git && \
    git clone --depth 1 https://github.com/vim-scripts/mru.vim.git && \
    git clone --depth 1 https://github.com/vim-scripts/YankRing.vim.git && \
    git clone --depth 1 https://github.com/tpope/vim-haml.git && \
    git clone --depth 1 https://github.com/SirVer/ultisnips.git && \
    git clone --depth 1 https://github.com/honza/vim-snippets.git && \
    git clone --depth 1 https://github.com/derekwyatt/vim-scala.git && \
    sh /util/ocd-clean /home/developer/bundle/ && \
    find '/home/developer/bundle/' -name "*.vim" -exec sh /util/tidy-viml '{}' \; 
    
#build the default .vimrc
RUN  mv -f /home/developer/.vimrc /home/developer/.vimrc~ && \
     curl https://raw.githubusercontent.com/amix/vimrc/master/vimrcs/basic.vim >> /home/developer/.vimrc~ && \
     curl https://raw.githubusercontent.com/amix/vimrc/master/vimrcs/extended.vim >> /home/developer/.vimrc~ && \
     cat  /home/developer/my.vimrc >> /home/developer/.vimrc~ && \
     rm /home/developer/my.vimrc && \
     sh /util/tidy-viml /home/developer/.vimrc~ && \
#custom .vimrc stub
     mkdir -p /ext/ && echo " " > /ext/.vimrc

ENV GOPATH /home/developer/workspace
ENV GOROOT /goroot
ENV PATH $PATH:$GOROOT/bin:$GOPATH/bin

ENTRYPOINT ["sh", "/usr/local/bin/run"]
