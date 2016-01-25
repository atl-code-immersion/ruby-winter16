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
	puts "3. End Session"

	choice = gets.chomp.to_i

	if choice == 1
		system "clear"
		create_account(number_of_accounts, accounts)
	elsif choice == 2
		system "clear"
		account_login(number_of_accounts, accounts)
	elsif choice == 3
		system "clear"
		end_session
	else
		system "clear"
		puts "Please choose a valid selection."
		main(number_of_accounts, accounts)
	end
end

def create_account(number_of_accounts, accounts)
	puts "Create a New Account\nWhat is your full name?"
	name = gets.chomp
	number_of_accounts += 1
	acct_num = number_of_accounts
	puts "How much will your initial deposit be?"
	amount = gets.chomp.to_f
	new_account = Account.new(name,acct_num,amount)
	accounts.push(new_account)

	puts "Account created successfully."
	puts "Your account number is #{new_account.acct_num}"
	main(number_of_accounts, accounts)
end

def account_login(number_of_accounts, accounts)
	puts "Look Up Exisiting Account"
	puts "Please give your full name:"
	input_name = gets.chomp
	puts "What is your account number:"
	input_num = gets.chomp.to_i

	not_found = true
	current_account = ""
	accounts.each do |a|
		if a.acct_num == input_num && a.name == input_name
			current_account = a
			not_found = false
		end
	end

	if not_found
		system "clear"
		puts "Account not found. Please try again."
		account_login(number_of_accounts, accounts)
	else
		system "clear"
		account_menu(number_of_accounts, accounts, current_account)
	end
end

def account_menu(number_of_accounts, accounts, current_account)
	puts "Your Account Menu"
	puts "-----------------"
	puts "1. Check the balance"
	puts "2. Make a deposit"
	puts "3. Make a withdrawal"
	puts "4. End Session"

	choice = gets.chomp.to_i

	case choice
		when 1
			system "clear"
			check_balance(number_of_accounts, accounts, current_account)
		when 2
			system "clear"
			make_deposit(number_of_accounts, accounts, current_account)
		when 3
			system "clear"
			make_withdrawal(number_of_accounts, accounts, current_account)
		when 4
			system "clear"
			end_session
		else
			puts "Not a valid choice. Choose again."
			account_menu(number_of_accounts, accounts, current_account)
	end	
end

def check_balance(number_of_accounts, accounts, current_account)
	puts "Your balance is: $#{current_account.balance.round(2)}"	
	puts ""
	account_menu(number_of_accounts, accounts, current_account)
end

def make_deposit(number_of_accounts, accounts, current_account)
	puts "How much would you like to deposit?"
	amount = gets.chomp.to_f
	current_account.deposit(amount)
	puts "You now have $#{current_account.balance.round(2)} in your account."
	return_to_menu(number_of_accounts, accounts, current_account)
end

def make_withdrawal(number_of_accounts, accounts, current_account)
	puts "How much would you like to withdraw?"
	amount = gets.chomp.to_f

	if amount > current_account.balance
		system "clear"
		puts "Insufficient funds."
	else
		current_account.withdraw(amount)
	end

	puts "You now have $#{current_account.balance.round(2)} in your account."
	return_to_menu(number_of_accounts, accounts, current_account)
end

def return_to_menu(number_of_accounts, accounts, current_account)
	puts ""
	puts "Would you like to..."
	puts "---------------------"
	puts "1. Return to Account Menu"
	puts "2. Return to Main Menu"
	puts "3. End Session"

	choice = gets.chomp.to_i

	case choice
		when 1
			account_menu(number_of_accounts, accounts, current_account)
		when 2
			main(number_of_accounts, accounts)
		when 3
			end_session
		else
			system "clear"
			puts "Not a valid selection."
			return_to_menu(number_of_accounts, accounts, current_account)
	end
end

def end_session
	puts "Thank you for banking with us.\nGoodbye."
end

puts "Welcome to THE BANK."
main(number_of_accounts, accounts)