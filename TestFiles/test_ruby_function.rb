require "minitest/autorun"
require_relative "ruby_function.rb"

class TestAddition <Minitest::Test

def test_1_plus_1_returns_2
	assert_equal(2,add(1,1))
end

def test_2_plus_3_returns_5
	assert_equal(5,add(2,3))
end

def test_23_plus_5_returns_28
	assert_equal(28,add(23,5))
end


#splat

def test_pass_3_arguments
	assert_equal(42,add(12,14,16))

end

end
