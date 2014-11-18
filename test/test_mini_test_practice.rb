require 'minitest_helper'
require 'mini_test_practice'

class TestMiniTestPractice < MiniTest::Unit::TestCase
  def test_that_it_has_a_version_number
    refute_nil ::MiniTestPractice::VERSION
  end

  def test_it_returns_false
      assert_equal(MiniTestPractice::Calculator.odd?(2), false)
  end

  def test_it_returns_true
      assert_equal(MiniTestPractice::Calculator.odd?(333), true)
  end

  def test_it_does_check_number_and_returns_true
    assert_equal(MiniTestPractice::Calculator.check_number?("4004"), false)
  end
  
  def test_it_return_false
    assert_equal(MiniTestPractice::Calculator.check_number?("0334"), false)
  end

  def test_it_does_check_number_and_returns_false
    assert_equal(MiniTestPractice::Calculator.check_number?(50334), false)
  end

  def test_it_does_check_number_string
    assert_equal(MiniTestPractice::Calculator.check_number?("test"), false)
  end

  def test_it_has_less_than_3_length
    assert_equal(MiniTestPractice::Calculator.enough_length?("ee"), false)
  end

  def test_it_has_more_then_8_length
    assert_equal(MiniTestPractice::Calculator.enough_length?("eeggssaass"), false)
  end

  def test_it_has_enough_length
    assert_equal(MiniTestPractice::Calculator.enough_length?("aassdd"), true)
  end

  def test_it_divide_by_zero
    assert_raises(ZeroDivisionError) {
      MiniTestPractice::Calculator.divide(5,0)  
    }
  end

  def test_it_call_fizz
    assert_equal MiniTestPractice::Calculator.fizz_buzz(9), "Fizz"
  end  

  def test_it_call_buzz
    assert_equal MiniTestPractice::Calculator.fizz_buzz(5), "Buzz"
  end

  def test_it_call_fizzbuzz
    assert_equal MiniTestPractice::Calculator.fizz_buzz(15), "FizzBuzz"
  end

  def test_it_print_hello
    assert_output(/hello/){ MiniTestPractice::Calculator.sayHello }
  end
end
