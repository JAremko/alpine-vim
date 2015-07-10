**lean and mean Vim image made to support persistent and swappable plugins and workspaces.**

*How to start Vim with your plugins and ".vimrc" file:*

```
docker run -ti -v <***/bundle>:/bundle -v <***/.vimrc>:/.vimrc  -v <***/workspace>:/home/developer/workspace jare/alpine-vim-bundler
```

*You can add plugins and ".vimrc" file into the container:*

```
docker run -ti --name my-vim -v <***/bundle>:/bundle  -v <***/.vimrc>:/.vimrc jare/alpine-vim-bundler add-bundle
docker commit my-vim my/vim-bundle
```

*How to edit a file:*

```
docker run -ti --rm -v <***/workspace>:/home/developer/workspace my/vim-bundle ./mydoc
```
**But why???**  
*This image can help progressively add and test new plugins and setting with versioning.*
