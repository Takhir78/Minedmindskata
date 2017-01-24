#formatter = "%{first} %{second} %{third} %{fourth}" # To format the strings use #{}when you want to apply same format to multiple values use %{}

#puts formatter % {first: 1, second: 2, third: 3, fourth: 4}
#puts formatter % {first: "one", second: "two", third: "three", fourth: "four"}
#puts formatter % {first: true, second: false, third: true, fourth: false}
#puts formatter % {first: formatter, second: formatter, third: formatter, fourth: formatter}

#puts formatter % {
	#first: "I had this thing.",
	#second: "That you could type up right.",
	#third: "But it didn't sing.",
	#fourth: "So I said goodnight."
#}

formatter = "%{f} %{s} %{t}"

puts formatter % {f: 123, s: 465, t: 789}
puts formatter % {f: "first three", s: "second three", t: "third three"}
puts formatter % {f: formatter, s: formatter, t: formatter}
puts formatter % {
	f: "England",
	s: "France",
	t: "Germany"

}


