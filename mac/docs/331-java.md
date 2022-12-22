# java

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

