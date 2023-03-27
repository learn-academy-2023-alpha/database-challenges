require 'rails_helper'

RSpec.describe Address, type: :model do
    it 'is valid with valid attributes' do
        address = Address.create(street_number: 1234, street_name: 'something simple ave.', city:'The Big Orange', state: 'AA', zip: 11111)
        expect(address).to be_valid
    end

end
