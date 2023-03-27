class PasswordValidator < ActiveModel::EachValidator
    def validate_each(record,attribute,value)
        unless value =~ /\d/
            record.errors.add attribute, (options[:messege] || "password must include a number")
        end 
    end
end
class Account < ApplicationRecord
    has_many :addresses
    validates :username, :password, :email, presence: true
    validates :username, length: { minimum: 5 }
    validates :password, length: { minimum: 6 }
    validates :username, :password, uniqueness: true
    validates :password, password: true
    
end

