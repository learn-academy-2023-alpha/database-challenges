class Account < ApplicationRecord
    has_many :address

    validates :username, :password, :email, presence: true
    validates :username, length: { minimum: 5 }
    validates :username, :password, uniqueness: true
    validates :password, length: { minimum: 6 }
    # validates_inclusion_of :password, :in => 0..99
    validate :password_contains_number

    def password_contains_number
        unless password =~ /\d/
        errors.add :password, "must contain at least one number"
        end
    end
end