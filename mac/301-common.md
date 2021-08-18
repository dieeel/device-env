## base homebrew & git & terminal etc ...

```
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"  # NeedSuDo
# ==> The Xcode Command Line Tools will be installed. => Enter
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
brew install git
brew install bash-completion
brew tap homebrew/cask-versions  # バージョンを指定してインストールすることが可能 NeedSuDo
brew cask install iterm2
```

## python

```
brew install pyenv
brew install pyenv-virtualenv
brew install pyenv-virtualenvwrapper
```

### python env

```
pyenv install 3.8.1
pyenv virtualenv 3.8.1 ve.3.8.1
pyenv global ve.3.8.1
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python get-pip.py
rm get-pip.py
pyenv versions
```

## java

```
brew install java
brew install jenv
echo 'export PATH="$HOME/.jenv/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(jenv init -)"' >> ~/.zshrc
source ~/.zshrc
mkdir ~/.jenv/versions
/usr/libexec/java_home -V  # インストール済みJDK(JAVA_HOME)の確認
jenv add `/usr/libexec/java_home -v "16"`
jenv versions
```

> [参考](https://qiita.com/seijikohara/items/56cc4ac83ef9d686fab2)


## common

```
brew cask install google-chrome
brew cask install google-backup-and-sync  # google-drive かも
brew cask install google-japanese-ime
brew cask install evernote
brew cask install dropbox
brew cask install slack
brew cask install skype
```

## dev

```
brew cask install docker
brew install docker-compose
brew install awscli
```

## dev etc

```
brew cask install github-desktop
brew cask install sourcetree
brew install jq
brew cask install firefox
brew install zlib
brew install automake cmake gcc
brew install tree
```

