require_relative "./bike.rb"

class DockingStation
attr_reader :station
  def initialize
    @station = []
  end

  def release_bike
    fail("No bikes available") unless @station.length > 0
    @station.pop # removes the last element of an array
  end

  def dock(bike)
    fail("No space available") if @station.length >= 20 
    @station << bike
  end


end
