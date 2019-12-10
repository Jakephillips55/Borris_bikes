require "docking_station.rb"
#
describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  it "tests if bike is working" do
    bike = subject.release_bike
    expect(bike).to be_working
  end
end
