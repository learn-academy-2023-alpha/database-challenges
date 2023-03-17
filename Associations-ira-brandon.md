Active Record Association Challenges.md

Setup
Create a new rails application and database
Create a model for owner

# An owner has a name and address, and can have multiple credit cards
rails g model Owner name:string adress:string credit_cards:string  

# Create a model for credit card
rails g model CreditCards number:integer expiration:integer owner:string

# A credit card has a number, an expiration date, and an owner
rails g model CreditCards number:integer expiration:integer owner:string



Challenges

# Create three owners and save them in the database
 Chad = Owner.find 1
Brit = Owner.find 2
Dave = Owner.find3

# Create a credit card in the database for each owner
3.2.0 :033 > Owner.find(1).update credit_cards:"123"


# Add two more credit cards to one of the owners


Stretch Challenge



## Add a credit limit to each card

