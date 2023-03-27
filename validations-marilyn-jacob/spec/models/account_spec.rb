require 'rails_helper'

RSpec.describe Account, type: :model do
  it 'is not valid without a username' do
    account = Account.create(password: 'password', email: 'name@gmail.com')
    expect(account).to_not be_valid
  end

  it 'is not valid without a password' do
    account = Account.create(username: 'username', email: 'name@gmail.com')
    expect(account).to_not be_valid
  end

  it 'is not valid without a email' do
    account = Account.create(username: 'username', password: 'password')
    expect(account).to_not be_valid
  end
  
  it 'is not valid without username having a minimum of 5 characters' do 
    account = Account.create(username: 'user', password: 'password', email: 'name@gmail.com')
    expect(account.errors[:username]).to_not be_empty
  end

  it 'is not valid if the username is not unique' do
    account = Account.create(username: 'username', password: 'password', email: 'name@gmail.com')
    account_1 = Account.create(username: 'username', password: 'password', email: 'name@gmail.com')
    expect(account_1).to_not be_valid
  end

  it 'is not valid without password having a minimum of 6 characters' do 
    account = Account.create(username: 'username', password: 'pass', email: 'name@gmail.com')
    expect(account.errors[:password]).to_not be_empty
  end

  it 'is not valid if the password is not unique' do
    account = Account.create(username: 'username', password: 'password', email: 'name@gmail.com')
    account_1 = Account.create(username: 'usernam', password: 'password', email: 'name@gmail.com')
    expect(account_1).to_not be_valid
  end
end
