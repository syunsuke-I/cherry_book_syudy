# エフェクトモジュール
module Effects
  def self.reverse
    _revers = lambda do |words|
      words.split(' ').map(&:reverse).join(' ')
    end
  end

  def self.echo(rate)
    _echo = lambda do |words|
      words.each_char.map { |c| c == ' ' ? c : c * rate }.join
    end
  end

  def self.loud(level)
    _loud = lambda do |words|
      words.split(' ').map { |word| word.upcase + '!' * level }.join(' ')
    end
  end
end
