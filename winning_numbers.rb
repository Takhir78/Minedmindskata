# Determine if the specified number is in the specified array
# Reviewed and re-tested for 1/26 - Homework Part 2 submission

# Sandbox testing variables
# number = 5
# #number = 4
# test_array = [1, 2, 3, 4, 5, 6, 7]

# Method 1 - using .include?
# def winning_numbers(num, set)
# 	return set.include?(num)
# end

# Method 2 - using .empty? and clarification output
# Jon advised that it's not good practice to set a boolean true to false (line 31),
# so tweaked in Method 3
# def winning_numbers(num, set)
# 	yes = []
# 	no = []
# 	counter = 1
# 	set.each do |n|
# 		if n == num
# 			puts "If iteration #{counter}: n - #{n}, num - #{num}"
# 			yes.push(n)
# 			puts "If iteration - yes array: #{yes}, no array: #{no}"
# 		else
# 			puts "Else iteration #{counter}: n - #{n}, num - #{num}"
# 			no.push(n)
# 			puts "Else iteration - yes array: #{yes}, no array: #{no}"
# 		end
# 		counter += 1
# 	end
# 	if yes.empty? == false
# 		return true
# 	else
# 		return false
# 	end
# end

# Method 3 - dropped no array (not required) and compare .length of yes array for boolean
def winning_numbers(num, set)
	yes = []
	set.each do |n|
		if n == num
			yes.push(n)
		end
	end
	if yes.length > 0
		return true
	else
		return false
	end
end

# true if number is in the test_array, false if not
# print test_array.include?(number)

# Sandbox test to run function
# print winning_numbers(number, test_array)
