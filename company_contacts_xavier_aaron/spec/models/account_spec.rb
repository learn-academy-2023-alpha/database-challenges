require 'rails_helper'

RSpec.describe Account, type: :model do
  it'a username is required'do
    account1 = Account.create  
    expect(account1.errors[:username]).to_not be_empty 
  end 
  it'a password is required' do
    account1 = Account.create
    expect(account1.errors[:password]).to_not be_empty
  end
  it'a email is required' do
    account1 = Account.create
    expect(account1.errors[:email]).to_not be_empty
  end
  it 'username must be at least 5 characters in length' do
    account1=Account.create username: 'bill'
    expect(account1.errors[:username]).to_not be_empty
  end
  it'username must be unique' do
    account1=Account.create username: 'xavier', password:'sdlearn123' ,email:'xavierbarker18@aol.com'
    account2=Account.create username: 'xavier' , password: 'sddontlearn899' , email: 'donttalketostrangersonline@yahoo.com'
    expect(account2.errors[:username]).to_not be_empty
  end
  it'password must be at least 6 characters' do
    account1=Account.create username:'jimbob' , password:'12345'
    expect(account1.errors[:password]).to_not be_empty
  end
  it'password must be unique' do
    account1=Account.create username: 'xavier', password:'sdlearn123' ,email:'xavierbarker18@aol.com'
    account2=Account.create username: 'xavier' , password: 'sdlearn123' , email: 'donttalketostrangersonline@yahoo.com'
    expect(account2.errors[:password]).to_not be_empty
  end
end
