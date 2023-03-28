require 'rails_helper'

RSpec.describe Account, type: :model do
      it 'is valid with valid attributes' do 
            account = Account.create(username: 'Johnny', password: '123abc', email: '123abc@yahoo.com')
            expect(account).to be_valid
      end

      it 'username to be required' do
            account = Account.create(password: '123abc', email: '123abc@yahoo.com')
            expect(account.errors[:username]).to_not be_empty
      end

      it 'password to be required' do
            account = Account.create(username: 'Johnny', email: '123abc@yahoo.com')
            expect(account.errors[:password]).to_not be_empty
      end

      it 'email to be required' do
            account = Account.create(username: 'Johnny', password: '123abc')
            expect(account.errors[:email]).to_not be_empty
      end

      it 'every username to be at least 5 characters long' do
            account = Account.create(username: 'John', password: '123abc', email: '123abc@yahoo.com')
            expect(account.errors[:username]).to_not be_empty
      end

      it 'does not allow duplicate usernames' do
            Account.create(username: 'Johnny', password: '123abc', email: '123abc@yahoo.com')
            account = Account.create(username: 'Johnny', password: '123abc', email: '123abc@yahoo.com')
            expect(account.errors[:username]).to_not be_empty
      end

      it 'each password to be at least 6 characters long' do
            account = Account.create(username: 'John', password: '123', email: '123abc@yahoo.com')
            expect(account.errors[:password]).to_not be_empty
      end

      it 'does not allow duplicate passwords' do
            Account.create(username: 'Johnny', password: '123abc', email: '123abc@yahoo.com')
            account = Account.create(username: 'Michael', password: '123abc', email: '123abc@yahoo.com')
            expect(account.errors[:password]).to_not be_empty
      end

      it 'each password has at least one number' do 
            account = Account.create(username: 'Johnny', password: 'abcdefg', email: '123abc@yahoo.com')
            expect(account.errors[:password]).to_not be_empty
      end
end