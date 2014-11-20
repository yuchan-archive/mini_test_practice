require 'minitest_helper'

class TestMiniTestPractice < MiniTest::Test
  def test_that_it_has_a_version_number
    refute_nil ::MiniTestPractice::VERSION
  end

  def test_it_returns_false
      assert_equal(MiniTestPractice::Calculator.odd?(2), false)
  end

  def test_it_returns_true
      assert_equal(MiniTestPractice::Calculator.odd?(333), true)
  end

  def test_it_does_check_merginal_number_and_returns_false
    assert_equal(MiniTestPractice::Calculator.check_number?(10000), false)
    assert_equal(MiniTestPractice::Calculator.check_number?(9999), false)
    assert_equal(MiniTestPractice::Calculator.check_number?(1000), true)
    assert_equal(MiniTestPractice::Calculator.check_number?(999), false)
  end

  def test_it_does_check_number_string
    assert_equal(MiniTestPractice::Calculator.check_number?("test"), false)
  end

  def test_it_has_less_then_3_length
    assert_equal(MiniTestPractice::Calculator.enough_length?("ee"), false)
    assert_equal(MiniTestPractice::Calculator.enough_length?("eee"), true)
  end

  def test_it_has_more_then_8_length
    assert_equal(MiniTestPractice::Calculator.enough_length?("aaaaeeeee"), false)
    assert_equal(MiniTestPractice::Calculator.enough_length?("aaaaeeee"), true)
  end

  def test_it_divide_by_zero
    assert_raises(ZeroDivisionError) {
      MiniTestPractice::Calculator.divide(5,0)  
    }
  end

  def test_it_call_fizz
    assert_equal MiniTestPractice::Calculator.fizz_buzz(9), "Fizz"
    assert_equal MiniTestPractice::Calculator.fizz_buzz(5), "Buzz"
    assert_equal MiniTestPractice::Calculator.fizz_buzz(15), "FizzBuzz"
  end  
  
  def test_it_print_hello
    assert_output(/hello/){ MiniTestPractice::Calculator.sayHello }
  end
end
