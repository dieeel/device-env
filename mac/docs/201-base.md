# Set up with Homebrew

## base tool (homebrew & git & terminal etc ...)

* [公式サイト（HomeBrew）](https://brew.sh/ja/)からコマンドをターミナルから実行（sudo必要）
* zprofileの更新も実施

### Terminal

```
brew install --cask ghostty
brew install iterm2
```
### git

```
brew install git
mkdir -p ~/gitrepo/own
```

### zsh-completion

```
brew install zsh-completions
```

To activate these completions, add the following to your .zshrc:

```
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

  autoload -Uz compinit
  compinit
fi
```

You may also need to force rebuild `zcompdump`:

```
rm -f ~/.zcompdump; compinit
```

Additionally, if you receive "zsh compinit: insecure directories" warnings when attempting
to load these completions, you may need to run this:

```
chmod -R go-w '/opt/homebrew/share/zsh'
chmod go-w /opt/homebrew/share
```

もし警告が出るなら

```
compaudit
```

で該当ディレクトリの権限を755に

### secure file 引っ越し

```
mkdir ~/.aws
mkdir ~/.ssh
chmod 0700 ~/.ssh
mkdir ~/local
```

### dot files

```
cd dotfiles
bash setup.sh
```

