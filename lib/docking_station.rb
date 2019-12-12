require_relative 'bike.rb'

class DockingStation
DEFAULT_CAPACITY = 20

attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    fail 'No bikes available' if empty?
    @bikes.pop
  end

  def dock(bike)
    fail 'no space for more bikes' if full?
    @bikes << bike
  end

private
  def full?
    @bikes.length >= DEFAULT_CAPACITY ? true : false
  end

  def empty?
    @bikes.empty?
  end

end
