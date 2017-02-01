# def sum(a=10, b=25, c=15)
#   puts "a = #{a}\nb = #{b}\nc = #{c}"
#   puts a + b + c
# end

# sum(15)
#a = 15
#b = 25 
#c = 15
#55

# def sum(a=5,b=6,c)
#   puts a,b,c
# end

# sum 2
# #5
# #6
# #2

# sum 2,3
# #2
#6
#3

# def do_collection(m,*strings)
#   result = []
#   strings.each{|str| result << str.send(m)}
#   return result
# end

# collection = %w{hello readers}
# #=> ["hello",  "readers"]

# p result_collection = do_collection(:upcase,*collection)
# #=> ["HELLO",  "READERS"]

# p result_collection = do_collection(:downcase,*result_collection)
# #=> ["hello", "readers"]

# def create_point(x, y, color: "white", size: 1, **h)
# 		p [x, y, color, size, h]
# 	end
# create_point(2, 3, style: "solid", styler: "blue")
# #=> [2, 3, "white", 1, {:style=>"solid", :styler=>"blue"}]

# def multisum(a,b=5,*c)
#   sum = c.inject{|sum, num| sum += num}
#   sum*a*b
# end

# multisum(5, *[1, 2, 3, 4, 5]) #=> 70

# class A
#   def self.hello
#     puts 'hello'
#   end
#   def bye
#     puts 'bye'
#   end
# end

# A.hello #hello

# A.new.bye #bye

# a = 5
# unless a == 5
# puts "Верно #{a} == 5"
# end
# #=>

# a = 3
# b = 5
# if(b < a)
# puts "#{b} меньше #{a}"
# else 
# puts "#{a} меньше #{b}"
# end

# a = 3
# b = 5
# с = 5

# if(b < a)
# 	puts "#{b} меньше #{a}"
# elsif(a == b)
# 	puts "#{a} равно #{b}"
# elsif(b > a)
# 	puts "#{b} больше #{a}"
# elsif(b == с)
# 	puts "#{b} равно #{с}"
# else puts "Все не верно"
# end

# age =  5.8

# case age
#   when 0 .. 2
#     puts "Ляля"
#   when 3 .. 6
#     puts "Маленький подросток"
#   when 7 .. 12
#     puts "Почти подросток"
#   when 13 .. 18
#     puts "Подросток"
# else
#     puts "Не правильный ребенок"
# end


oil_change = 60007

case oil_change

when 0..4999
	puts "No need to change oil."
when 5000..6000
	puts "Go to oil service."
when 6001..7000
	puts "Don't drive"
else 
	puts "take a VACATION"

end

