def convertor(lbs)
		kilos = lbs * 0.453592
end

puts "I know I shouldn't be asking this, but how much do you weigh?"
weight = gets.chomp.to_i

puts "Oh, that's #{convertor(weight)} kg."


