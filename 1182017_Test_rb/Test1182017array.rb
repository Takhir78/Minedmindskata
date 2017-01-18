require "minitest/autorun"
require_relative "1182017array.rb"

class TestArray < Minitest::Test
	def test_1_array_lenth
		results = minedminds()
		assert_equal(100,results.count)
	end
end

	
