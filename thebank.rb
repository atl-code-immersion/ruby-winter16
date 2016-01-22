class Account

	def initialize(name,acct_num,balance)
		@name = name
		@acct_num = acct_num
		@balance = balance
	end

	def name
		@name
	end

	def acct_num
		@acct_num
	end

	def balance
		@balance
	end

	def deposit(amount)
		@balance += amount
	end

	def withdraw(amount)
		@balance -= amount
	end

end

number_of_accounts = 0
accounts = []

def main(number_of_accounts, accounts)
	puts "Choose from the following options: "
	puts "-----------------------------------"
	puts "1. Create New Account"
	puts "2. View Existing Account"

	choice = gets.chomp.to_i

	if choice == 1
		create_account(number_of_accounts, accounts)
	elsif choice == 2
		account_login(number_of_accounts, accounts)
	else
		puts "Please choose a valid selection."
		main(number_of_accounts, accounts)
	end
end

def create_account(number_of_accounts, accounts)
	system "clear"
	puts "Create a New Account"
	puts "What is your full name?"
	name = gets.chomp
	number_of_accounts += 1
	acct_num = number_of_accounts
	puts "How much will your initial deposit be?"
	amount = gets.chomp.to_f
	new_account = Account.new(name,acct_num,amount)
	accounts.push(new_account)

	puts "Account created successfully."
	main(number_of_accounts, accounts)
end

def account_login(number_of_accounts, accounts)
	system "clear"
	puts "Look Up Exisiting Account"
	puts "Please give your full name:"
	name = gets.chomp
	puts "What is your account number:"
	account = gets.chomp.to_i

	not_found = true
	accounts.each do |a|
		if a.acct_num == account && a.name == name
			current_account = a
			not_found = false
		end
	end

	if not_found
		puts "Account not found. Please try again."
		account_login(number_of_accounts, accounts)
	else
		account_menu(number_of_accounts, accounts, current_account)
	end
end

def account_menu(number_of_accounts, accounts, current_account)
	system "clear"
	puts "Your Account Menu"
	puts "-----------------"
	puts "1. Check the balance"
	puts "2. Make a deposit"
	puts "3. Make a withdrawal"

	choice = gets.chomp.to_i

	case choice
		when 1
			check_balance(number_of_accounts, accounts, current_account)
		when 2
			make_deposit(number_of_accounts, accounts, current_account)
		when 3
			make_withdrawal(number_of_accounts, accounts, current_account)
		else
			puts "Not a valid choice. Choose again."
			account_menu(number_of_accounts, accounts, current_account)
	end	
end

# we need methods for:
# check_balance
# make_deposit
# make_withdrawal

# make it so after each method, you return to the Account Menu
# add to Account Menu, a way back to Main
# maybe a way to End the Program


puts "Welcome to THE BANK."
main(number_of_accounts, accounts)