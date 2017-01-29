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

