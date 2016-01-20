#still under construction

def zero_check(num)
	if num == 0
		return true
	else
		return false
	end
end

def float_check(num)
	if num.include?(".")
		return true
	else
		return false
	end
end

def take_number
	puts "Please give me a number: "
	num = gets.chomp
	if float_check(num)
		take_number
	else		
		if zero_check(num)
			take_number
		else
			return num.to_i
		end
	end
end

arr = []

2.times do
	num = take_number
	arr.push(num)
end

arr.sort!

if arr[1] % arr[0] == 0
	puts "#{arr[1]}/#{arr[0]} = #{arr[1]/arr[0]}"
else
	puts "#{arr[1]}/#{arr[0]} = #{arr[1]/arr[0]}, with a remainder of #{arr[1]%arr[0]}"
end