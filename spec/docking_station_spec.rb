require "docking_station.rb"
#
describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  it "tests if bike is working" do
    bike = Bike.new
    expect(bike).to be_working
  end
end

describe DockingStation do
    it { is_expected.to respond_to(:dock).with(1).argument }

    it { is_expected.to respond_to(:bikes) }

    it 'docks something' do
      expect(subject.dock(Bike.new).empty?).to eq false
    end

  describe DockingStation do
    it 'returns docked bikes' do
      expect(subject.dock(Bike.new)).to eq subject.bikes
    end
  end
      describe '#release_bike' do
        it 'raises an error when there are no bikes available' do
        expect { subject.release_bike }.to raise_error 'No bikes available'
    end
      it 'raises an error when user tries to dock a bike when bikes are at capacity' do
        expect { 21.times{ subject.dock(Bike.new)}}.to raise_error 'no space for more bikes'
      end
  end
end
