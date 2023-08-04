
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