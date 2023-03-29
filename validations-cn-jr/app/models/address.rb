class Address < ApplicationRecord
    validates :street_number, :street_name, :city, :state, :zip_code, presence:true
    validates :street_number, :street_name, :zip_code, uniqueness: { scope: :account,
    message: "Must be unique" }
    validates :street_number, :zip_code, numericality: { only_integer: true, message: "Please input numbers only" } 
    belongs_to :account, optional: true
end
