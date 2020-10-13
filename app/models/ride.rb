class Ride
  attr_accessor :driver, :passenger, :distance

  @@all = []

  def initialize(driver, passenger, distance)
    @driver = driver
    @passenger = passenger
    @distance = distance

    self.class.all << self
  end

  def self.average_distance
    all_distances = self.all.map { |ride| ride.distance }
    all_distances.sum / all_distances.length
  end

  def self.all
    @@all
  end
end