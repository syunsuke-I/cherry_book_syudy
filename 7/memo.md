# プロを目指す人のためのRuby 7章 クラス作成を理解する

## 概要

以下を学ぶ

* オブジェクト思考プログラミングの基礎知識
* クラスの定義
* selfワード
* クラスの継承
* メソッドの可読性
* 定数
+ 様々sな種類の変数
* クラス定義やRubyの言語仕様に関する高度な話題

#### インスタンス変数について

* @で始まるのがインスタンス変数
* 例えば、クラス外から初期値を設定していないインスタンス変数を利用したメソッドアクセスするとnilが返される。
* 例えば、クラス外から初期値を設定していない非インスタンス変数を利用したメソッドにアクセスするとエラーになる。

#### アクセサについて

* Rubyではgetterやseeterは下記のように定義する

```
# 読み書きできる
attr_accessor :name, :age

# read only
attr_reader :name, :age

# write only
attr_writer :name, :age
```

#### クラスメソッドとメソッドの違い

* クラスメソッド = クラスオブジェクトから実行可能なメソッド
* 著者のブログを発見→https://blog.jnito.com/entry/2022/07/20/080512

```
class Home
  def self.pc
    print("Personal Computer")
  end
end

Home.pc # =>  Personal Computer

```

```
class Japanese
  def nagase
    print("Nagase Rai")
  end
end

instance = Japanese.new
instance.nagase # => Nagase Rai 

```

#### どう使い分けるか

> 「クラスメソッドとインスタンスメソッドの使い分けに迷ったら、とりあえずインスタンスメソッドにしておけ」
> その上で、「もしインスタンスを引数なしでnewした直後に何かメソッドを呼び出している場合は、それはクラスメソッドの候補かもしれない」と考えると良い

#### 使い分けに慣れるには

* RubyやRORの標準ライブラリを使って慣れていこう！！！
* どういう使い分けか、自然と身に付くかもね！！！