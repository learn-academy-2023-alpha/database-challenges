require 'rails_helper'

RSpec.describe Account, type: :model do
  it 'valid with the valid attributes' do
    leo = Account.create(username: 'leo13', password: '123456', email: 'leo@email.com')
    expect(leo).to be_valid
  end
  it 'require username, username cannot be empty' do
    leo = Account.create(password: '1234', email: 'leo@email.com')
    expect(leo.errors[:username]).to_not be_empty
  end
  it 'require password, password cannot be empty' do
    leo = Account.create(username: 'leo', email: 'leo@email.com')
    expect(leo.errors[:password]).to_not be_empty
  end
  it 'require email, email cannot be empty' do
    leo = Account.create(username: 'leo', password: '1234')
    expect(leo.errors[:email]).to_not be_empty
  end
  it 'username needs to be at least 5 characters long.' do
    leo = Account.create(username: 'leo', password: '123456', email: 'leo@email.com')
    expect(leo.errors[:username]).to_not be_empty
  end
  it 'username needs to be unique.' do
    leo = Account.create(username: 'yahya', password: '123456', email: 'leo@email.com')
    leo2 = Account.create(username: 'leo', password: '123456', email: 'leo@email.com')
    expect(leo.errors[:username]).to_not be_empty
  end

end
