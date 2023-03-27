require 'rails_helper'

RSpec.describe Account, type: :model do
  it 'is valid with valid attributes' do
    account = Account.create(username:'Johnny', password:'qwerty1', email:'john@mail.com')
    expect(account).to be_valid
  end
  it 'is not valid without username' do
    account = Account.create(password:'qwerty', email:'john@mail.com')
    expect(account.errors[:username]).to_not be_empty
  end
  it 'is not valid without password' do
    account = Account.create(username:'Johnny', email:'john@mail.com')
    expect(account.errors[:password]).to_not be_empty
  end
  it 'is not valid without email' do
    account = Account.create(username:'Johnny', password:'qwerty')
    expect(account.errors[:email]).to_not be_empty
  end
  it 'is not valid under 5 characters' do
    account = Account.create(username:'John', password:'qwerty', email: 'john@mail.com')
    expect(account.errors[:username]).to_not be_empty
  end
  it 'is not valid if username is duplicate' do
    Account.create(username:'John1', password:'qwerty13', email:'john@mail.com')
    account = Account.create(username:'John1', password:'qwerty12', email:'john@mail.com')
    expect(account.errors[:username]).to_not be_empty
  end
  it 'is not valid if password is not at least 6 characters' do
    account = Account.create(username:'John1', password:'qwert', email:'john@mail.com')
    expect(account.errors[:password]).to_not be_empty
  end
  it 'is not valid if password is duplicate' do
    Account.create(username:'John1', password:'qwerty', email:'john@mail.com')
    account = Account.create(username:'John1', password:'qwerty', email:'john@mail.com')
    expect(account.errors[:password]).to_not be_empty
  end
  it 'is not valid if password does not contain a number' do
    account = Account.create(username:'John1', password:'qwerty', email:'john@mail.com')
    expect(account.errors[:password]).to_not be_empty
  end
end