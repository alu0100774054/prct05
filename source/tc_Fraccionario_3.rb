require '/Users/erikbv99421/Documents/Lpp/prct05/source/Fraccionario.rb'
require 'test/unit'

class Testfraccion < Test::Unit::TestCase

  def setup
		@f1 = Fraccionario.new(3,1)
		@f2 = Fraccionario.new(4,2)
		@f3 = @f1+@f2 
		@f4 = @f1*@f2
  end

  def teardown
    ## Nothing really
  end

  def test_simple
    assert_equal(3, @f1.resultado)
    assert_equal(2, @f2.resultado)
  end

  def test_add_failure
    assert_equal(5, @f3.resultado, "Adding work" )
  end

  def test_multiply_work
    assert_equal(6, @f4.resultado, "Multiply work" )
  end
end