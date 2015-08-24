`jare/vim-bundle:no-ycm`   [![jare/vim-bundle:no-ycm](https://badge.imagelayers.io/jare/vim-bundle:no-ycm.svg)](https://imagelayers.io/?images=jare/vim-bundle:no-ycm 'Get your own badge on imagelayers.io')  
`jare/vim-bundle:latest`   [![jare/vim-bundle:latest](https://badge.imagelayers.io/jare/vim-bundle:latest.svg)](https://imagelayers.io/?images=jare/vim-bundle:latest 'Get your own badge on imagelayers.io')   
####  Based on ["The Ultimate vimrc"](https://github.com/amix/vimrc)
###### **The best way to use:**  
**Make an alias:**  
`alias edit="docker run -ti --rm -v $(pwd):/home/developer/workspace jare/vim-bundle"`
**Have fun!**  `edit some.file`
###### **How to disable some plugins:**  
`docker run ... -e DISABLE="'vim-airline', 'nerdtree'" ... jare/vim-bundle`
###### **How to add your plugins and .vimrc:**
  1. Create a folder with your `.vimrc` file and, if you want to add plugins, subfolder called `bundle` with them.
  2. mount it: `docker run ... -v <***>/my-stuff:/ext/ ... jare/vim-bundle`

###### **Plugins**  
1. [Airline](https://github.com/bling/vim-airline)     
2. [Tagbar](https://github.com/majutsushi/tagbar)    
3. [EasyGrep](https://github.com/vim-scripts/EasyGrep)      
4. [Bufexplorer](https://github.com/jlanzarotta/bufexplorer)      
5. [CtrlP](https://github.com/kien/ctrlp.vim)     
6. [The NERD Tree](https://github.com/scrooloose/nerdtree)      
7. [NERDTree tabs](https://github.com/jistr/vim-nerdtree-tabs)       
8. [Syntastic](https://github.com/scrooloose/syntastic)
9. [YouCompleteMe](https://github.com/Valloric/YouCompleteMe)
10. [Vim-Scala](https://github.com/derekwyatt/vim-scala)   
11. [Solarized Colorscheme for Vim](https://github.com/altercation/vim-colors-solarized)       
12. [Taglist](https://github.com/vim-scripts/taglist.vim)      
13. [Commentary](https://github.com/tpope/vim-commentary)      
14. [Vim-expand-region](https://github.com/terryma/vim-expand-region)     
15. [Fugitive](https://github.com/tpope/vim-fugitive)      
16. [Gitgutter](https://github.com/airblade/vim-gitgutter)      
17. [Vim-go](https://github.com/fatih/vim-go)    
18. [Vim-markdown](https://github.com/plasticboy/vim-markdown)    
19. [Vim-indent-object](https://github.com/michaeljsmith/vim-indent-object)       
20. [Vim-multiple-cursor](https://github.com/terryma/vim-multiple-cursors)       
21. [Vim-repeat](https://github.com/tpope/vim-repeat)      
22. [Vim-surround](https://github.com/tpope/vim-surround)      
23. [The Most Recently Used (MRU)](https://github.com/vim-scripts/mru.vim)      
24. [YankRing](https://github.com/vim-scripts/YankRing.vim)      
25. [Vim-HAML](https://github.com/tpope/vim-haml)       
26. [UltiSnips](https://github.com/SirVer/ultisnips)       
27. [snipMate & UltiSnip Snippets](https://github.com/honza/vim-snippets)  
28. [Easymotion](https://github.com/easymotion/vim-easymotion)
29. [Undotree](https://github.com/mbbill/undotree)
30. [vim-addon-mw-utils](https://github.com/marcweber/vim-addon-mw-utils)     
31. [tlib](https://github.com/tomtom/tlib_vim)      

**[.vimrc](https://github.com/JAremko/alpine-vim/blob/master/.vimrc)**   

###### **Keep in mind:**
  - If you want to use a [go-tool](https://hub.docker.com/r/jare/go-tools/) from Vim, but [vim-go](https://github.com/fatih/vim-go) doesn't provide the shorthand - you can simply type `:!gofmt %` and it will output formatted source of the current file(`%` for the filename and `%:p ` for the absolute path). If you want to override the file with formatted out use `!gofmt % | sponge %` instead. 
`gofmt` used as an example, actually, it covered in vim-go.
  - If your terminal doesn't support 256 colors change `TERM` environment variable:
`docker run ... -e TERM=xterm ... jare/vim-bundle`
  - If you don't need YouCompleteMe, Python and "big" features use `jare/vim-bundle:no-ycm` instead. It's one-third the size of this image.
  - To see fancy arrows you need `PowerlineFonts` http://goo.gl/gBeVbk on your machine. But if you don't need them remove `let g:airline_powerline_fonts = 1` from the [.vimrc](https://github.com/JAremko/alpine-vim/blob/master/.vimrc)   
![With and without](http://i.imgur.com/yRWBFgn.jpg)   
  - For the full Golang support you need to mount `/goroot` volume. For example, run [`jare/go-tools`](https://hub.docker.com/r/jare/go-tools/) in the detached (`-d`) mode `docker run -d --name go-tools jare/go-tools` and mount its volumes like this `docker run ...  --volumes-from go-tools ... jare/vim-bundle`
  - If you have problem with colors - switch your terminal to the `solarized dark` theme and make sure that it uses default palette and  256 colors.
  - **I managed to strip down the image from around 300MB to almost 100MB. Hopefully without breaking things. Leave a comment if you found a bug.**
