class MyValidator < ActiveModel::Validator
    def validate(record)
      unless record.password =~ /\d/
        record.errors.add(:password, "Please, include an integer to your password")
      end
    end
end

class Account < ApplicationRecord
    include ActiveModel::Validations
    validates_with MyValidator
    validates :username, :password, :email, presence: true
    validates :username, length: {minimum: 5}
    validates :username, uniqueness: true
    validates :password, length: {minimum: 6}
    validates :password, uniqueness: true
  
end

