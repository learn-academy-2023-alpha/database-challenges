class Account < ApplicationRecord
    # include ActiveModel::Validator
    # validates_with MyValidator

    has_many :addresses

    validates :username, :password, :email, presence: true

    validates :username, length: { minimum: 5 }

    validates :username, :password, uniqueness: true

    validates :password, length: { minimum: 6 }

    # validates_presence_of :password
    # validate :include_number
    # private
    # def include_number
    #     password.errors.add :password, "Need password to include at least 1 number"
    # end

 
    # class MyValidator < ActiveModel::Validator
    #     def validate(record)
    #       unless record.password.include_number?
    #         record.errors.add :password, "Need password that includes a number"
    #       end
    #     end
    #   end

    #   class Account
    #     include ActiveModel::Validations
    #     validates_with MyValidator
    #   end

end


