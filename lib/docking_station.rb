require_relative "./bike.rb"

class DockingStation
attr_reader :station, :capacity
DEFAULT_CAPACITY = 20
  def initialize(capacity=DEFAULT_CAPACITY)
    @station = []
    @capacity = capacity
  end

  def release_bike
    fail("No bikes available") unless empty?
    @station.pop # removes the last element of an array
  end

  def dock(bike)
    fail("No space available") if full?
    @station << bike
  end

  private
  def full?
    @station.length >= @capacity
  end
  def empty?
    @station.length > 0
  end
end
