# Question 1: Students & Teachers

students = ["Jill","Sam","Heather","Ian","Alison","Yovel","Andrew"]
teachers = ["Aaron","Zapata","Joanna","Mandy","Richard"]

puts "What's your name?"
name = gets.chomp

if students.include?(name)
	puts "Keep studying, #{name}!"
elsif teachers.include?(name)
	puts "Get back to work, #{name}!"
else
	puts "You're not authorized to be in here!"
end
		