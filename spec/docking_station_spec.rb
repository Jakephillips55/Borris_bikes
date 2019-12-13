require "docking_station.rb"
#
describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  it "tests if bike is working" do
    bike = Bike.new
    expect(bike).to be_working
  end

  it { is_expected.to respond_to(:dock).with(1).argument }

  it { is_expected.to respond_to(:bikes) }

  it 'docks something' do
    expect(subject.dock(Bike.new).empty?).to eq false
  end

  it 'returns docked bikes' do
    expect(subject.dock(Bike.new)).to eq subject.bikes
  end

  it 'raises an error when there are no bikes available' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
  end

  it 'not to release broken bike' do
    bike = Bike.new
    subject.dock bike
    bike.report_broken
    expect { subject.release_bike}.to raise_error 'No bikes available'
  end
  it 'raises an error when user tries to dock a bike when bikes are at capacity' do
    expect { (DockingStation::DEFAULT_CAPACITY + 1).times{ subject.dock(Bike.new)}}.to raise_error 'no space for more bikes'
  end

  it 'accepts DEFAULT_CAPACITY argument' do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end

  it 'accepts capacity argument' do
    expect(DockingStation.new(25).capacity).to eq 25


end

end
