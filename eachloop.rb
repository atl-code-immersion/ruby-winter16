# animals = ["giraffe","platypus","unicorn","manta ray"]

# fave = "unicorn"

# animals.sort.each do |animal|
# 	puts animal
# 	if animal == fave
# 		puts "Hey! I love #{animal}s!"
# 	end
# end

person = {"Name" => "Aaron", "Age" => 35, "Hometown" => "San Diego", "Favorite Food" => "Burritos"}

person.each do |k,v|
	if k == "Name"
		puts "My name is #{v}."
	elsif k == "Age"
		puts "My age is #{v}"
	elsif k == "Hometown"
		puts "I am from #{v}"
	else
		puts "#{v} is my favorite food."			
	end
end












