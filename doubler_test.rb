require_relative 'doubler'
require 'minitest/autorun'

class DoublerTest < Minitest::Test
  def test_initialization
    assert Doubler.new(5).is_a?(Doubler)
  end

  def test_initialization_errors_for_non_numbers
    assert_raises ArgumentError do
       Doubler.new('a')
     end
  end

  def test_double
    doubler = Doubler.new(5)
    assert_equal doubler.double, 10
  end

  def test_negative_number
    doubler = Doubler.new(-5)
    assert_equal doubler.double, -10
  end
end
