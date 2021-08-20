## dev stuff

```
brew install plantuml
```

## node

```
brew install nodenv
echo 'export PATH=$HOME/.nodenv/bin:$PATH' >> ~/.zshrc
echo 'eval "$(nodenv init -)"' >> ~/.zshrc
source ~/.zshrc
nodenv install 16.7.0
nodenv global 16.7.0
nodenv versions
```

```
# #####################################################3
# #####################################################3
# #####################################################3

## Install dev packages

mysql node sqlite zookeeper
brew install imagemagick opencv geoip
brew install iproute2mac
brew tap coteditor/coteditor
brew install cot
brew cask install coteditor
brew install qemu
brew cask install basictex # need pass
brew install pandoc
brew install postgresql
brew install yarn
brew install p7zip
brew install readline xz
brew cask install atom
brew tap homebrew/cask-fonts


ここ注意
brew cask install google-drive-file-stream # need sudo
brew cask install google-backup-and-sync # need sudo

Mac OS verup後の注意点
xcode-select --install

### secureに引っ越し
~/.ec2
~/.ssh
~/local
/opt/impulse

### aws 設定
aws configure

### 1password
ダウンロード(pkg)
インストール

### 設定
drop boxアカウント設定
evernoteアカウント設定
Microsoft Office 365 アカウント設定
google drive アカウント設定
ssh-keygen
* github
* bitbucket

# git管理
dotfiles

pip completion --bash >> ~/.bashrc

ln -s /Applications/Docker.app/Contents/Resources/etc/docker.bash-completion $(brew --prefix)/etc/bash_completion.d/docker

ln -s /Applications/Docker.app/Contents/Resources/etc/docker-machine.bash-completion $(brew --prefix)/etc/bash_completion.d/docker-machine

ln -s /Applications/Docker.app/Contents/Resources/etc/docker-compose.bash-completion $(brew --prefix)/etc/bash_completion.d/docker-compose



ssh-keygen -t rsa -b 4096
*) Microsoft License -> 365

AWS
aws configure
atom
(markup用）

理想はSphinxを使ってマニュアル化（クラス等を自動補完してくれるため）




export CFLAGS="-I$(brew --prefix openssl)/include"
export LDFLAGS="-L$(brew --prefix openssl)/lib -L$(brew --prefix sqlite3)/lib"
export CPPFLAGS="-I$(brew --prefix sqlite3)/include"


export CFLAGS="-I/usr/local/Cellar/openssl/1.0.2s/include"
export LDFLAGS="-L/usr/local/Cellar/openssl/1.0.2s/lib"



新しいバージョンだとエラーになる場合
brew switch openssl 1.0.2s

こういうとき
Python 3.7.3 (default, Jun 19 2019, 14:09:22)
[Clang 11.0.0 (clang-1100.0.20.17)] on darwin
Type "help", "copyright", "credits" or "license" for more information.
>>> import ssl
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
  File "/Users/takaaki/.pyenv/versions/3.7.3/lib/python3.7/ssl.py", line 98, in <module>
    import _ssl             # if we can't import it, let the error propagate
ImportError: dlopen(/Users/takaaki/.pyenv/versions/3.7.3/lib/python3.7/lib-dynload/_ssl.cpython-37m-darwin.so, 2): Library not loaded: /usr/local/opt/openssl/lib/libssl.1.0.0.dylib
  Referenced from: /Users/takaaki/.pyenv/versions/3.7.3/lib/python3.7/lib-dynload/_ssl.cpython-37m-darwin.so
  Reason: image not found

あとこういうとき
from urllib3.util.ssl_ import (
ImportError: cannot import name 'ssl'


chrome 左スワイプ戻るを無効
defaults write com.google.Chrome.plist AppleEnableSwipeNavigateWithScrolls -bool FALSE

```

