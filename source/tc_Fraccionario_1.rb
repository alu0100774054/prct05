require './fraccion'
require 'test/unit'

class Testfraccion < Test::Unit::TestCase

  def setup
		@f1 = Fraccionario.new(3,1)
		@f2 = Fraccionario.new(4,2)
  end

  def teardown
    ## Nothing really
  end

  def test_simple
    assert_equal(3, @f1.resultado)
    assert_equal(2, @f2.resultado)
  end

end