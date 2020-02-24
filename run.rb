require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


a=Employee.new("Sam", 30000)
b=Employee.new("Anthony", 150000)
c=Employee.new("Charlie", 10900)
d=Employee.new("Danny", 45000)
e=Employee.new("Ellie", 123000)
f=Employee.new("Frank", 1000000)

g=Manager.new("Graham", 35)
h=Manager.new("Harriet", 90)
i=Manager.new("Ioli", 25)
j=Manager.new("John", 50)
k=Manager.new("Karen", 27)
l=Manager.new("Lupita", 57)


binding.pry
puts "done"
