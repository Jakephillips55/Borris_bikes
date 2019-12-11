require_relative 'bike.rb'

class DockingStation
attr_reader :bike
  def release_bike
    fail 'No bikes available' unless @bike != nil
    @bike
  end

def dock(bike)
  @bike = bike
end
end
