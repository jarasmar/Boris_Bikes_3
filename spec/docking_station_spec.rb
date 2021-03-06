require 'docking_station'

describe DockingStation do

  it "Responds to the method release_bike" do
    docking_station = DockingStation.new
    is_expected.to respond_to(:release_bike)
  end
  #it { is_expected.to respond_to(:release_bike) }
  it "#release_bike returns a bike object" do
    bike = Bike.new
    expect(bike).to be_working # be expects a boolean to return true
  end

  it "responds to #dock" do
    bike = Bike.new
    expect{subject.dock(bike)}.not_to raise_error
  end

  it "docks bike" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.station[-1]).to eq bike # the bike that has been docked get stored in the station variable
  end

  it "raises an error if #release_bike and there is no bikes" do
    expect{subject.release_bike}.to raise_error("No bikes available")
  end

  it "raises an error if #dock and there is no space" do
    DockingStation::DEFAULT_CAPACITY.times {subject.dock(Bike.new)} #when calling constant in tests you need to use this syntax Class::CONSTANT
    expect{subject.dock(Bike.new)}.to raise_error("No space available")
  end

  it "allows to set capacity" do
    expect{DockingStation.new(15)}.not_to raise_error
  end

  it "creates station with capacity of 12" do
    station = DockingStation.new(12)
    expect(station.capacity).to eq 12
  end
end


=begin
  it "Responds to the method #dock_bike" do
    expect(subject).to respond_to(:dock_bike)
  end

  it "#dock_bike takes bike object and stores it in station" do
    subject.dock_bike(Bike)
    expect(@station).to include(Bike)
  end
=end
