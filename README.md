`jare/vim-bundle:light`   [![jare/vim-bundle:light](https://badge.imagelayers.io/jare/vim-bundle:light.svg)](https://imagelayers.io/?images=jare/vim-bundle:light 'jare/vim-bundle:light')   
`jare/vim-bundle:latest`   [![jare/vim-bundle:latest](https://badge.imagelayers.io/jare/vim-bundle:latest.svg)](https://imagelayers.io/?images=jare/vim-bundle:latest 'jare/vim-bundle:latest')  

####  Based on ["The Ultimate vimrc"](https://github.com/amix/vimrc)
###### **The best way to use:**  
**Make an alias:**  
`alias edit="docker run -ti --rm -v $(pwd):/home/developer/workspace jare/vim-bundle"`  
**Have fun!**  `edit some.file`  
*Also You can use  this one for getting updates:*  `alias edit_update="docker pull jare/vim-bundle:latest"`  
###### **How to disable some plugins:**  
`docker run ... -e DISABLE="'vim-airline', 'nerdtree'" ... jare/vim-bundle`
###### **How to add your plugins and .vimrc:**
  1. Create a folder with your `.vimrc` file and, if you want to add plugins, subfolder called `bundle` with them.
  2. mount it: `docker run ... -v <***>/my-stuff:/ext/ ... jare/vim-bundle` 
  *But the best we will be extending this container.*

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
35. [Vim-TypeScript](https://github.com/leafgarland/typescript-vim) *Syntax file and other settings for TypeScript.*
36. [Vim-addon-mw-utils](https://github.com/marcweber/vim-addon-mw-utils) *vim: interpret a file by function and cache file automatically*     
37. [Tlib](https://github.com/tomtom/tlib_vim) *Some utility functions for VIM*      

###### **+** Optional Plugins: 
  - **`jare/bundle:latest`**  
      - [.vimrc](https://github.com/JAremko/alpine-vim/blob/master/bundle/.vimrc)
      - [UltiSnips](https://github.com/SirVer/ultisnips) The ultimate snippet solution for Vim! 
      - [YouCompleteMe](https://github.com/Valloric/YouCompleteMe) Fast, as-you-type, fuzzy-search code completion engine for Vim
      - *all other plugins*
      - git
      - Python
  - **`jare/bundle:light`**
      - [.vimrc](https://github.com/JAremko/alpine-vim/blob/master/bundle/light/.vimrc)
      - [Snipmate](https://github.com/garbas/vim-snipmate) Provides support for textual snippets 
      - *all other plugins*
      - git

###### **Working with Golang:**
  - For the full Golang support you need to mount `/usr/lib/go`. For example, run [`jare/go-tools`](https://hub.docker.com/r/jare/go-tools/) in the detached mode `docker create -v /usr/lib/go --name vim-go-tools jare/go-tools /bin/true` and mount its volumes like this `docker run ...  --volumes-from vim-go-tools ... jare/vim-bundle` or add it to the alias `alias edit="docker run -ti --rm --volumes-from go-tools -v $(pwd):/home/developer/workspace jare/vim-bundle"`
  - If you want to use a [go-tool](https://hub.docker.com/r/jare/go-tools/) , but [vim-go](https://github.com/fatih/vim-go) doesn't provide a shorthand - you can simply type, for example, `:!gofmt %` and it will output formatted source of the current buffers(`%:p ` absolute file path, `%:h` head of the file name and `%:p:h` is the current directory). If you want to overwrite - use `:% ! gofmt %` The `gofmt` tool used as an example, actually, it covered in vim-go.

###### **Working with typescript/Node.js:**
  Same as with the Golang tools. You can use [`jare/typescript`](https://hub.docker.com/r/jare/typescript) and mount it in to the `/usr/lib/node_modules/` 
 
###### Alternatively, you can put something like into your .bashrc to automatically bootstrap all containers:  
 ``` bash
#docker vim-bunlde
vimed() {
  local dtc_id=$(docker ps -a -q --filter 'name=vim-go-tools')
  local ts_id=$(docker ps -a -q --filter 'name=vim-typescript')
  if [[ -z "${dtc_id}" ]]; then
   echo 'vim-go-tools container not found. Creating...'
   docker create -v '/usr/lib/go' --name 'vim-go-tools' \
     'jare/go-tools' '/bin/true'
   echo 'Done!'
  fi
  if [[ -z "${ts_id}" ]]; then
   echo 'vim-typescript container not found. Creating...'
   docker create -v '/usr/lib/node_modules' \
     --name 'vim-typescript' 'jare/typescript' '/bin/true'
   echo 'Done!'
  fi
  echo 'Starting Vim'
  docker run -ti --rm -p 8080:8080 --volumes-from 'vim-go-tools' \
    --volumes-from 'vim-typescript' \
    -v $('pwd'):/home/developer/workspace 'jare/vim-bundle' "${@}"
}
alias ed=vimed
 ``` 
###### **Keep in mind:**
  - You should be able to:
      - drag and drop text into the Vim.
      - use mouse right button menu by holding `Shift`.
  - `<Leader>` mapped to `,`. I use the basic mappings from the great [amix .vimrc](https://github.com/amix/vimrc/tree/master/vimrcs)  
  - It's generally good idea to remap `Caps Lock` to the `Esc` key on your system.
  - If your terminal doesn't support 256 colors - change `TERM` environment variable:
`docker run ... -e TERM=xterm ... jare/vim-bundle`
  - To see fancy arrows you need `PowerlineFonts` http://goo.gl/gBeVbk on your machine([instruction](https://github.com/JAremko/alpine-vim/blob/master/powerline.md)). But if you don't need them remove `let g:airline_powerline_fonts = 1` from the [.vimrc](https://github.com/JAremko/alpine-vim/blob/master/.vimrc)   
![With and without](http://i.imgur.com/yRWBFgn.jpg)   
  - If you have problem with colors - switch your terminal to the `solarized dark` theme and make sure that it uses default palette and  256 colors.
  - **I managed to strip down the image from around 300MB to almost 100MB. Hopefully without breaking things. Leave a comment if you found a bug or if you have a suggestion.**

###### **Upcoming features:**
 - Optional Scala integration.
 - Stuff to help with TDD*(File watchers, build helpers)*.
