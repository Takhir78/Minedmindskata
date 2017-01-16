1.upto 100 do |i|
  string = ""

  string += "Takhir" if i % 3 == 0
  string += "Salimov" if i % 5 == 0

  puts "#{i} = #{string}"

end

