require 'date'

def find_month(salary , cumulative_salary)
	month = ( cumulative_salary / salary ) % 12
	return Date::MONTHNAMES[month] if month > 0
	return Date::MONTHNAMES[12] if month == 0
end

print "Enter your Salary : "
main_salary = gets.chomp.to_i
puts "Your Salary is : #{main_salary}"

print "Enter your cumulative salary :  "
cumulative_salary = gets.chomp.to_i

puts "Your cumulative salary is : #{cumulative_salary}"
puts  "The given cumulative salary is of #{find_month(main_salary , cumulative_salary)} month"

