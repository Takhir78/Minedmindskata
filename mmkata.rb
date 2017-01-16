def minedminds(n)
  (1..n).each do |i|
    if i % 2 == 0 && i % 4 == 0
      puts 'minedminds'
    elsif i % 2 == 0
      puts 'mined'
    elsif i % 4 == 0
      puts 'minds mined'
    
    else
      puts i
    end
  end
end

minedminds (100)
