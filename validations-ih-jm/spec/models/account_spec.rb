require 'rails_helper'

RSpec.describe Account, type: :model do
    it 'is valid with valid attributes' do
    account = Account.create(username: 'Developerguys', password: 'password', email:'devs@google.com')
    expect(account).to be_valid
  end
  it 'is not valid without username' do
    account = Account.create(password: 'password', email:'devs@google.com')
    expect(account.errors[:username]).to_not be_empty
  end
  it 'is not valid without password' do
    account = Account.create(username: 'Developerguys', email:'devs@google.com')
    expect(account.errors[:password]).to_not be_empty
  end
  it 'is not valid without email' do
    account = Account.create(username: 'Developerguys', password: 'password')
    expect(account.errors[:email]).to_not be_empty
  end
  it 'is not valid if username is less than 5 characters long' do
    account = Account.create(username: 'Deve', password: 'password', email:'devs@google.com')
    expect(account.errors[:username]).to_not be_empty
  end
  it 'is not valid if username is not unique' do
    account = Account.create(username: 'Developerguys', password: 'password', email:'devs@google.com')
    duplicate = Account.create(username: 'Developerguys', password: 'password', email:'devs@google.com')
    expect(duplicate.errors[:username]).to_not be_empty
  end
  it 'is not valid if password is less than 6 characters long' do
    account = Account.create(username: 'Developerguys', password: 'pass', email:'devs@google.com')
    expect(account.errors[:password]).to_not be_empty
  end
  it 'is not valid if password is not unique' do
    account = Account.create(username: 'Developerguys', password: 'password', email:'devs@google.com')
    duplicate = Account.create(username: 'Developerguys', password: 'password', email:'devs@google.com')
    expect(duplicate.errors[:password]).to_not be_empty
  end







end

