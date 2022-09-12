require './lib/boat'
require './lib/renter'
require 'rspec'

describe 'initialize' do
  it 'exists' do
    kayak = Boat.new(:kayak, 20)   
    kayak.type
    expect(kayak.type).to eq(:kayak)
    kayak.price_per_hour
    expect(kayak.price_per_hour).to eq(20)
  end
  

  describe 'add_hour' do
    it 'adds hours' do
      kayak = Boat.new(:kayak, 20)
      kayak.hours_rented
      expect(kayak.hours_rented).to eq(0)
      kayak.add_hour
      kayak.add_hour
      kayak.add_hour
      kayak.hours_rented
      expect(kayak.hours_rented).to eq(3)
    end
  end
end


