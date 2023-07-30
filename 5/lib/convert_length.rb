# 単位の変換用
UNITS = { m: 1.0, ft: 3.28, in: 39.37 }.freeze
def convert_length(length, from: :unit_from, to: :unit_to)
  (length / UNITS[from] * UNITS[to]).round(2)
end
