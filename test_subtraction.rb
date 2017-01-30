require "minitest/autorun"
require_relative "subtraction.rb"

class TestSubtraction < Minitest::Test
	def test_1_minus_1_equals_0
		assert_equal(0, my_subtraction(1, 1))
	end

	def test_7_minus_5_equals_2
		assert_equal(2, my_subtraction(7, 5))
	end

	def test_20_minus_8_equals_12
		assert_equal(12, my_subtraction(20, 8))
	end

	def test_15_minus_5_minus_6_equals_5
		assert_equal(4, my_subtraction(15, 5, 6))
	end
	def test_35_minus_7_minus_5_minus_3_equals_20
		assert_equal(20, my_subtraction(35, 7, 5, 3))
	end
end