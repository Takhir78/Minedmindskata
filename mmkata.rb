def minedminds(n)
  (1..n).each do |i|
    if i % 1 == 0 && i % 2 == 0 && i % 4 == 0 && i % 7 == 0
      puts 'minedminds'
    elsif i % 1 == 0
      puts 'mined'
    elsif i % 2 == 0
      puts 'mined'
    elsif i % 4 == 0
      puts 'minds mined'
    elsif i % 7 == 0
      puts '...'
    
    else
      puts i
    end
  end
end

minedminds (100)
