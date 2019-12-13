require_relative 'bike.rb'

class DockingStation
DEFAULT_CAPACITY = 20

attr_reader :bikes
attr_accessor :capacity

  def initialize(capacity=DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    fail 'No bikes available' if empty?
    bikes.each do |bike|
      if bike.working?
        bikes.delete(bike)
        return bike
      end
  end
  fail 'No bikes available'
end
  def dock(bike)
    fail 'no space for more bikes' if full?
    @bikes << bike
  end

private

  def full?
    @bikes.length >= @capacity ? true : false
  end

  def empty?
    @bikes.empty?
  end

end
