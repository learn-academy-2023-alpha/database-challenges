class Address < ApplicationRecord
    belongs_to :account
    validates :street_number, :city, :state, :zipcode, :account_id, :street_name,presence:true
end


  