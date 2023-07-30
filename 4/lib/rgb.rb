def to_hex(red, green, blue)
  [red, green, blue].sum('#') do |n|
    n.to_s(16).rjust(2, '0')
  end
end

def to_ints(hex) = hex.scan(/\w\w/).map(&:hex)