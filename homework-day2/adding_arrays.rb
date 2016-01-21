# Question 5: Adding from Random Arrays

def add_arrays(arr1,arr2)
	count = 0
	while count < arr1.length
		puts "#{arr1[count]} + #{arr2[count]} = #{arr1[count] + arr2[count]}"
		count += 1
	end
end

puts "How many numbers should be in our arrays?"
len = gets.chomp.to_i

arr1 = []
arr2 = []

len.times do
	arr1.push(rand(1..100))
	arr2.push(rand(1..100))
end

add_arrays(arr1, arr2)