# Question 6: Do All the Maths!

def add(x,y)
	puts "Your answer is: #{x+y}"
end

def subtract(x,y)
	# I don't like negative numbers,
	# so let's re-arrange the numbers
	# to make sure we get a positive result
	if x > y
		puts "Your answer is: #{x-y}"
	else
		puts "Your answer is: #{y-x}"
	end
end

def multiply(x,y)
	puts "Your answer is #{x*y}"
end

def divide(x,y)
	# Sorta same idea as the subtract method,
	# let's get a whole number for the quotient
	if x > y
		puts "Your answer is: #{x/y}"
	else
		puts "Your answer is: #{y/x}"
	end
end

puts "Let's do some math! First we need some numbers..."
print "Number One: "
num1 = gets.chomp.to_f
print "Number Two: "
num2 = gets.chomp.to_f

puts "Now what would you like done with #{num1} & #{num2}?"
puts "------------------------"
puts "1. Add"
puts "2. Subtract"
puts "3. Multiply"
puts "4. Divide"

choice = gets.chomp.to_i

case choice
	when 1
		add(num1,num2)
	when 2
		subtract(num1,num2)
	when 3
		multiply(num1,num2)
	when 4
		divide(num1,num2)
	else
		puts "I don't got time for smart alecks. You're done."
end