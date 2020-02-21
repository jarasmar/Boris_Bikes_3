require "bike"

describe Bike do
  it "Bike responds to #working?" do
    bike = Bike.new
    expect(bike).to respond_to(:working?)
  end
end
