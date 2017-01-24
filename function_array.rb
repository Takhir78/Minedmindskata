def minedminds_array
	my_array = []
	num = 0
	100.times do 
	if num += 1
	if num % 3 == 0
	my_array.push("mined")
	elsif num % 5 == 0
	my_array.push("minds")
	elsif num % 3 == 0 && num % 5 == 0
	my_array.push ("minedminds")
    else my_array.push(num)
    end 

end

	end
	print my_array
	return my_array
end


