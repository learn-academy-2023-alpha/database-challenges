Banking Challenge
Setup
Create a new rails application and database
Create a model for owner
An owner has a name and address, and can have multiple credit cards
Create a model for credit card
A credit card has a number, an expiration date, and an owner
Challenges
Create three owners and save them in the database
Create a credit card in the database for each owner

CreditCard.create number:'985427389098, 081', expiration:'12/24', o
wner_id:1

aaron.credit_cards.create number:'985427389098, 081', expiration:'1
2/24' 


Add two more credit cards to one of the owners
Stretch Challenge
Add a credit limit to each card
Find the total credit extended to the owner with multiple credit cards

#<CreditCard:0x000000010908bb00                                             
  id: 2,                                                                     
  number: "985427389098, 081",                                               
  expiration: "12/24",                                                       
  created_at: Fri, 17 Mar 2023 18:41:29.074306000 UTC +00:00,                
  updated_at: Fri, 17 Mar 2023 18:41:29.074306000 UTC +00:00,                
  owner_id: 1,                                                               
  credit_limit: nil>,                                                        
 #<CreditCard:0x00000001092828a0                                             
  id: 3,                                                                     
  number: "73453448391 11/25",                                               
  expiration: "12/93",                                                       
  created_at: Fri, 17 Mar 2023 18:51:30.213051000 UTC +00:00,                
  updated_at: Fri, 17 Mar 2023 18:51:30.213051000 UTC +00:00,
  owner_id: 2,
  credit_limit: nil>,
 #<CreditCard:0x0000000109282800
  id: 4,
  number: "*911*  09/08/22",
  expiration: "9/22",
  created_at: Fri, 17 Mar 2023 18:53:43.771468000 UTC +00:00,
  updated_at: Fri, 17 Mar 2023 18:53:43.771468000 UTC +00:00,
  owner_id: 3,
  credit_limit: nil>,
 #<CreditCard:0x0000000109282760
  id: 5,
  number: "44971934  10/87",
  expiration: "09/85",
  created_at: Fri, 17 Mar 2023 18:55:42.742724000 UTC +00:00,
  updated_at: Fri, 17 Mar 2023 18:55:42.742724000 UTC +00:00,
  owner_id: 1,
  credit_limit: nil>,
 #<CreditCard:0x00000001092826c0
  id: 6,
  number: "Gov1990 1775",
  expiration: "indefinite",
  created_at: Fri, 17 Mar 2023 18:56:22.205270000 UTC +00:00,
  updated_at: Fri, 17 Mar 2023 18:56:22.205270000 UTC +00:00,
  owner_id: 1,
  credit_limit: nil>] 

3.2.0 :002 > Owner.all
  Owner Load (16.5ms)  SELECT "owners".* FROM "owners"
 =>                                                                             
[#<Owner:0x0000000109762eb0                                                     
  id: 1,                                                                        
  name: "Aaron",                                                                
  address: "780 Harbor Cliff Way 167",                                          
  created_at: Fri, 17 Mar 2023 18:21:29.125324000 UTC +00:00,                   
  updated_at: Fri, 17 Mar 2023 18:21:29.125324000 UTC +00:00>,                  
 #<Owner:0x0000000109260d40                                                     
  id: 2,                                                                        
  name: "Cornelius",                                                            
  address: "855 Peanut Dr.",                                                    
  created_at: Fri, 17 Mar 2023 18:22:13.543046000 UTC +00:00,                   
  updated_at: Fri, 17 Mar 2023 18:22:13.543046000 UTC +00:00>,                  
 #<Owner:0x0000000109260ca0                                                     
  id: 3,
  name: "Queen Elizabeth ||",
  address: "England",
  created_at: Fri, 17 Mar 2023 18:22:49.322520000 UTC +00:00,
  updated_at: Fri, 17 Mar 2023 18:22:49.322520000 UTC +00:00>] 
3.2.0 :003 > 

