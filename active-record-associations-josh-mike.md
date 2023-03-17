Banking Challenge
Setup
Create a new rails application and database
Create a model for owner
An owner has a name and address, and can have multiple credit cards
rails g model Owner name:string address:string 

Create a model for credit card
A credit card has a number, an expiration date, and an owner
rails g model CreditCard number:integer expiration_date:string owner_id:integer

Challenges
Create three owners and save them in the database
Owner.create(name: 'Tom', address: '123 Hamshire Ave Crystal, MN 55555')

Owner.create(name: 'Bob', address: '321 Florida Ave Anchorage, AK 66666')

Owner.create(name: 'Jim', address: '456 Alabama Ave NYC, New York 77777')

Create a credit card in the database for each owner
Add two more credit cards to one of the owners
CreditCard.create(number: 1122334455667777, expiration_date: '01/27/2023', owner_id: 1)

CreditCard.create(number: 1122334455668888, expiration_date: '01/28/2023', owner_id: 2)

CreditCard.create(number: 1122334455669999, expiration_date: '01/29/2023', owner_id: 3)

We discovered data type Integer has a max value of 4 bytes(10 digits) so we wanted to replicate a true CC number by having 16 values by making a migration to change the field to a bigInt

rails g migration update_data_type_from_int_to_big_int_to_owner
rails db:migrate

Inside our migration file:
change_column :credit_cards, :number, :bigint

Stretch Challenge
Add a credit limit to each card
Find the total credit extended to the owner with multiple credit cards