# Banking Challenge
## Setup
* Create a new rails application and database
% rails new bank_app -d postgresql -T
% cd bank_app
% rails db:create

* Create a model for owner
* An owner has a name and address, and can have multiple credit cards
% rails g model Owner name:string address:string Credit_card_id:integer

* Create a model for credit card
* A credit card has a number, an expiration date, and an owner
% rails g model CreditCard number:integer expiration_date:string Owner_id:integer
% rails db:migrate

Realizing that the Credit_card_id shouldn't be in our Owner db, we created a migration:
% rails g migration remove_credit_card_from_owner

We also ran a migration to correct the casing for credit_card_id
% rails g migration correct_casing_owner_in_credit_card

We then went into the class files to make these updates:
class CreditCard < ApplicationRecord
      belongs_to :owner
end

class Owner < ApplicationRecord
      has_many :credit_cards
end

## Challenges
* Create three owners and save them in the database
We installed the Faker gem to create random data.

Inside of Gemfile:
# Use Faker to generate random entries
gem 'faker'

Inside console:
% bundle install

Inside rails console:
> 5.times do owner = Owner.create(name: Faker::Name.name, address: Faker::Address.full_address) end

* Create a credit card in the database for each owner

Inside rails console:
owner = Owner
(0..5).each do |i| 3.times do owner[i].credit_cards.create(number: Faker::Finance.credit_card, expiration_date: Faker::Business.credit_card_expiry_date) end end

* Add two more credit cards to one of the owners
## Stretch Challenge
* Add a credit limit to each card
* Find the total credit extended to the owner with multiple credit cards