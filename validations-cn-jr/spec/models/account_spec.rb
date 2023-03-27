require 'rails_helper'

RSpec.describe Account, type: :model do
  it 'is valid with valid attributes' do
    account = Account.create(username:'John', password:'qwerty', email:'john@mail.com')
    expect(account).to be_valid
  end
  it 'is not valid without username' do
    account = Account.create(password:'qwerty', email:'john@mail.com')
    expect(account.errors[:username]).to_not be_empty
  end
  it 'is not valid without password' do
    account = Account.create(username:'John', email:'john@mail.com')
    expect(account.errors[:password]).to_not be_empty
  end
  it 'is not valid without email' do
    account = Account.create(username:'John', password:'qwerty')
    expect(account.errors[:email]).to_not be_empty
  end
end
