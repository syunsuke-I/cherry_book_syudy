puts 'Plz input integer'
cnt = 0
input = gets.to_i
loop do
  break if input == 1

  if input.even?
    input /= 2
  else 
    input = (input * 3) + 1
  end
  cnt += 1
end
puts "reached in #{cnt} times"
