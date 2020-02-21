require_relative "./bike.rb"

class DockingStation
attr_reader :station
  def release_bike
    fail("No bikes available") unless @station

    Bike.new
  end

  def dock(bike)
    @station = bike
  end
end
