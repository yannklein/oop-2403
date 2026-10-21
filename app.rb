require "date"
require_relative "car"
# Reminder from oop.rb

# revolution = Date.new(1789,07,14)
# p revolution # an instance of the class Date
# p revolution.year

# instance of car
lewagon = Car.new("red")
# p lewagon
# p lewagon.class
# p Car.new("blue")
# p Car.new("yellow")
# p Car.new("pink")

p lewagon
lewagon.start_engine
p lewagon.color
p lewagon.engine_started
lewagon.color = "blue"
p lewagon

# lewagon.ignite_spark