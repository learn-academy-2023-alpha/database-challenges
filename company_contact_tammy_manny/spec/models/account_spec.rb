require 'rails_helper'

RSpec.describe Account, type: :model do
  it 'is not valid without a username' do 
    manny = Account.create password: 'name123', email: 'manny@gmail.com'
    expect(manny.errors[:username]).to_not be_empty
  end

  it 'is not valid without a password' do
    manny = Account.create username: 'manflo27', email: 'manny@gmail.com'
    expect(manny.errors[:password]).to_not be_empty
  end

  it 'is not valid without an email' do
    manny = Account.create username: 'manflo27', password: 'name123'
    expect(manny.errors[:email]).to_not be_empty
  end

  it 'is not valid if username is less than 5 characters' do
    manny = Account.create username: 'man', password: 'name123', email: 'manny@gmail.com'
    expect(manny.errors[:username]).to_not be_empty
  end

  it 'is not valid if username is not unique' do
    Account.create(username: 'manflo27', password: 'name123', email: 'manny@gmail.com')
    manny = Account.create(username: 'manflo27', password: 'name1234', email: 'manny@gmail.com')
    expect(manny.errors[:username][0]).to eq "has already been taken"
  end

  it 'is not valid if password is less than 6 characters' do
    manny = Account.create username: 'manflo27', password: 'name', email: 'manny@gmail.com'
    expect(manny.errors[:password]).to_not be_empty
  end

  it 'is not valid if password is not unique' do
    Account.create username: 'manflo29', password: 'name123', email: 'manny@gmail.com'
    manny = Account.create username: 'manflo27', password: 'name123', email: 'manny1@gmail.com'
    expect(manny.errors[:password]).to_not be_empty
  end

  # it 'is not valid if password does not include a number' do
  #   manny = Account.create username: 'manflo27', password: 'nameisman', email: 'manny1@gmail.com'
  #   expect(manny.errors[:password]).inc
  # end

end





