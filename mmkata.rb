(1..100).each do|n|
  mined = if n % 3 == 0 then 'mined' end
  minds = if n % 5 == 0 then 'minds' end
  puts "#{n} #{mined}#{minds}"
end
