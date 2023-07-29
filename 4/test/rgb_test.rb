require 'minitest/autorun'
require_relative '../lib/rgb'

# テスト用
class RgbTest < Minitest::Test
  # 10進数に16進数
  def test_to_hex
    assert_equal '#000000', to_hex(0, 0, 0)
    assert_equal '#ffffff', to_hex(255, 255, 255)
    assert_equal '#043c78', to_hex(4, 60, 120)
  end

  # 16進数に10進数
  def test_to_ints
    assert_equal [0, 0, 0], to_ints('#000000')
  end
end
