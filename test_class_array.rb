require "minitest/autorun"
require_relative "function_array.rb"

class Test_array_kata < Minitest::Test

	def test_function_returns_100_object_in_an_array

		result = minedminds_array()
		assert_equal(100, result.count)

	end 


end
