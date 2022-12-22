# python

```
brew install pyenv
brew install pyenv-virtualenv
brew install pyenv-virtualenvwrapper
echo 'eval "$(pyenv init --path)"' >> ~/.zshrc
```

## python env

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

