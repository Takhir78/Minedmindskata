require "minitest/autorun"
require_relative "add.rb"

class TestAddition < Minitest::Test
	def test_3_add_5_equals_8
		assert_equal(8, my_addition_1(3, 5))
	end

	def test_1_add_1_equals_2
		assert_equal(7, my_addition(1, 1, 5))
	end

	def test_15_add_25_equals_40
		assert_equal(40, my_addition(7, 25, 8))
	end

	def test_5_add_8_add_9_equals_22
		assert_equal(22, my_addition(5, 8, 9))
	end



end
