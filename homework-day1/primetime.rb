require 'prime'

puts "Give me a number greater than 1: "
num = gets.chomp.to_i

x = 2
count = 0

while x <= num
	if Prime.prime?(x)
		count += 1
	end
	x += 1
end

puts "Fun fact: there are #{count} prime numbers between 1 and #{num}!"