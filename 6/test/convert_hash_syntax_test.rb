require 'minitest/autorun'
require_relative '../lib/convert_hash_syntax'

# テスト用
class ConvertHashSyntaxTest < Minitest::Test
  # 10進数に16進数
  def test_convert_hash_syntax
    old_syntax = <<~TEXT
      {
        :name => 'Alice',
        :age=>20,
        :gender  => :female
      }
    TEXT
    expect = <<~TEXT
      {
        name: 'Alice',
        age: 20,
        gender: :female
      }
    TEXT
    assert_equal expect, convert_hash_syntax(old_syntax)
  end
end
