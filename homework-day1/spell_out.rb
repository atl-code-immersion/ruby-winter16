puts "What's your name?"

name = gets.chomp.upcase

count = 0

until count == name.length
	puts name[count]
	count += 1
end

count = 0 

while count < name.length
	if count == name.length - 1
		puts "#{name[count]}"
	else
		print "#{name[count]}, "
	end
	count += 1
end