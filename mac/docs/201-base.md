# Set up with Homebrew

## base tool (homebrew & git & terminal etc ...)

* [公式サイト（HomeBrew）](https://brew.sh/ja/)からコマンドをターミナルから実行（sudo必要）
* zshprofileの更新も実施

### Terminal

```
brew install --cask ghostty
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

### browser (chrome)

```
brew install --cask google-chrome
```

### git

git installからssh keyをクリップボードへコピーするまで一気に

```
brew install git
mkdir -p ~/gitrepo/own
ssh-keygen -t ed25519 -C "github-mac-mx-20xx" -f ~/.ssh/id_ed25519_git -N ""
cat << 'EOF' >> ~/.ssh/config

Host github.com
  HostName github.com
  User git
  IdentityFile ~/.ssh/id_ed25519_git
  AddKeysToAgent yes
  UseKeychain yes

EOF
cat ~/.ssh/id_ed25519_git.pub | pbcopy
```

[git setting key](https://github.com/settings/keys)にてssh key設定

```
cd ~/gitrepo/own
git clone git@github.com:dieeel/device-env.git
```

### dot files

```
cd device-env/mac/dotfiles
bash setup.sh
```

### mas

Mac Apple Store command-line interface

```
brew install mas
```

