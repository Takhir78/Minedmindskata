days = "Mon Tue Wed Thu Fri Sat Sun" # if you type like this it prints in one line
month = "Jan\nFeb\nMar\nApr\nMay\nJun\nJul\nAug" # if you put between strings this \n it puts your next string to down line

puts "Here are the day: #{days}"     
puts "Here are the month: #{month}"
#in line 7 in the example after % sign there is a letter q , but if you remove that q it still prints same as with q.
puts %q{
	There's something going on here.
	with the three double quotes.
	We'll be able to type as much as we like.
	Even 4 lines if we want, or 5, or 6.
}