print 'please input something = > '
inputs = gets.chomp

begin
  print 'please input your Pattern = > '
  pattern = gets.chomp
  regexp = Regexp.new(pattern)
rescue RegexpError => e
  puts "Invalid Pattern : #{e.message}"
  retry
end

matches = inputs.scan(regexp)
if matches.size.positive?
  puts "Matched : #{matches.join(',')}"
else
  puts 'Nothing matched'
end
