q_and_a = {}

puts "Let's make a quiz!"
puts "How many questions should we ask?"
num = gets.chomp.to_i

system "clear"
puts "Okay, let's get this made!"

num.times do
	puts "Give me a yes-or-no question:"
	q = gets.chomp
	puts "Give me the answer (yes or no):"
	a = gets.chomp.downcase
	q_and_a[q] = a
end

system "clear"
puts "Okay, cool. We've got our quiz! Let's try it out!"

score = 0

puts "Quiz time! Answer with Y for yes, N for no. So simple!"
q_and_a.each do |k,v|
	puts k
	ans = gets.chomp.downcase
	if ans == v
		score += 1
		puts "That's right!"
	else
		puts "Wrongsville. Population: you."
	end
end

if score < num/2
	puts "Well...you got #{score}. Which is pretty lousy."
elsif score == 0
	puts "Congragulations, you've been voted mayor of Stupidtown."
elsif score == num
	puts "You got them all right! Which is pretty unimpressive considering you just created this quiz yourself."
else
	puts "You got #{score} right. Faith in humanity: restored."
end