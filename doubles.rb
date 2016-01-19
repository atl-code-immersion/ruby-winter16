puts "Gimme a number between 1 and 10, please and thank you:"

num = gets.chomp.to_i

foo = num

until num == 11
	puts num * 2
	num += 1
end

until foo == 0
	puts foo * 2
	foo -= 1
end