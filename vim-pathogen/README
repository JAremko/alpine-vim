**Tiny Vim image made to support persistent and swappable plugins and workspaces.**

**How to start Vim with your plugins and ".vimrc" file:**
```sh
docker run -ti -v <absolute path to your bundle>:/bundle -v <absolute path to your .vimrc>:/.vimrc  -v <absolute path to your workspace>:/home/developer/workspace jare/vim-pathogen
```
**You can add plugins and ".vimrc" file into the container:**
```sh
docker run -ti --name my-vim -v <absolute path to your bundle>:/bundle  -v <absolute path to your .vimrc>:/.vimrc jare/vim-pathogen add-bundle
docker commit my-vim my/vim-pathogen
```
**Then you can open some file in the Vim:**
```sh
docker run -ti --rm -v <absolute path to your workspace>:/home/developer/workspace my/vim-pathogen ./workspace/my-doc
```
