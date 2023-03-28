require 'rails_helper'

RSpec.describe Address, type: :model do
  it 'valid with the valid attributes' do
    leo = Address.create(street_number: 1234, street_name: 'YahyaYah', city: 'yahya', state: 'CA', zip: 90410, account_id: 1)
    expect(leo).to be_valid
  end
end
