# プロを目指す人のためのRuby 5章 ハッシュシンボルやシンボルを理解する

### シンボルについて

* シンボルは任意の文字と一対一で対応するオブジェクト
+ 文字列の代わりに用いることができますが、必ずしも文字列と同じ振る舞いをするわけではありません
* 同じ内容のシンボルは必ず同一のオブジェクトです

```
:シンボル名

# このようにハッシュで「:」を用いたらabcはシンボルとして認識される
hash = { 'abc' : 123}

```
として使う。→定数みたいなもの？

* 定数はfreezemしないとrubocupに怒られる！！！
* よくよく調べたら、freezemしただけじゃ再代入するときに警告が出るだけで実際には再代入できるらしい
* https://qiita.com/yukiyoshimura/items/a5e3deb501a742302d2c

```INPUT
TEST = 'test'.freeze
TEST = 'hoge'
p TEST
```

```OUTPUT
pg.rb:2: warning: already initialized constant TEST
pg.rb:1: warning: previous definition of TEST was here
"hoge"

```






