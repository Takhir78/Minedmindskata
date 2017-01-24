require "minitest/autorun"
require_relatice "random pair"


class TestRandomPair < Minitest::Test 
	def test_random_pair_returns_empty_array
	assert_equal([], random_pair(""))
	end
 
