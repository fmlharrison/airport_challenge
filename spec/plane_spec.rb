require 'plane'

describe Plane do
  subject(:plane) {described_class.new}

  describe '#status' do
    it {is_expected.to respond_to(:airborn?)}

    it 'should tell you if a plane is in the air' do
      allow(plane).to receive(:airborn?) {true}
      expect(plane.airborn?).to eq true
    end

    it 'should tell you is a plan is on the ground' do
      allow(plane).to receive(:airborn?) {false}
      expect(plane.airborn?).to eq false
    end
  end

  describe '#flying?' do
    it {is_expected.to respond_to(:flying)}
  end

  describe '#landed?' do
    it {is_expected.to respond_to(:landed)}
  end


end
