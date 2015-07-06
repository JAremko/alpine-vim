#!/bin/bash
cat "$1" | sed '/^\s*$/d' | sed '/^"/d' > tmp.vimrc
mv -f tmp.vimrc "$1"
