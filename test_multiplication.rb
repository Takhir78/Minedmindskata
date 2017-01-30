require "minitest/autorun"
require_relative "multiplication.rb"

class TestMultiplication < Minitest::Test
	def test_1_times_2_equals_2
		assert_equal(2, my_multiplication(1, 2))
	end

	def test_2_times_4_equals_8
		assert_equal(8, my_multiplication(2, 4))
	end

	def test_0_times_4_equals_0
		assert_equal(0, my_multiplication(0, 4))
	end

	def test_5_times_15_equals_75
		assert_equal(75, my_multiplication(5, 15))
	end

end