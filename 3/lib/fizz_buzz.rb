
def fizz_buzz(n)
  if (n % 15).zero?
    'Fizz Buzz'
  elsif (n % 3).zero?
    'Fizz'
  elsif (n % 5).zero?
    'Buzz'
  else
    n.to_s
  end
end

for i in 1..16
  puts fizz_buzz(i)
end

