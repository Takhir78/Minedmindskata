require "minitest/autorun"
require_relative "ruby_function.rb"

class TestAddition <Minitest::Test

# def test_1_plus_1_returns_2
# 	assert_equal(2,add(1,1))
# end

def test_2_plus_3_returns_5
	assert_equal(5,add(2,3))

end
end
