def minedminds(n)
  (1..n).each do |i|
    if i % 3 == 0 && i % 5 == 0
      puts 'minedminds'
    elsif i % 3 == 0
      puts 'mined'
    elsif i % 5 == 0
      puts 'minds'
    
    
    else
      puts i
    end
  end
end

minedminds (100)
