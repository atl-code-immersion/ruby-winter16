class User

	def initialize(username,password)
		@un = username
		@pw = password
	end

	def username
		@un
	end

	def password
		@pw
	end

end

class Product

	def initialize(name, price, description, quantity)
		@name = name
		@price = price
		@description = description
		@quantity = quantity
	end

	def name
		@name
	end

	def price
		@price
	end

	def description
		@description
	end

	def quantity
		@quantity
	end

	def purchase(amount)
		@quantity -= amount
	end

	def restock(amount)
		@quantity += amount
	end

end

# user1 = User.new("argroch","abcd1234")
# nintendo = Product.new("WiiU", 349.99, "Don't know why.")
# puts "#{user1.username}, #{user1.password}"
# puts "We're having a sale on #{nintendo.name}! Only $#{nintendo.price}! #{nintendo.description}"
product = Product.new("table", 50.05, "It's flat, it's versatile.", 30)

puts "We have #{product.quantity} #{product.name}(s) left. How many will you be purchasing today?"
answer = gets.chomp.to_i
product.purchase(answer)
puts "Enjoy them. Now we only have #{product.quantity} left."







