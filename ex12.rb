# print "Give me a number: "
# number = gets.chomp.to_i

# bigger = number * 100
# puts "A bigger number is #{bigger}."

# print "Give me another number: "
# another = gets.chomp
# number = another.to_i

# smaller = number / 100
# puts "A smaller number is #{smaller}."


print "How far is your home from here? "
number = gets.chomp.to_i

km = number * 1.61 
puts " So, you live #{number} miles away from here and it is equal to #{km} kilometers."

print "How long it will take you to come to here?"
time = gets.chomp "minutes"

traffic = time.chomp.to_f * 30 / 100
puts "Usually 30 % or #{traffic} minutes of my trip I spend in traffic. "