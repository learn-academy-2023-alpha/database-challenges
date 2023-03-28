class Address < ApplicationRecord
    validates :street_name, :street_number, :zip uniqueness: { scope: :account_id,  }
end
