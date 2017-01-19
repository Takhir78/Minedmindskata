require "minitest/autorun"
require_relative "1182017array.rb"

class TestArray < Minitest::Test
	def test_1_array_lenth
		results = minedminds()
		assert_equal(100,results.count)
	end

	def test_function_returns_3
		assert_equal('mined',minedminds(3))
	end
	def test_function_returns_5
		assert_equal('mind',minedminds(5))

end

end
	
