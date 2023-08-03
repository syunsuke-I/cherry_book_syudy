text = '私の誕生日は1997年7月17日です'
/(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/ =~ text
puts year