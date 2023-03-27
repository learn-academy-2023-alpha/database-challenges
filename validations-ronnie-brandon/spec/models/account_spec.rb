require 'rails_helper'
RSpec.describe Account, type: :model do 
  # it { should have_many(:Address) } do
  it 'is valid with valid attributes' do
    account = Account.create(username: 'ronnie', password: 'password', email: 'thisemail@gmail.com')
    expect(account).to be_valid
  # end
  end

  it 'is not valid without a username' do
    account = Account.create(password: 'password', email: 'thisemail@gmail.com')
    expect(account.errors[:username]).to_not be_empty
  end

  it 'is not valid without a password' do
    account = Account.create(username: 'ronnie', email: 'thisemail@gmail.com')
    expect(account.errors[:password]).to_not be_empty
  end

  it 'is not valid without an email' do
    account = Account.create(username: 'ronnie', password: 'password',)
    expect(account.errors[:email]).to_not be_empty
  end

  it 'is not valid if username is less than 5 characters' do 
    account = Account.create(username: 'ron', password: 'password', email: 'thisemail@gmail.com')
    expect(account.errors[:username]).to_not be_empty
  end

  it 'does not allow duplicate usernames' do
    Account.create(username: 'ronnie', password: 'password', email: 'thisemail@gmail.com')
    account = Account.create(username: 'ronnie', password: 'password', email: 'thisemail@gmail.com')
    expect(account.errors[:username]).to_not be_empty
  end

  it 'is not valid if password is less than 6 characters' do 
    account = Account.create(username: 'ronnie', password: 'pass', email: 'thisemail@gmail.com')
    expect(account.errors[:password]).to_not be_empty
  end

  it 'does not allow duplicate passwords' do
    Account.create(username: 'ronnie', password: 'password', email: 'thisemail@gmail.com')
    account = Account.create(username: 'ronnie', password: 'password', email: 'thisemail@gmail.com')
    expect(account.errors[:password]).to_not be_empty
  end
end


