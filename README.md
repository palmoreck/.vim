# .vim

.vimrc in [vimrc](https://github.com/palmoreck/.vim/blob/master/vimrc).


1) git clone this repo

```
git clone https://github.com/palmoreck/.vim.git palmoreck_vim
```

2) cp `vimrc` into `.vim`

```
cp palmoreck_vim/vimrc ~/.vimrc
```

2) git clone Vundle

```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

3) Copy colors from repo

```
git clone https://github.com/jnurmine/Zenburn.git
cp -r Zenburn/colors/ ~/.vim/
```
4) Install plugins

```
vim +PluginInstall +qall
```

5) Install YoucompleteMe

```
python3 ~/.vim/bundle/YouCompleteMe/./install.py --clang-completer #or python3.6
```

