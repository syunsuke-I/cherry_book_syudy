# プロを目指す人のためのRuby 6章 正規表現

## 概要

* 正規表現そのものについて
* Rubyにおける正規表現オブジェクト
* 著者のQiitaの記事が下記にある

* https://qiita.com/jnchito/items/893c887fbf19e17d3ff9
* https://qiita.com/jnchito/items/64c3fdc53766ac6f2008
* https://qiita.com/jnchito/items/6f0c885c1c4929092578
* https://qiita.com/jnchito/items/b0839f4f4651c29da408

### キャプチャについて

#### 概要

* 抜き出したい内容を後で便利に使うために()で取得する

#### 具体的には...?

+ 下記のコードを参照

```
tect = '私の誕生日は1997年7月17日です'
m = /(\d+)年(\d+)月(\d+)日/.match(tect)
p m[0] # => 全体
p m[1] # => 1番目
p m[2] # => 2番目
p m[3] # => 3番目

```

#### 名前もつけることも出来る

```
tect = '私の誕生日は1997年7月17日です'
m = /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/.match(tect)
p m[0] # => 全体
p m[:year] # => シンボル名でも
p m['year'] # => 文字列でも
p m[2] # => 2番目でも
p m[3] # => 3番目

```

#### =~を使用するとローカル変数に割り当てることも出来る

* ただし、正規表現の指揮は必ず左辺に

```
text = '私の誕生日は1997年7月17日です'
/(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/ =~ text
puts year　# => 1997
```