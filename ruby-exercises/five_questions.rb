# here is probably the simplest of ways to write this program:

q_and_a = {"Is Ruby awesome?" => "y", "Does 2 + 2 = 4 ?" => "y", "Was Abraham Lincoln our first president?" => "n", "Do dogs say 'meow'?" => "n", "Are you sure?" => "n"}

score = 0

puts "Please answer Y or N to following questions:"

q_and_a.each do |q,a|
	puts "Q: #{q}"
	user_answer = gets.chomp.downcase

	if user_answer == 'y' || user_answer == 'n'
		if user_answer == a
			score += 1
		end
	else
		puts "Let's try that again with Y or N."
		redo 
		# will start back at the top of the loop, 
		# but not move on to next k/v pair
	end
end

puts "You got #{score}/#{q_and_a.length} correct answers!"

# check out the Ruby Exercises slides for two alternative
# ways to write this program (using 2 arrays or using methods)