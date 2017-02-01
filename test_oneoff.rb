require "minitest/autorun"
require_relative "oneoff.rb"

class Test_oneoff < Minitest::Test 
	def test_no_match_return_empty_array
		my_ticket =  "1234"
		winning_array = ["6666"]
		assert_equal([], missed(my_num, winning_array))
	end

end
