def my_subtraction(*numbers)
	result = numbers.shift

	numbers.each do |num|
		result -= num 
	end
	result
end