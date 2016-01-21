# Question 2: Usernames and Passwords

users = {"argroch" => "abcd1234", "eamoney" => "iheartangular", "zapatalot" => "parttimersrule"}

puts "Please Sign In"
puts "--------------"
print "Username: "
un = gets.chomp
print "Password: "
pw = gets.chomp

pw_correct = false

if users.include?(un)
	
	users.each do |k,v|
		if un == k && pw == v
			puts "Welcome Back, #{un}!"
			pw_correct = true
		end
	end

	if pw_correct == false
		puts "ACCESS DENIED!"
	end
	
else
	puts "Not a current username."
end