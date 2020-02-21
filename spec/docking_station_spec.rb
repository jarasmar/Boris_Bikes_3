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
    expect(subject.station).to eq bike # the bike that has been docked get stored in the station variable
  end

  it "raises an error if #release_bike and there is no bikes" do

    expect{subject.release_bike}.to raise_error("No bikes available")
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
