require 'rails_helper'

RSpec.describe Address, type: :model do
  it 'is valid with valid attributes' do
    address = Address.create(street_number: 123, street_name:'alpha street', city:'san diego', state:'california', zip_code: 92069)
    expect(address).to be_valid
  end
  it 'is valid with with no duplicates' do
    Address.create(street_number: 123, street_name:'alpha street', city:'san diego', state:'california', zip_code: 92069)
    address2 = Address.create(street_number: 123, street_name:'alpha street', city:'san diego', state:'california', zip_code: 92069)
    expect(address2.errors[:street_number]).to_not be_empty
    expect(address2.errors[:street_name]).to_not be_empty
    expect(address2.errors[:zip_code]).to_not be_empty
  end
  it 'is valid with numbers for street number and zip code' do
    address = Address.create(street_number: 'hello', street_name:'alpha street', city:'san diego', state:'california', zip_code: 'hello')
    expect(address.errors[:street_number]).to_not be_empty
    expect(address.errors[:zip_code]).to_not be_empty
  end
end
