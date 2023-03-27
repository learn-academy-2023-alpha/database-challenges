class Account < ApplicationRecord
    validates :username, :password, :email, presence:true
    validates :username, length: {minimum: 5}
    validates :username, :password, uniqueness: true
    validates :password, length: {minimum: 6}
    has_many :addresses
    validates :password, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }

end



  
# class MyValidator < ActiveModel::Validator
#     def validate(record)
#       unless record.password
#         record.errors.add :password, "Need a single number in password"
#       end
#     end
#   end
  
#   class Person
#     include ActiveModel::Validations
#     validates_with MyValidator
#   end
  
# class PasswordValidator < ActiveModel::EachValidator
#     def validate_each(record, attribute, value)
#       unless value =~ /[0-9]/i
#         record.errors.add attribute, (options[:password] || "is not a password")
#       end
#     end
#   end
  
#   class Account < ApplicationRecord
#     validates :password, presence: true, password: true
#   end
