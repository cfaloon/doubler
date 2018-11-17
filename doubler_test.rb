require_relative 'doubler'
require 'minitest/autorun'

class DoublerTest < Minitest::Test
  def test_initialization
    assert Doubler.new(5).is_a?(Doubler)
  end

  def test_double
    doubler = Doubler.new(5)
    assert_equal doubler.double, 10
  end
end
