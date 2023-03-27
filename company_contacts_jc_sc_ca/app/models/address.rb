class Address < ApplicationRecord
      belongs_to :account
      validates :street_number, :street_name, :city, :state, :zip, presence: true
      validates :street_number, uniqueness: {scope: [:street_name, :city, :zip], message: 'each account must have a different address'}, numericality: { message: 'Please, input numbers only', only_integer: true }
      validates :zip, numericality: { message: 'Please, input numbers only', only_integer: true }
end