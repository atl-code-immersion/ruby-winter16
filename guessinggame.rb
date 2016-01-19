puts "Gimme a number between 1 and 100, please:"
num = gets.chomp.to_i

answer = rand(1..100).to_i

if num == answer
	puts "Wow. You must psychic or something."
elsif num >= answer - 5 && num <= answer + 5
	puts "Oh, so close. But no. It was #{answer}."
else
	puts "No, you're way off. It was #{answer}."
end