require 'rails_helper'

RSpec.describe Address, type: :model do 
  # it { should belong_to(:Account) }
  it 'is valid with valid attributes' do 
    address = Address.create(street_number: 123, street_name: "main", city: "city", state: "state", zip: 123456)
    expect(address).to be_valid
  end
end