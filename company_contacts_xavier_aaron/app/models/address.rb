class Address < ApplicationRecord
    validates :street_number, :street_name, :city, :state, :zip, presence:true
    validates :street_number, :street_name, :zip, uniqueness: { scope: account}
end
