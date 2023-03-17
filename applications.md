Create a new rails application and database

Create a model for owner

An owner has a name and address, and can have multiple credit cards
```
rails g model Owner name:string address:string    
      invoke  active_record
      create    db/migrate/20230317181541_create_owners.rb
      create    app/models/owner.rb
```
Create a model for credit card
```
rails g model CreditCard number:integer expiration_
date:string
      invoke  active_record
      create    db/migrate/20230317181859_create_credit_cards.rb
      create    app/models/credit_card.rb
```
A credit card has a number, an expiration date, and an owner
Challenges
```
ronnie.credit_cards.create(number:12, expiration_date:'date')
```
Create three owners and save them in the database
```
id: 1,                                                      
 name: "Ronnie",                                             
 address: "Random", 

id: 2,
 name: "Cj",
 address: "Random",

 id: 1,                                                     
  name: "Ronnie",                                            
  address: "Random",    
  ```
Create a credit card in the database for each owner
Add two more credit cards to one of the owners

Stretch Challenge
Add a credit limit to each card
Find the total credit extended to the owner with multiple credit cards

For some reason my terminal kept deleting the lines of code I was typing in after I would hit enter as well as previous outputs so I don't have much to show for each quesstion.