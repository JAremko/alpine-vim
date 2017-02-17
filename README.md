#### `jare/vim-bundle:latest`   

[![](http://i.imgur.com/G6KybVM.png)](http://i.imgur.com/G6KybVM.png) 

#### [For the more *"IDE like experience"* try `jare/drop-in`](https://hub.docker.com/r/jare/drop-in/)  
[![](http://i.imgur.com/RVTlBBO.png)](http://i.imgur.com/RVTlBBO.png) 

#### [Or Vim/Emacs hybrid `jare/spacemacs`](https://hub.docker.com/r/jare/spacemacs/)   
[![](https://raw.githubusercontent.com/syl20bnr/spacemacs/master/doc/img/spacemacs-python.png)](https://raw.githubusercontent.com/syl20bnr/spacemacs/master/doc/img/spacemacs-python.png) 

####  Based on ["The Ultimate vimrc"](https://github.com/amix/vimrc)  
###### **The best way to use:**  
**Make an alias:**
`alias edit='docker run -ti --rm -v $(pwd):/home/developer/workspace jare/vim-bundle'`
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
14. [Gitgutter](https://github.com/airblade/vim-gitgutter) *Plugin which shows a git diff in the gutter (sign column) and stages/reverts hunks*
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
37. [Vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator) *to navigate seamlessly between vim and tmux splits using a consistent set of hotkeys*
38. [UltiSnips](https://github.com/SirVer/ultisnips) The ultimate snippet solution for Vim! 
39. [YouCompleteMe](https://github.com/Valloric/YouCompleteMe) Fast, as-you-type, fuzzy-search code completion
40. [Vimproc.vim](https://github.com/Shougo/vimproc.vim) Interactive command execution in Vim
42. [Dockerfile.vim](https://github.com/ekalinin/Dockerfile.vim) syntax file for Docker's Dockerfile and snippets for snipMate

*[.vimrc](https://github.com/JAremko/alpine-vim/blob/master/.vimrc)*

###### **Working with Golang:**
  - For the full Golang support you need to mount `/usr/lib/go`. For example, run [`jare/go-tools`](https://hub.docker.com/r/jare/go-tools/) in the detached mode `docker create -v /usr/lib/go --name vim-go-tools jare/go-tools /bin/true` and mount its volumes like this `docker run ...  --volumes-from vim-go-tools ... jare/vim-bundle` or add it to the alias `alias edit="docker run -ti --rm --volumes-from go-tools -v $(pwd):/home/developer/workspace jare/vim-bundle"`
  - If you want to use a [go-tool](https://hub.docker.com/r/jare/go-tools/) , but [vim-go](https://github.com/fatih/vim-go) doesn't provide a shorthand - you can simply type, for example, `:!gofmt %` and it will output formatted source of the current buffers(`%:p ` absolute file path, `%:h` head of the file name and `%:p:h` is the current directory). If you want to overwrite - use `:% ! gofmt %` The `gofmt` tool used as an example, actually, it covered in vim-go.
 
###### Alternatively, you can put something like this into .bashrc to automatically bootstrap all containers:  

 ``` bash
#docker vim-bunlde
function ed() {
  local dtc_id=$(docker ps -a -q --filter 'name=vim-go-tools')
  if [[ -z "${dtc_id}" ]]; then
   echo 'vim-go-tools container not found. Creating...'
   docker create -v '/usr/lib/go' --name 'vim-go-tools' \
     'jare/go-tools' '/bin/true'
   echo 'Done!'
  fi
  echo 'Starting Vim'
  docker run -ti --rm -p 8080:8080 --volumes-from 'vim-go-tools' \
    -v $('pwd'):/home/developer/workspace 'jare/vim-bundle' "${@}"
}
export -f ed
 ```
###### **Keep in mind:**
  - With something like GNOME terminal You should be able to:
    - drag and drop text into the Vim.
    - use mouse right button menu by holding `Shift`.
  - `<Leader>` mapped to `,`. I use the basic mappings from the great [amix .vimrc](https://github.com/amix/vimrc/tree/master/vimrcs)
  - You can set the user with the ENV variables [in the Dockerfile](https://github.com/JAremko/alpine-vim/blob/master/Dockerfile#L3)
  - If Vim or Powerline doesn't look right in the tmux try `tmux -2`
  - If the Golang auto-complete doesn't work  try  `go install` package
  - **Leave a comment if you found a bug or if you have a suggestion**
  - **Any contribution are greatly appreciated as well as new runtime containers!**
