def txt_a(&given_block)
  # (2) text_aが実行される
  # (3) &given_blockを受け取っている
  texts = ['a', 'b', 'c']
  # (4) common_outputにtextsと&given_blockを渡す
  common_output(texts, &given_block)
end

def txt_b(&given_block)
  # (13) text_aが実行される
  # (14) &given_blockを受け取っている
  texts = ['d', 'e', 'f']
  # (15) common_outputにtextsと&given_blockを渡す
  common_output(texts, &given_block)
end

def common_output(texts,&given_block)
  # (5)と(16)  &given_blockつまりtxt_aに配列を1つずつ渡している
  puts yield(texts[0]) # (6)(17)　&given_blockに処理を譲り返ってきたものを出力
  puts given_block.call(texts[1])  # (8) (19) ブロック.callも同じ動きをする
  puts yield(texts[2])  # (10) (21) 同上
end

# (1) text_aを実行
#  ここで txt_a(&given_block)の&given_blockを目掛けて
#  ブロックごと渡している
txt_a do |txt|
  # (7) (9)(11) texts[n]をtxtとして返している
  txt
end

# (12) text_bを実行
#  ここで txt_b(&given_block)の&given_blockを目掛けて
#  ブロックごと渡している
txt_b do |txt|
  # (18) (20)(22) texts[n]を **大文字にして** 返している
  txt.upcase
end

