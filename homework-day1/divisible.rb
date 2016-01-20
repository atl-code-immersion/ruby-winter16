# Question 1: Is it Divisible?

puts "Give me two numbers..."
print "A larger number: "
x = gets.chomp.to_i
print "And a smaller number: "
y = gets.chomp.to_i

if x % y == 0
	puts "#{x} is divisible by #{y}! What a lovely day!"
	puts "The quotient is: #{x/y}"
else
	puts "NOT DIVISIBLE! UNCLEAN!"
end