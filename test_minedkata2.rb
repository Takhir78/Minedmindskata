require "minitest/autorun"
require_relative "minedkata2.rb"


class Testminedkata < Minitest::Test
	def test_1_returns_1
		assert_equal(1,1)
	end

	def test_function_returns_1
		assert_equal(1,minedmindskata(1))
	end

	def test_function_returns_2
		assert_equal(2,minedmindskata(2))
	end

	def test_function_3
		assert_equal('Mined',minedmindskata(3))
	end
	
	def test_function_returns_5
		assert_equal('Minds',minedmindskata(5))
	end

	def test_function_returns_15
		assert_equal('MinedMinds',minedmindskata(15))
	end

	
end

