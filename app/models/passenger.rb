class Passenger
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def ride_instances()
    Ride.all.select { |ride| ride.passenger == self }
  end

  def rides
    ride_instances()
  end

  def drivers
    ride_instances().map { |ride| ride.driver }
  end

  def total_distance()
    distance = ride_instances().map { |ride| ride.distance }
    distance.sum
  end

  def self.premium_members
    self.all.select { |passenger| passenger.total_distance() > 100 }
  end

  def self.all
    @@all
  end
end