require_relative "adder"

puts "What do you want to add?"
print "Number One: "
num1 = gets.chomp.to_i
print "Number Two: "
num2 = gets.chomp.to_i

puts adder(num1,num2)