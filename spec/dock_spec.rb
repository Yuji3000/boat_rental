require './lib/dock'
require './lib/renter'
require './lib/boat'


describe '#initialize' do
  it 'exits' do
    dock = Dock.new("The Rowing Dock", 3)
    dock.name
    expect(dock.name).to eq("The Rowing Dock")
    dock.max_rental_time
    expect(dock.max_rental_time).to eq(3)
  end

  describe 'rent' do
    it 'rents boats to renters' do
      dock = Dock.new("The Rowing Dock", 3)
      kayak_1 = Boat.new(:kayak, 20)
      kayak_2 = Boat.new(:kayak, 20)
      sup_1 = Boat.new(:standup_paddle_board, 15)
      patrick = Renter.new("Patrick Star", "4242424242424242")
      eugene = Renter.new("Eugene Crabs", "1313131313131313")
      dock.rent(kayak_1, patrick)
      dock.rent(kayak_2, patrick)
      dock.rent(sup_1, eugene)
      dock.rental_log
      expect(dock.rental_log).to eq({kayak_1 => patrick, kayak_2 => patrick, sup_1 => eugene })
    end
  end
end