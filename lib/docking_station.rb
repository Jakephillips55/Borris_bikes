require_relative 'bike.rb'

class DockingStation
attr_reader :bike
def initialize
@storage = [] 
end
  def release_bike
    fail 'No bikes available' unless @bike != nil
    @bike
  end

def dock(bike)
    fail 'no space for more bikes' if @bike
    @bike = bike
  end
end
