# Banking Challenge
# Setup
# Create a new rails application and database
 - rails new bank -d postgresql -T
 - cd bank
 - rails db:create

# Create a model for owner
# An owner has a name and address, and can have multiple credit cards
- rails g model Owner name:string address:string credit_card:string
- rails db:migrate


# Create a model for credit card
# A credit card has a number, an expiration date, and an owner
- rails g model CreditCard number:integer experation_date:string owner_id:integer
- rails db:migrate

# Challenges

- rails c

# Create three owners and save them in the database

- Owner.create(name: 'Leo', address: 'Austin', credit_card: 'chase')
- Owner.create(name: 'Tammy', address: 'San Diego', credit_card: 'Capital One')
- Owner.create(name: 'Random', address: 'New York', credit_card: 'Discover')

# Create a credit card in the database for each owner

- leo = Owner.find(1)
- leo.credit_cards.create(number: 82734893, experation_date: 'June 2026')
- tammy = Owner.find(2)
- tammy.credit_cards.create(number: 98723453, experation_date: 'January 2028')
- random = Owner.find(3)
- random.credit_cards.create(number: 975991245, experation_date: 'July 2029')

# Add two more credit cards to one of the owners

- leo.credit_cards.create(number: 65431900, experation_date: 'May 2026')
- leo.credit_cards.create(number: 65432789, experation_date: 'December 2027')


- exit

# Stretch Challenge

# Add a credit limit to each card

- rails g migration add_limit_to_cards
- /migrate/ ... add_limit... 
    - add_column(:credit_cards, :limit, :integer)
- rails db:migrate

# Find the total credit extended to the owner with multiple credit cards
