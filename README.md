Set up
========

## iTerm2
Preferences -> Profiles -> Report Terminal Type [xterm-256color]

Color theme [参照](https://github.com/altercation/solarized/tree/master/iterm2-colors-solarized)

## vim
NeoBundle 参照( [https://github.com/Shougo/neobundle.vim](https://github.com/Shougo/neobundle.vim) )

run `:NeoBundleInstall`

* `ctags`のインストール。(タグジャンプに使用) 「`brew install ctags`」


vimのプラグインからDirの自動生成がコケたら、手動で叩く。
`
mkdir /Users/tomo/.vim/.yankring
`

## MacVim

## zsh
Macのlsは色が付かない。coreutilsをインストール。
その他、GNU版のコマンドツールを使うために以下をインストール。
```
$ brew install xz
$ brew install binutils
$ brew install coreutils
$ brew install findutils
```

[themes for GNU](https://github.com/seebi/dircolors-solarized)
```sh
$ mkdir .zsh
$ cd .zsh/
$ git clone https://github.com/seebi/dircolors-solarized.git
```

[tmux color theme](https://github.com/seebi/tmux-colors-solarized)


## Ricty font

[参照](http://blog.forodin.com/2013/02/mac%E3%81%AB%E3%83%97%E3%83%AD%E3%82%B0%E3%83%A9%E3%83%9F%E3%83%B3%E3%82%B0%E7%94%A8%E3%83%95%E3%82%A9%E3%83%B3%E3%83%88-ricty%E3%82%92%E3%82%A4%E3%83%B3%E3%82%B9%E3%83%88%E3%83%BC%E3%83%AB%E3%81%97/)

vim-power patch
```sh
$ mv Ricty-Regular.ttf ~/.vim/bundle/vim-powerline/fontpatcher
$ mv Ricty-Bold.ttf ~/.vim/bundle/vim-powerline/fontpatcher
$ cd ~/.vim/bundle/vim-powerline/fontpatcher
$ fontforge -lang=py -script fontpatcher Ricty-Regular.ttf
$ fontforge -lang=py -script fontpatcher Ricty-Bold.ttf
```

上記でも、errorなどでできない場合は既存PCよりimport


## 初期設定
rbenv,pyenv設定

[rbenv](https://github.com/tomoya-k31/CodeRecipe/tree/dev/iOS)

pyenv
```sh
$ brew install pyenv-virtualenv pyenv
$ pyenv install -l
$ pyenv install 3.4.1
$ pyenv install 2.7.7
$ pyenv gloabl 3.4.1
$ pyenv version

$ pyenv rehash
```