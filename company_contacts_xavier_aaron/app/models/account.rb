
def password_must_contain_number
    unless self.password =~ /\d/
       self.errors.add(:password, "password must include a number")
   end
end 


class Account < ApplicationRecord
    validates :username, :password, :email, presence:true 
    validates :username, length:{ minimum: 5 }
    validates :username, uniqueness:true
    validates :password, length: { minimum: 6}
    validates :password, uniqueness:true
    validate :password_must_contain_number
end



# class PasswordValidator < ActiveModel::EachValidator
#     def validate_each(record, attribute, value)
#         unless value =~ /\d/
#             record.errors.add attribute, (options[:message] || "Password must include a number")
#         end
#     end
# end    


# if using this method, this line needs to be in the class 
# validates :password, password: true