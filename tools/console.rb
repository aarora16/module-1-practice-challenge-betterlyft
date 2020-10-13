require_relative '../config/environment.rb'
require_relative '../app/models/driver.rb'
require_relative '../app/models/passenger.rb'
require_relative '../app/models/ride.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!
bob = Driver.new("Bob")
billy = Driver.new("Billy")
joe = Driver.new("Joe")

clark = Passenger.new("Clark")
eric = Passenger.new("Eric")
susan = Passenger.new("Susan")

first_ride = Ride.new(bob, clark, 38.2)
second_ride = Ride.new(billy, eric, 25.7)
third_ride = Ride.new(joe, susan, 61.1)
fourth_ride = Ride.new(bob, eric, 50.0)
fifth_ride = Ride.new(billy, eric, 35.3)


binding.pry
