require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here

skye = Manager.new("Skye", "Csharp", 26)
skye.hire_employee("Nick", 20)
skye.hire_employee("Ali", 2000)
skye.hire_employee("Dino", 3200)
skye.hire_employee("Jo", 2500)

sergio = Manager.new("Sergio", "Rust", 28)
sergio.hire_employee("Dan", 2000)
sergio.hire_employee("James", 2500)
sergio.hire_employee("Jessica", 3200)
sergio.hire_employee("Sarah", 1500)

binding.pry
puts "done"
