puts "What's your favorite animal?"
answer = gets.chomp.downcase

if answer == "dog"
	puts "Woof woof."
elsif answer == "cat"
	puts "Meow."
elsif answer == "horse"
	puts "Neigh."
elsif answer == "snake"
	puts "Hiss."
elsif answer == "cow"
	puts "Moo."
else
	puts "Rawr?"
end

case answer
	when "dog"
		puts "Woof woof"
	when "cat" || "tiger"
		puts "Meow"
	else
		puts "Rawr?"
end




