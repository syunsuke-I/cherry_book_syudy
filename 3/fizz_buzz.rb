require 'minitest/autorun'

# テスト用
class FizzBuzzTest < Minitest::Test
  def test_fizz_buzz
    # aとbの結果が一致すればパス
    assert_equal '1', fizz_buzz(1)
    # 対象が偽ならパス
    refute nil
    # 対象が真ならパス
    refuse true
    assert_equal '2', fizz_buzz(2)
    assert_equal 'Fizz', fizz_buzz(3)
  end
end

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

