require_relative 'bike.rb'

class DockingStation

attr_reader :bikes

  def initialize
    @bikes = [] 
  end

  def release_bike
    fail 'No bikes available' unless !@bikes.empty?
    @bikes
  end

def dock(bike)
    fail 'no space for more bikes' if @bikes.length >= 20
    @bikes << bike

  end
end

