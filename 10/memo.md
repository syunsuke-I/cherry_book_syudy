# プロを目指す人のためのRuby 10章 yieldとProcを理解する

### yieldについて
1. yieldは「取って変わられる」の意味
1.  ブロック処理を「代わりに」実行してくれる
1.  ブロックをメソッドの引数として受け取るときは **&引数** という形で受け取る
    1. それを実行するには **引数.call**
    1. ブロックとして受け取れたかは **block_given?** を使用
    1. **artify** で引数の個数を確認する
1. **artify**　がどこで定義されているのか、どうしてブロックを引数として扱えるのかは**Proc**オブジェクトとの関係を紐解くと理解できる！

* 理解の過程 https://zenn.dev/nekoninaritai/scraps/6b79d37dd17a0f
* 書いた https://zenn.dev/nekoninaritai/articles/7d1cd7d5bcbaf7

### Procについて

1. Procクラスはブロックをオブジェクト
1. Proc = procedure(プロシージャ)

```
# Proc.newは古い書き方
# hello_proc = Proc.new { puts 'Hello' }

# これと
hello_proc = proc { puts 'Hello' }
hello_proc.call

# これは同義
def hello(&hoge)
  puts 'Hello!'
end

hello do |hello|
  puts 'hoge'
end
``｀

* proc { puts 'Hello' }　はKernelモジュールのprocメソッドに渡している
* 引数の個数を調べるarityはProcクラスのもの
* ラムダでもかける。引数のチェックが厳しくなる