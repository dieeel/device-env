# not necessary

## cloud tool

```
brew install dropbox
brew install --cask onedrive
```

## comunicate

特に必要になれば

```
brew install zoom
brew install --cask microsoft-teams
brew install skype
```

## secure file 引っ越し

新たに全て設定しても良いが、以下は移行しても良いかも

* OCI
  * API key (cloud_agent_key)
* AWS

```
mkdir ~/.aws
mkdir ~/.ssh
chmod 0700 ~/.ssh
mkdir ~/local
```

## Google日本語入力

調子が悪く見送り  
need password

```
brew install --cask google-japanese-ime
```


## chrome 左スワイプ戻るを無効

```
defaults write com.google.Chrome.plist AppleEnableSwipeNavigateWithScrolls -bool FALSE
```

# etc tool

```
brew install imagemagick
brew install opencv
brew install geoip
brew install iproute2mac
brew install cot
brew cask install coteditor
brew install qemu
brew cask install basictex # need pass
brew install pandoc
brew install yarn
brew install p7zip
brew install readline
brew install xz
brew cask install atom
brew tap homebrew/cask-fonts
```

