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

    it { is_expected.to respond_to(:bike) }

    it 'docks something' do
      bike = Bike.new
      expect(subject.dock(bike)).to eq bike
    end

  describe DockingStation do
    it 'returns docked bikes' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bike).to eq bike
    end
  end
      describe '#release_bike' do
        it 'raises an error when there are no bikes available' do
        expect { subject.release_bike }.to raise_error 'No bikes available'
    end
      it 'raises an error when user tries to dock a bike when bikes are at capacity' do
        expect { 2.times{ subject.dock(Bike.new)}}.to raise_error 'no space for more bikes'
      end
  end
end
