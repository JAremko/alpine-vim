`jare/vim-bundle:light`   [![jare/vim-bundle:light](https://badge.imagelayers.io/jare/vim-bundle:light.svg)](https://imagelayers.io/?images=jare/vim-bundle:light 'jare/vim-bundle:light')   
`jare/vim-bundle:latest`   [![jare/vim-bundle:latest](https://badge.imagelayers.io/jare/vim-bundle:latest.svg)](https://imagelayers.io/?images=jare/vim-bundle:latest 'jare/vim-bundle:latest')  

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

###### **Plugins:**  
1. [Airline](https://github.com/bling/vim-airline)  *Lean & mean status/tabline for vim that's light as air*   
2. [Tagbar](https://github.com/majutsushi/tagbar) *Plugin that displays tags in a window, ordered by scope*    
3. [EasyGrep](https://github.com/vim-scripts/EasyGrep) *Fast and Easy Find and Replace Across Multiple Files*      
4. [Bufexplorer](https://github.com/jlanzarotta/bufexplorer) *BufExplorer Plugin for Vim*      
5. [CtrlP](https://github.com/kien/ctrlp.vim) *Fuzzy file, buffer, mru, tag, ... finder with regexp support*     
6. [The NERD Tree](https://github.com/scrooloose/nerdtree) *A tree explorer plugin for vim*      
7. [NERDTree tabs](https://github.com/jistr/vim-nerdtree-tabs) *NERDTree and tabs together in Vim, painlessly*       
8. [Syntastic](https://github.com/scrooloose/syntastic) *Syntax checking hacks for vim*
9. [Vim-Scala](https://github.com/derekwyatt/vim-scala) *Integration of Scala into Vim - not a ton here, but useful*   
10. [Solarized Colorscheme for Vim](https://github.com/altercation/vim-colors-solarized) *Solarized Colorscheme*       
11. [Taglist](https://github.com/vim-scripts/taglist.vim) *Source code browser (supports C/C++, java, perl, python, tcl, sql, php, etc)*      
12. [Vim-expand-region](https://github.com/terryma/vim-expand-region) *Visual selection of increasingly larger regions using the same key combination*     
13. [Fugitive](https://github.com/tpope/vim-fugitive) *fugitive.vim: a Git wrapper so awesome, it should be illegal*      
14. [Gitgutter](https://github.com/airblade/vim-gitgutter) *Plugin which shows a git diff in the gutter (sign column) and stages/reverts hunks.*      
15. [Vim-go](https://github.com/fatih/vim-go) *Go development plugin for Vim*    
16. [Vim-markdown](https://github.com/plasticboy/vim-markdown) *Vim Markdown runtime files*    
17. [Vim-indent-object](https://github.com/michaeljsmith/vim-indent-object) *Defines a new text object representing lines of code at the same indent level*       
18. [Vim-multiple-cursor](https://github.com/terryma/vim-multiple-cursors) *True Sublime Text style multiple selections for Vim*       
29. [Vim-repeat](https://github.com/tpope/vim-repeat) *Enable to repeat last change by non built-in commands*      
20. [Vim-surround](https://github.com/tpope/vim-surround) *surround.vim: quoting/parenthesizing made simple*      
21. [The Most Recently Used (MRU)](https://github.com/vim-scripts/mru.vim) *Plugin to manage Most Recently Used (MRU) files*
22. [YankRing](https://github.com/vim-scripts/YankRing.vim) *Maintains a history of previous yanks, changes and deletes*
23. [Vim-HAML](https://github.com/tpope/vim-haml) *Vim runtime files for Haml, Sass, and SCSS*       
24. [snipMate & UltiSnip Snippets](https://github.com/honza/vim-snippets) *vim-snipmate default snippets (Previously snipmate-snippets)*  
25. [Easymotion](https://github.com/easymotion/vim-easymotion) *Vim motions on speed!*
26. [Undotree](https://github.com/mbbill/undotree) *The ultimate undo history visualizer for VIM*
27. [Vim-javascript](https://github.com/pangloss/vim-javascript) *Vastly improved Javascript indentation and syntax support in Vim.* 
28. [NerdCommenter](https://github.com/scrooloose/nerdcommenter) *Plugin for intensely orgasmic commenting* 
39. [Tabular](https://github.com/godlygeek/tabular) *Script for text filtering and alignment* 
30. [DelimitMate](https://github.com/Raimondi/delimitMate) *Plugin, provides insert mode auto-completion for quotes, parens, brackets, etc.* 
31. [Vim-indent-guides](https://github.com/nathanaelkane/vim-indent-guides) *A Vim plugin for visually displaying indent levels in code* 
32. [Vim-less](https://github.com/groenewege/vim-less) *vim syntax for LESS (dynamic CSS)* 
33. [HTML5.vim](https://github.com/othree/html5.vim) *HTML5 omnicomplete and syntax* 
34. [Vim-json](https://github.com/elzr/vim-json) *Syntax highlighting for JSON in Vim* 
35. [Vim-addon-mw-utils](https://github.com/marcweber/vim-addon-mw-utils) *vim: interpret a file by function and cache file automatically*     
36. [Tlib](https://github.com/tomtom/tlib_vim) *Some utility functions for VIM*      

###### **+** Optional Plugins: 
  - **`jare/bundle:latest`**  
      - Python preinstalled
      - [UltiSnips](https://github.com/SirVer/ultisnips) The ultimate snippet solution for Vim! 
      - [YouCompleteMe](https://github.com/Valloric/YouCompleteMe) Fast, as-you-type, fuzzy-search code completion engine for Vim 
      - [.vimrc](https://github.com/JAremko/alpine-vim/blob/master/bundle/.vimrc)
  - **`jare/bundle:light`**  
      - [Snipmate](https://github.com/garbas/vim-snipmate) Provide support for textual snippets 
      - [.vimrc](https://github.com/JAremko/alpine-vim/blob/master/bundle/light/.vimrc)

###### **Working with Golang:**
  - For the full Golang support you need to mount `/goroot` volume. For example, run [`jare/go-tools`](https://hub.docker.com/r/jare/go-tools/) in the detached mode `docker run -d --name go-tools jare/go-tools` and mount its volumes like this `docker run ...  --volumes-from go-tools ... jare/vim-bundle`
  - If you want to use a [go-tool](https://hub.docker.com/r/jare/go-tools/) , but [vim-go](https://github.com/fatih/vim-go) doesn't provide a shorthand - you can simply type, for example, `:!gofmt %` and it will output formatted source of the current buffers(`%:p ` absolute file path, `%:h` head of the file name and `%:p:h` is the current directory). If you want to overwrite - use `:% ! gofmt %` The `gofmt` tool used as an example, actually, it covered in vim-go.

###### **Keep in mind:**
  - If your terminal doesn't support 256 colors change `TERM` environment variable:
`docker run ... -e TERM=xterm ... jare/vim-bundle`
  - If you don't need YouCompleteMe use `jare/vim-bundle:no-ycm` instead. It's one-third the size of this image.
  - To see fancy arrows you need `PowerlineFonts` http://goo.gl/gBeVbk on your machine. But if you don't need them remove `let g:airline_powerline_fonts = 1` from the [.vimrc](https://github.com/JAremko/alpine-vim/blob/master/.vimrc)   
![With and without](http://i.imgur.com/yRWBFgn.jpg)   
  - If you have problem with colors - switch your terminal to the `solarized dark` theme and make sure that it uses default palette and  256 colors.
  - **I managed to strip down the image from around 300MB to almost 100MB. Hopefully without breaking things. Leave a comment if you found a bug.**
