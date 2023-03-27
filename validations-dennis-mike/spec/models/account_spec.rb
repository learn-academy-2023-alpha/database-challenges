require 'rails_helper'

RSpec.describe Account, type: :model do
  it 'is not valid without username, password, and email.' do
    account1 = Account.create(username:'dennis', password:'Aearns', email:'dennis@learn.com')
    expect(account1).to be_valid
  end

  # it 'is not valid email.' do
  #   account1 = Account.create(username:'dennis', password:'Aearns')
  #   expect(account1).to be_valid
  # end

  # it 'is not valid without a password' do
  #   account1 = Account.create(username:'dennis', email:'dennis@learn.com')
  #   expect(account1).to be_valid
  # end
  
  it 'is not valid if username is less than 5 characters' do
    account1 = Account.create(username:'des', password:'learn', email:'dennis@learn.com')
    expect(account1.errors[:username]).to_not be_empty
  end

  it 'does not allow duplicate usernames' do
    Account.create(username:'dennis', password:'learns', email:'dennis@learn.com')
    account1 = Account.create(username:'camel20', password:'learns', email:'dennis@learn.com')
    expect(account1.errors[:username]).to_not be_empty
  end

  it 'is not valid if password is less than 6 characters' do
    account2 = Account.create(username:'Michael', password:'lea', email:'Mike@learn.com')
    expect(account2.errors[:password]).to_not be_empty
  end

  it 'does not allow duplicate passwords' do
    Account.create(username:'Michael', password:'lea', email:'Mike@learn.com')
    account2 = Account.create(username:'Michael', password:'lea', email:'Mike@learn.com')
    expect(account2.errors[:password]).to_not be_empty
  end

  it 'is not valid without street number' do
    account3 = Address.create(city:'San Diego', state:'CA', zipcode: 91910, street_name:'peanut ave')
    expect(account3.errors[:street_number]).to_not be_empty
  end

  it 'is not valid without city' do
  account3 = Address.create(street_number: 80, state:'CA', zipcode: 91910, street_name:'peanut ave')
    expect(account3.errors[:city]).to_not be_empty
  end

  it 'is not valid without state' do
    account3 = Address.create(street_number: 80, city:'San Diego', zipcode: 91910, street_name:'peanut ave')
      expect(account3.errors[:state]).to_not be_empty
  end

  it 'is not valid without zipcode' do
    account3 = Address.create(street_number: 80, city:'San Diego', state:'CA', street_name:'peanut ave')
      expect(account3.errors[:zipcode]).to_not be_empty
  end
  it 'is not valid without street name' do
    account3 = Address.create(street_number: 80, city:'San Diego', zipcode: 91910, state:'CA')
      expect(account3.errors[:street_name]).to_not be_empty
  end


  it 'is not valid if password does not have at least 1 number' do
    account4 = Account.create(username:'peanut', password:'hellos', email:'learn@learn.com')
      expect(account4.errors[:password]).to_not be_empty
  end
end
