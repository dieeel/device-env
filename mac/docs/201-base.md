# for console

## base homebrew & git & terminal etc ...

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"  # NeedSuDo
```

```
# ==> The Xcode Command Line Tools will be installed. => Enter
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
```

```
brew install git
git --version
mkdir -p ~/gitrepo/own
```

```
brew tap homebrew/cask-versions  # バージョンを指定してインストールすることが可能
brew install iterm2
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

