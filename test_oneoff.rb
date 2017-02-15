
# Test for oneoff.rb
# Marvin

require "minitest/autorun"
require_relative "oneoff.rb"

class TestOneOff < Minitest::Test

	def test_1_off_by_one_return_true
		my_ticket = "1234"
		winning_ticket = "1239"
		results = off_by_one_number?(my_ticket, winning_ticket)
		assert_equal(true, results)
	end

	def test_2_no_match_return_false
		my_ticket = "1234"
		winning_ticket = "6666"
		results = off_by_one_number?(my_ticket, winning_ticket)
		assert_equal(false, results)
	end

	def test_3_return_matching_numbers
		my_ticket = "4567"
		winning_tickets = ["4568", "2567", "4967", "5555", "9869"]
		results = winning_tickets_off_by_one(my_ticket, winning_tickets)
		assert_equal(["4568", "2567", "4967"], results)
	end

