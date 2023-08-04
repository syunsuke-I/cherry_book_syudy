require 'minitest/autorun'
require_relative '../lib/effects'
require_relative '../lib/word_synth'

# test用
class WorldSynthTest < Minitest::Test
  def test_play_without_effects
    synth = WordSynth.new
    synth.add_effect(Effects.echo(2))
    synth.add_effect(Effects.loud(3))
    synth.add_effect(Effects.reverse)
    assert_equal '!!!YYBBUURR !!!SSII !!!!!NNUUFF', synth.play('Ruby is fun!')
  end
end