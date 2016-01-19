# num = 5
# num.times do
# 	puts "I think I can!"
# end

puts "Hey, aren't you Aaron Groch, the famous Ruby instructor?"

response = gets.chomp.downcase

if response == "yes"
	10.times do
		puts "OMG!"
	end
else
	3.times do
		puts "You look just like him. But without the beard."
	end
end