	class Employee

	def initialize(name, role, location, wage)
		@name = name
		@role = role
		@location = location
		@wage = wage
	end

	def name
		@name
	end

	def role
		@role
	end

	def location
		@location
	end

	def wage
		@wage
	end

	def name_change(new_name)
		@name = new_name
	end

	def transfer(new_loc)
		@location = new_loc
	end

	def promotion(new_role)
		@role = new_role
	end

	def raise(amount)
		@wage += amount
	end
end

@employees = []

def main_menu
	puts "Please choose form the following:"
	puts "---------------------------------"
	puts "1. Create New Employee Record"
	puts "2. Look Up Employee Record"

	choice = gets.chomp.to_i

	if choice == 1
		create_employee
	elsif choice == 2
		employee_lookup_menu
	else
		puts `clear`
		puts "That is not a valid response."
		main_menu
	end
end

def create_employee
	puts `clear`
	puts "Create a new employee record..."
	print "Name: "
	name = gets.chomp
	print "Role: "
	role = gets.chomp
	print "Location: "
	location = gets.chomp
	print "Hourly wage: "
	wage = gets.chomp.to_f
	new_employee = Employee.new(name, role, location, wage)
	@employees.push(new_employee)
	return_to_main_menu
end

def employee_lookup_menu
	puts `clear`
	puts "Employee Record Menu"
	puts "--------------------"
	puts "1. Search for Employee"
	puts "2. Full Employee List"

	choice = gets.chomp.to_i

	if choice == 1
		single_employee_search
	elsif choice == 2
		employee_list
	else
		puts `clear`
		puts "That is not a valid response."
		employee_lookup_menu
	end
end

def single_employee_search
	puts "Search for a single employee record...\nPlease provide..."
	print "Name: "
	search_name = gets.chomp
	print "Location: "
	search_location = gets.chomp

	employee_found = false

	@employees.each do |employee|
		if search_name == employee.name && search_location == employee.location
			employee_found = true
			puts "#{employee.name}, #{employee.role} at #{employee.location}; $#{employee.wage}/hr.\n"
			puts "Modify employee record? [y/n]"
			choice = gets.chomp.downcase
			if choice == "y"
				modify_employee_menu(employee)
			else
				return_to_employee_menu
			end
		end
	end

	if !employee_found
		puts "Redo search? [y/n]"
		choice = gets.chomp.downcase
		if choice == "y"
			puts `clear`
			single_employee_search
		else
			return_to_employee_menu
		end
	end
end
		
def employee_list
	puts `clear`
	print "Please wait while we produce a list of all company employees"
	sleep(1)
	print "."
	sleep(1)
	print "."
	sleep(1)
	puts "."
	sleep(1)
	puts `clear`

	@employees.each_with_index do |employee, index|
		puts "#{index + 1}. #{employee.name}, #{employee.role} at #{employee.location}; $#{employee.wage}/hr.\n"
	end
	return_to_employee_menu
end

def modify_employee_menu(employee)
	puts "What do you want to modify about #{employee.name}?"
	puts "-----------------"
	puts "1. Name"
	puts "2. Role"
	puts "3. Location"
	puts "4. Wage"
end

def return_to_main_menu
	puts "Return to Main Menu? [y/n]"
	choice = gets.chomp.downcase
	if choice == "y"
		puts `clear`
		main_menu
	else
		puts `clear`
		end_session
	end
end

def return_to_employee_menu
	puts "Return to Employee Record Menu? [y/n]"
	choice = gets.chomp.downcase
	if choice == "y"
		puts `clear`
		main_menu
	else
		puts `clear`
		end_session
	end
end

def end_session
	puts "Thank you for using the automated personnel system.\nGoodbye."
end

puts "Welcome to the Personnel System."
main_menu