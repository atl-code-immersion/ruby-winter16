arr = []

5.times do
	print "Please give me a number: "
	num = gets.chomp.to_i
	arr.push(num)
end

sum = 0
product = 1

arr.each do |num|
	sum += num
	product *= num
end

puts "The sum of those numbers is: #{sum}"
puts "The product of those numbers is: #{product}"
puts "The largest of those numbers is: #{arr.sort.last}"
puts "The smallest of those numbers is: #{arr.sort.first}"




