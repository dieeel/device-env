## base homebrew & git & terminal etc ...

```
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"  # NeedSuDo
# ==> The Xcode Command Line Tools will be installed. => Enter
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
```

```
brew install git
git --version
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


## python

```
brew install pyenv
brew install pyenv-virtualenv
brew install pyenv-virtualenvwrapper
echo 'eval "$(pyenv init --path)"' >> ~/.zshrc
```

### python env

```
pyenv install --list
pyenv install 3.9.6
pyenv virtualenv 3.9.6 ve.3.9.6
pyenv global ve.3.9.6
python --version
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python get-pip.py
rm get-pip.py
pyenv versions
```

## java

openjdk

```
brew install java
echo 'export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"' >> ~/.zshrc
echo 'export CPPFLAGS="-I/opt/homebrew/opt/openjdk/include"' >> ~/.zshrc
```

jenv

```
brew install jenv
echo 'export PATH="$HOME/.jenv/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(jenv init -)"' >> ~/.zshrc
source ~/.zshrc
```

if needed

```
/usr/libexec/java_home -V  # インストール済みJDK(JAVA_HOME)の確認
jenv add `/usr/libexec/java_home -v "16"`
jenv versions
```

> [参考](https://qiita.com/seijikohara/items/56cc4ac83ef9d686fab2)


## common

```
brew install google-chrome
brew install google-drive
brew install google-japanese-ime  # M1未対応2021/8/19時点
brew install evernote
brew install dropbox
brew install slack
```

## dev

### docker for M1

* dockerを公式からダウンロード
* 以下を実行

```
softwareupdate --install-rosetta  # docker for M1
```

etc

```
# brew install docker  # NG for M1
brew install docker-compose
brew install awscli
```

### etc

```
brew install bash-completion
brew cask install github-desktop
brew install skype
brew cask install sourcetree
brew install jq
brew install firefox
brew install automake cmake gcc
brew install tree
brew install plantuml
```

### node

```
brew install nodenv
echo 'export PATH=$HOME/.nodenv/bin:$PATH' >> ~/.zshrc
echo 'eval "$(nodenv init -)"' >> ~/.zshrc
source ~/.zshrc
nodenv install 16.7.0
nodenv global 16.7.0
nodenv versions
```
