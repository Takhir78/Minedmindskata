require "minitest/autorun"
require_relative "subtraction.rb"

class TestSubtraction < Minitest::Test 
	def test_3_minus_2_minus_1_equals_0
		assert_equal(0, my_subtraction(3, 2, 1))
	end

	# def test_7_minus_5_equals_2
	# 	assert_equal(2, my_subtraction(7, 5))
	# end
end