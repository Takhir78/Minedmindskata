def output_raw_number(isbn)
	
	raw_number = []
	hyphen = "-"
	space = " "
	isbn_array = isbn.split ("")

	isbn_array.each do |character|
		if character != hyphen
			if character != space
				raw_number.push(character)
			end
		end
	end

	return raw_number.join("")

end




puts output_raw_number("0-321-14653-0")
puts output_raw_number("877 1 95 869x")






# AIM:
# Create a program that will verify if a string is a valid ISBN number (see requirements below).
# Use a TDD approach.
# This is a big exercise - break it down into chunks!
# REQUIREMENTS FOR ISBN
# ISBN-10 is made up of 9 digits plus a check digit (which
# may be 'X') and ISBN-13 is made up of 12 digits plus a
# check digit. Spaces and hyphens may be included in a code,
# but are not significant. This means that 9780471486480 is
# equivalent to 978-0-471-48648-0 and 978 0 471 48648 0.
# The check digit for ISBN-10 is calculated by multiplying
# each digit by its position (i.e., 1 x 1st digit, 2 x 2nd
# digit, etc.), summing these products together and taking
# modulo 11 of the result (with 'X' being used if the result
# is 10).
# The check digit for ISBN-13 is calculated by multiplying
# each digit alternately by 1 or 3 (i.e., 1 x 1st digit,
# 3 x 2nd digit, 1 x 3rd digit, 3 x 4th digit, etc.), summing
# these products together, taking modulo 10 of the result
# and subtracting this value from 10, and then taking the
# modulo 10 of the result again to produce a single digit.
# Examples of valid ISBN-13:
# "9780470059029"
# "978-0-13-149505-0"
# "978 0 471 48648 0"
# Examples of valid ISBN-10:
# "0471958697"
# "0-321-14653-0"
# "877195869x"
# Examples of invalid ISBNs:
# "4780470059029"
# "0-321@14653-0"
# "877195x869"
# ""
# " "
# "-"
# Example of how the ISBN-10 sumcheck is calculated:
# first 9 digits of an isbn10: 742139476
# create checksum:
# sum = 1*7 + 2*4 + 3*2 + 4*1 + 5*3 + 6*9 7*4 + 8*7 + 9*6
# sum = 7 + 8 + 6 + 4 + 15 + 54 + 28 + 56 + 54
# sum = 232
# checksum = 232%11
# checksum = 1
# isbn = 7421394761