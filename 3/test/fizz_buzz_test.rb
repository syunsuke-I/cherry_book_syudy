require 'minitest/autorun'
require_relative '../lib/fizz_buzz'

# テスト用
class FizzBuzzTest < Minitest::Test
  def test_fizz_buzz
    # aとbの結果が一致すればパス
    assert_equal '1', fizz_buzz(1)
    # 対象が偽ならパス
    refute nil
    # 対象が真ならパス
    refute true
    assert_equal '2', fizz_buzz(2)
    assert_equal 'Fizz', fizz_buzz(3)
  end
end

