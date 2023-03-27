require 'rails_helper'

RSpec.describe Address, type: :model do
  it 'is not valid without a street number' do 
    learn_address = Address.create street_name: 'Ivy', city: 'San Diego', state: 'CA', zip: 91902
    expect(learn_address.errors[:street_number]).to_not be_empty
  end

  it 'is not valid without a street name' do 
    learn_address = Address.create street_number: 729, city: 'San Diego', state: 'CA', zip: 91902
    expect(learn_address.errors[:street_name]).to_not be_empty
  end

  it 'is not valid without a city' do 
    learn_address = Address.create street_number: 729, street_name: 'Ivy', state: 'CA', zip: 91902
    expect(learn_address.errors[:city]).to_not be_empty
  end

  it 'is not valid without a state' do 
    learn_address = Address.create street_number: 729, street_name: 'Ivy', city: 'San Diego', zip: 91902
    expect(learn_address.errors[:state]).to_not be_empty
  end

  it 'is not valid without a zip' do 
    learn_address = Address.create street_number: 729, street_name: 'Ivy', city: 'San Diego', state: 'CA'
    expect(learn_address.errors[:zip]).to_not be_empty
  end

end
