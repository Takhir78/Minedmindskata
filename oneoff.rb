# def oneoff
# 	my_ticket = "1234"
# 	winning_array = ["6666"]

search_engines =
  %w[Google Yahoo MSN].map do |engine|
    "http://www." + engine.downcase + ".com"
     end

