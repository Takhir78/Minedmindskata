# In-class demonstration of one digit off (number & array)
# Broken up into multiple methods
# Marvin

def off_by_one_number?(my_ticket, winning_ticket)

	counter = 0
	index = 0

	my_ticket.length.times do

		# puts winning_ticket[index]
		# puts my_ticket[index]
		if winning_ticket[index] == my_ticket[index]
			counter += 1
		# puts counter  # shows count of matching index pos/each iteration
		end
		index += 1

	end

	counter == my_ticket.length - 1  # returns true/false depending on condition

end

def winning_tickets_off_by_one(my_ticket, winning_tickets)

	matches = []

	winning_tickets.each do |winner|
		if off_by_one_number?(winner, my_ticket)  # call previous method here
												  # don't call this method from previous method
												  # - hard to test without cascading
			matches << winner  # shovel operator
		end
	end

	return matches

end

# print winning_tickets_off_by_one("4567", ["4568", "2567", "4568", "5555", "9869"])