def my_subtraction (*numbers)
# result = numbers [0]
results = numbers.shift
#results = 3
puts "results #{results}"
numbers.each do |num|
results -= num


puts "num #{num}"

puts "results #{results}"
	end
	return results

end