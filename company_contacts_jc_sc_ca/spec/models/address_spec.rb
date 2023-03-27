require 'rails_helper'

RSpec.describe Address, type: :model do
      it 'is valid with valid attributes' do 
            account = Account.create(username: 'Johnny', password: '123abc', email: '123abc@yahoo.com')
            address = account.addresses.create(street_number: 123, street_name: 'Main St', city: 'San Diego', state: 'CA', zip: 12345)
            expect(address).to be_valid
      end

      it 'street number to be required' do
            account = Account.create(username: 'Johnny', password: '123abc', email: '123abc@yahoo.com')
            address = account.addresses.create(street_name: 'Main St', city: 'San Diego', state: 'CA', zip: 12345)
            expect(address.errors[:street_number]).to_not be_empty
      end

      it 'street name to be required' do
            account = Account.create(username: 'Johnny', password: '123abc', email: '123abc@yahoo.com')
            address = account.addresses.create(street_number: 123, city: 'San Diego', state: 'CA', zip: 12345)
            expect(address.errors[:street_name]).to_not be_empty
      end

      it 'city to be required' do
            account = Account.create(username: 'Johnny', password: '123abc', email: '123abc@yahoo.com')
            address = account.addresses.create(street_number: 123, street_name: 'Main St', state: 'CA', zip: 12345)
            expect(address.errors[:city]).to_not be_empty
      end

      it 'state to be required' do
            account = Account.create(username: 'Johnny', password: '123abc', email: '123abc@yahoo.com')
            address = account.addresses.create(street_number: 123, street_name: 'Main St', city: 'San Diego', zip: 12345)
            expect(address.errors[:state]).to_not be_empty
      end

      it 'zip to be required' do
            account = Account.create(username: 'Johnny', password: '123abc', email: '123abc@yahoo.com')
            address = account.addresses.create(street_number: 123, street_name: 'Main St', city: 'San Diego', state: 'CA')
            expect(address.errors[:zip]).to_not be_empty
      end

      it 'Address street_number, street_name, zip are unique for within an account' do 
            account = Account.create(username: 'Johnny', password: '123abc', email: '123abc@yahoo.com')
            account.addresses.create(street_number: 123, street_name: 'Main St', city: 'San Diego', state: 'CA', zip: 12345)
            address = account.addresses.create(street_number: 123, street_name: 'Main St', city: 'San Diego', state: 'CA', zip: 12345)
            expect(address.errors[:street_number]).to_not be_empty
      end

      it 'Address street_number and zip are numbers' do 
            account = Account.create(username: 'Johnny', password: '123abc', email: '123abc@yahoo.com')
            address = account.addresses.create(street_number: 'abc', street_name: 'Main St', city: 'San Diego', state: 'CA', zip: 'abc')
            expect(address.errors[:street_number]).to_not be_empty
            expect(address.errors[:zip]).to_not be_empty
      end

      it 'a custom error message' do 
            account = Account.create(username: 'Johnny', password: '123abc', email: '123abc@yahoo.com')
            address = account.addresses.create(street_number: 'abc', street_name: 'Main St', city: 'San Diego', state: 'CA', zip: 'abc')
            expect(address.errors[:street_number]).to include('Please, input numbers only')
            expect(address.errors[:zip]).to include('Please, input numbers only')
      end
end