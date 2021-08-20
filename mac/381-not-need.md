## zlib等

```
brew install zlib
```

この辺りはpython周りのせい？

```
 ~ % pyenv install 3.9.6
python-build: use openssl@1.1 from homebrew
python-build: use readline from homebrew
Downloading Python-3.9.6.tar.xz...
-> https://www.python.org/ftp/python/3.9.6/Python-3.9.6.tar.xz
Installing Python-3.9.6...
python-build: use readline from homebrew
python-build: use zlib from xcode sdk
```

## etc

```
brew install mysql node sqlite zookeeper
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
```

Mac OS verup後の注意点

```
xcode-select --install
```


### 雑多

```
ssh-keygen -t rsa -b 4096
*) Microsoft License -> 365


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

