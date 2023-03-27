class NumberValidator < ActiveModel::Validator
    def validate(record)
        unless record.password =~ /[0-9]/
            record.errors.add :password, "Need a password that includes a number"
        end
    end
end
class Account < ApplicationRecord

    validates :username, :password, :email, presence: true
    validates :username, length: { minimum: 5 }
    validates :username, :password, uniqueness: true
    validates :password, length: { minimum: 6 }
    has_many :address
    validates_associated :address
    include ActiveModel::Validations
    validates_with NumberValidator
end
