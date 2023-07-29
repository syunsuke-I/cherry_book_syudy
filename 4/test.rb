# 4.2.1 
tmp = ['a', 'b', 'c']
tmp[7] = 'h'
p tmp

print "4.2.2 一個で受け取る例\n"
quo_rem = 14.divmod(3)
p quo_rem[0]
p quo_rem[1]

print "4.2.2 別々で受け取る\n"
quo, rem = 14.divmod(3)
p quo
p rem

print "4.3.2 Rubyの繰り返し処理\n"
numbers = [1, 2, 3, 4]
sum = 0
numbers.each do |n|
  sum += n
end
puts sum
