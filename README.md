Set up
========

```sh
$ cd $HOME
$ git clone https://github.com/tomoya-k31/dotfiles .dotfiles && cd $HOME/.dotfiles
$ git clone https://github.com/seebi/dircolors-solarized.git
$ ln -s ~/.dotfiles/dircolors-solarized/dircolors.256dark ~/.dircolors

## シンボリックリンクで繋ぐ
$ cd $HOME/.dotfiles
$ ./init.sh

# vimの設定
$ git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
$ vim +":NeoBundleInstall" +:q
```

## iTerm2
Preferences -> Profiles -> Report Terminal Type [xterm-256color]

Color theme [参照](https://github.com/altercation/solarized/tree/master/iterm2-colors-solarized)

## zsh
Macのlsは色が付かない。coreutilsをインストール。
その他、GNU版のコマンドツールを使うために以下をインストール。
```
$ brew install xz
$ brew install binutils
$ brew install coreutils
$ brew install findutils

# etc
wget
gawk
jq
peco
toilet
tmux
zsh
direnv
gnu-sed
watch
tree
```

[themes for GNU](https://github.com/seebi/dircolors-solarized)
```sh
$ mkdir .zsh
$ cd .zsh/
$ git clone https://github.com/seebi/dircolors-solarized.git
```

[tmux color theme](https://github.com/seebi/tmux-colors-solarized)


```
source $HOME/.zshrc.custom
```


