require 'rails_helper'

RSpec.describe Account, type: :model do
  it'a username is required'do
    account1 = Account.create  password: "0000000000"
    expect(account1.errors[:username]).to_not be_empty 
  end 
  it'a password is required' do
    account1 = Account.create 
    expect(account1.errors[:password]).to_not be_empty
  end
  it'a email is required' do
    account1 = Account.create password: "000000000"
    expect(account1.errors[:email]).to_not be_empty
  end
  it 'username must be at least 5 characters in length' do
    account1=Account.create username: 'bill', password: "00000000000"
    expect(account1.errors[:username]).to_not be_empty
  end
  it'username must be unique' do
    account1=Account.create username: 'xavier', password:'00000000' ,email:'xavierbarker18@aol.com'
    account2=Account.create username: 'xavier' , password: '000000000' , email: 'donttalketostrangersonline@yahoo.com'
    expect(account2.errors[:username]).to_not be_empty
  end
  it'password must be at least 6 characters' do
    account1=Account.create username:'jimbob' , password:'00000'
    expect(account1.errors[:password]).to_not be_empty
  end
  it'password must be unique' do
    account1=Account.create username: 'xavier', password:'000000' ,email:'xavierbarker18@aol.com'
    account2=Account.create username: 'xavier' , password: '000000' , email: 'donttalketostrangersonline@yahoo.com'
    expect(account2.errors[:password]).to_not be_empty
  end
  it'all fields on address are present' do
    address=Address.create street_number: 780, street_name: 'Harbor Cliff Way', city: 'Oceanside', state: 'CA'
    expect(address.errors).to_not be_empty
  end
  it'Each account password must have at least one number' do
    account1=Account.create username: 'ACriner', password: 'nonumber', email: 'aaron.criner@me.com'
    expect(account1.errors).to_not be_empty
  end
  it 'Each address must be unique' do
    account1=Account.create username: 'xavier', password:'000000' ,email:'xavierbarker18@aol.com'
    address1=Address.create street_number: 780, street_name: 'Harbor Cliff Way', city: 'Oceanside', state: 'CA', zip: 92054
    address2=Address.create street_number: 780, street_name: 'Harbor Cliff Way', city: 'Oceanside', state: 'CA', zip: 92054
    expect(address2.errors).to_not be_empty
  end
end
