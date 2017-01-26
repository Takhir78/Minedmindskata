# def add(num_5,num_23)
	
# 	num_23 + num_5
    
# end

def say(what, *people)
  people.each{|person| puts "#{person}: #{what}"}
end
 
say "Hello!", "Alice", "Bob", "Carl"
# Alice: Hello!
# Bob: Hello!
# Carl: Hello!

