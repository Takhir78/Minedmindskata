def minedmindskata(parameter1)
	# (1..100).each do |parameter1|

	if parameter1 % 3 == 0 && parameter1 % 5 == 0
	'MinedMinds'
	elsif parameter1 % 3 == 0
		'Mined'
	elsif parameter1 % 5 == 0
		'Minds'
	# elsif parameter1 % 15 == 0
	# 	'MinedMinds'

	else
		parameter1 

    # end
	end
end
