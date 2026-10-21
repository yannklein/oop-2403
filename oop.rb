require 'date'

# OOP = Object oriented programming
# Ruby -> everything is an object!

revolution = Date.new(1789, 7, 14)
p revolution # this is an instance of Date
p revolution.class

# student = "tebatsi"
student = String.new("tebatsi")
p student.upcase
p student.class

# number = 5
number = Integer.new(5)
p number.class

# classes are UpperCamelCase
# anything else is lower_snake_case
# in html we use kebab-case

# OOP = data + behavior



# Naming conventions

# variables? lower_snake_case
# methods? lower_snake_case
# files? lower_snake_case
# classes? UpperCamelCase