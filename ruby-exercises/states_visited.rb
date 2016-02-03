visited = []
complete = false

puts "Enter the states you've visited. Type 'done' when finished: "
while complete == false
	state = gets.chomp.downcase
	if state == "done"
		complete = true
	else
		visited.push(state)
	end
end

# let's clear out the screen
# before we list their visited states:
puts `clear`

puts "You've been to #{visited.length} states."
# we can print out our visited states two ways.
# the first one will print out the array with
# a comma and a space between all the items
# (excluding the last item):
# puts visited.join(', ')

# the second way will allow us a little more
# freedom - we can put "and" in front of the
# last item:
visited.each_with_index do |state, index|
	if visited.length == 1
		puts "#{state}"
	else
		if index < visited.length - 1
			print "#{state}, "
		else
			puts "and #{state}"
		end
	end
end
