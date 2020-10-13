class Driver
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def ride_instances()
    Ride.all.select { |ride| ride.driver == self }
  end

  def passenger_names
    ride_instances().map { |ride| ride.passenger.name }.uniq
  end

  def rides
    ride_instances()
  end

  def total_distance()
    distance = ride_instances().map { |ride| ride.distance }
    distance.sum
  end

  def self.mileage_cap(distance)
    self.all.select { |driver| driver.total_distance() > distance }
  end

  def self.all
    @@all
  end
end