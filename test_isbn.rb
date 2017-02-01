require "minitest/autorun"
require_relative "isbn.rb"

class Test_ISBN < Minitest::Test
	 def test_1_output_raw_number_source_with_spaces
	   isbn = "877 1 95 869x"
	   results = output_raw_number(isbn)
	   assert_equal("877195869x", results)
	 end	

	def test_2_output_raw_number_source_with_hyphens
	   isbn = "0-321-14653-0"
	   results = output_raw_number(isbn)
	   assert_equal("0321146530", results)
	 
	 end	

	# def test_1_output_raw_number_source_with_hyphens
	#    isbn = "978-0-13-149505-0"
	#    results = output_raw_number(isbn)
	#    assert_equal(9780131495050, results)
	#  end

end
