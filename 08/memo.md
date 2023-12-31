# プロを目指す人のためのRuby 8章 モジュールを理解する

* 具体的な用途は下記

> * 継承を使わずにクラスにインアスタんすメソッドを追加する、もしくは上書きする(ミックスイン)
> * 複数のクラスに対して共通の特異メソッドを追加する
> * クラス名や定数名の衝突を防ぐために名前空間を作る
> * 関数的メソッドを定義する
> * シングルトンオブジェクトのように扱って設定値などを保持する

* 定義方法

```
module hoge
  # モジュールの定義
end
```

* クラスとの差異

1. モジュールからインスタンスを作成することが出来ます
1. 他のモジュールやクラスを継承することは出来ない

* ミックスインとは
→モジュールをいろんなクラスにincludeして使用すること

* 動的型付け言語という特料を活かした書き方

1. Rubyは動的型付け言語である
1. なので、モジュール内でpriceメソッドはinclude先で定義されているはずという前提の記述ができる


* モジュールのextendについて

1. includeでは無くextendで記述すると、そのクラス内でクラスメソッドとして扱うことができる
1. また、クラス以外でもextendできる。

* トップレベルについて

1. クラスやモジュールに囲まれていない一番外側のことをトップレベルという。
1. トップレベルにはmainというインスタンスがselfとして存在している。これはObjectクラスのもの。
1. クラスやモジュール自身もオブジェクトである

```
# 継承関係
Object←Module←Class
```
* 名前空白の作成

1. Modileに入れ子にすれば、同一の名前も識別できるよね(Hoge::tmp.new('ごめん')とFuga::tmp.new(1,2))
1. 入れ子にせずとも"モジュール名::クラス名"のようなことはできる 
1. ::クラス名 でトップレベルのクラスをさ指すことができる
1. Rubyは入れ子のクラスを関係性の逆順に調べて、一致したら終了する。既存のクラスと名前が重複したら、意図しない挙動になることもあるので注意が必要

* 関数や定数を提供する使い方

1. モジュールは単体でも機能する(しかもnewする必要がない)ので、関数の集まりを定義するのに向いている。
1. module_functionを使用すれば、特異メソッドとしてもミックスインとしても使える。モジュール関数という使い方。
    1. 他のクラスにミックスインすると自動的にpraivateになる.
    1. 標準ライブラリいうと、Mathがある。
1. 定数をまとめておくのにも使われる

* シングルトンとして使う

1. アプリケーションの中で唯一であることを保証するような方法
1. 例えば、モジュールでは無く、クラスで定義したらnewするたびに値を保持できる
1. 何も変更する必要がないのであれば、モジュールとして定義するという方法が良い(場合にもよる？)

* 高度な話

1. メソッドの探索順。継承が浅い順。最初<<自分・・・・・BasicObject>>最後
1. prependを使用するとミックスインしたクラスよりも先にモジュールからメソッドからメソッドが検索される
    1. 外部ライブラリの仕様を変更させたい時などに便利
1. refinementsを利用すれば、モジュールの有効範囲を設定できる。メソッドにrefineをつけたら、使う側はusingを明記する必要がある。 

