require './lib/boat'
require './lib/renter'


describe 'initialize' do
  it 'exits' do
    renter = Renter.new("Patrick Star", "4242424242424242")
    renter.name
    renter.credit_card_number
  end
end