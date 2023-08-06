# プロを目指す人のためのRuby 11章 パターンマッチを理解する

* 大雑把にいえば、一種の条件分岐
* 配列やハッシュの「構造」に着目して条件分岐させたい時に使う

### パターンマッチの基本(each文は省略している)

1. 個数での判別

```
recoeds = [
  [2021],
  [2021,21],
  [2021,12,12],
]

case record
  in [y] # いい感じに年だけなら(配列が一個だけなら)年として認識してくれる
    # 処理
  in [y,m]
    # 処理
  in [y,m,d]
    # 処理
end

```
1. ハッシュ値での判別

```
cars = [
  [name: 'beatle', engine: '105px'],
  [name: 'prius', engine: '98px', motor: '72ps'],
  [name: 'tesla', motor: '306ps']
]

case car
  in {name;, engine:. motor:} # キーのみの記述で、ローカル変数に自然に代入される。
    # 処理
    puts name # => prius
  in {name;, engine:}
    # 処理
  in {name;, motor:}
    # 処理
end

```

## いろんなパターンマッチ

### valueパターン

* case文に近い。in 'hoge' でhogeに一致したら〜という書き方ができる。
* しかし、注意点として一つも当てはまらない場合はエラー(caseはnilを返す)
* エラーを発生させたくないなら、elseで処理する
* raiseで意図的に例外を投げでもいい
* obj を指定して、実質的なelseとして扱うこともできる

### variableパターン

* 事前に定義した変数と比較する場合は**ピン演算子**を使用すること

```

hoge = 'pin'

case name
  in ^hoge
    # pinにマッチ
ens

```

* マッチには===が利用される。なので下記のような記述ができる。
* また、inにはローカル変数のみ使用できる。インスタンス変数は使用できない。


```
in [klass, ^klass, ^klass]  #最初と2,3個目が完全に一致

```

### arrayパターン

* 配列の一致を確認するパターン。

```
# example 1
case = [1, 2, 3]
  in [a, b, c] # 個数で一致する
  in [a, b, c] # 個数で一致する
  in [Integer, b, 3] # 型で一致もできる

# example 2
case = [1, 2, 3, 4, 5]
  in [1, *etc] #1が一致。その他はetcという変数で扱うみたいなこともできる。
```

### asパターン

* hashパターンにおける、inでマッチした変数を利用したい時に使うパターン

```
case = {name: 'Alice', age: 20, gender: :female}
  in {name: String, age: 18.. }
    # これではマッチはするが、値が取得できない
  in {name: String => name, age: 18.. => age}
    # これで使えるようになる
  in {name: String => name, age: 18.. => age} => all
    # 全体も代入できる
```

### alternativeパターン

* 2つ以上のパターンの連結
* alternativeとvariableパターン

```
case {name: 'Bob', age: 25}
  in {name: 'Alice' | 'Bob' => name, age:} # AliceかBobかに一致した時に 
```

### findパターン

* '*'を組み合わせて一致させていくパターン

case  [1, 2, 3, 4, 5, 11, 16, 19, 20 ]
  in [first, *] # 1をfirstとして扱える
  in [*, last] # 5をlastとして扱える
  in [*, 10.. => a, 10..  => b, 10..  => c, *] # 10以上の数字が3つ連続で並んでいるところを抜き出すパターン
