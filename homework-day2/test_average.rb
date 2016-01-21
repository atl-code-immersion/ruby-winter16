# Question 3: Test Scores

scores = []

9.times do
	scores.push(rand(1..100))
end

puts "The test scores were:"
puts scores.sort.join(", ")

sum = 0
scores.each do |x|
	sum += x
end

puts "The average for this test was: #{sum/scores.length}"