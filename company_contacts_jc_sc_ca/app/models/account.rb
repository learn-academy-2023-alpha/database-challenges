class PasswordValidator < ActiveModel::EachValidator
      def validate_each(record, attribute, value)
        unless value =~ /\d/
          record.errors.add attribute, (options[:message] || "must contain a number")
        end
      end
end

class Account < ApplicationRecord
      validates :username, presence: true, length: {minimum: 5}, uniqueness: true
      validates :password, presence: true, length: {minimum: 5}, uniqueness: true, password: true
      validates :email, presence: true

      has_many :addresses
end