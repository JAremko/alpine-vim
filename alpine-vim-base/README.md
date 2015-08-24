Vim package from the Alpine repository lacks "pythoninterp"(required for some of my plugins). So I made this base image with a custom Vim build. Also I removed docs, tutorials and other unnecessary parts.

Used in:
- [vim-bundle★](https://registry.hub.docker.com/u/jare/vim-bundle/)
- [alpine-vim-ycm](https://registry.hub.docker.com/u/jare/alpine-vim-ycm/)
- [vim-pathogen](https://registry.hub.docker.com/u/jare/vim-pathogen/)

Use `jare/alpine-vim:nopy`  If you don't need Vim Python interoperability and "big" features
