<!-- Create a new rails application and database
Create a model for owner
An owner has a name and address, and can have multiple credit cards
Create a model for credit card
A credit card has a number, an expiration date, and an owner

Challenges
Create three owners and save them in the database -->
```ruby
Owner.all
  Owner Load (0.5ms)  SELECT "owners".* FROM "owners"
 =>                                                                     
[#<Owner:0x000000010bcbd5c0                                  
  id: 1,                                                     
  name: "John",                                              
  address: "123 B Street",                                   
  created_at: Fri, 17 Mar 2023 18:33:59.046865000 UTC +00:00,
  updated_at: Fri, 17 Mar 2023 18:33:59.046865000 UTC +00:00>,
 #<Owner:0x000000010bcbd480                                  
  id: 2,                                                     
  name: "Marilyn",                                           
  address: "124 B Street",                                   
  created_at: Fri, 17 Mar 2023 18:34:41.260063000 UTC +00:00,
  updated_at: Fri, 17 Mar 2023 18:34:41.260063000 UTC +00:00>,
 #<Owner:0x000000010bcbd200                                  
  id: 3,
  name: "Mark",
  address: "127 B Street",
  created_at: Fri, 17 Mar 2023 18:35:10.592326000 UTC +00:00,
  updated_at: Fri, 17 Mar 2023 18:35:10.592326000 UTC +00:00>]
```

Create a credit card in the database for each owner
```ruby
CreditCard.all
  CreditCard Load (0.4ms)  SELECT "credit_cards".* FROM "credit_cards"
 =>                                                               
[#<CreditCard:0x000000010bcbc300                                  
  id: 1,                                                          
  owner_id: 1,                                                    
  created_at: Fri, 17 Mar 2023 18:38:39.524921000 UTC +00:00,     
  updated_at: Fri, 17 Mar 2023 18:38:39.524921000 UTC +00:00,     
  expiration_date: "04/27",                                       
  number: "12345678">,                                            
 #<CreditCard:0x000000010bcbc1c0                                  
  id: 2,                                                          
  owner_id: 2,                                                    
  created_at: Fri, 17 Mar 2023 18:40:33.557619000 UTC +00:00,     
  updated_at: Fri, 17 Mar 2023 18:40:33.557619000 UTC +00:00,     
  expiration_date: "02/28",                                       
  number: "45678912">,
 #<CreditCard:0x000000010bcbc080
  id: 3,
  owner_id: 3,
  created_at: Fri, 17 Mar 2023 18:41:50.420296000 UTC +00:00,
  updated_at: Fri, 17 Mar 2023 18:41:50.420296000 UTC +00:00,
  expiration_date: "01/25",
  number: "98765432">] 
  ```

Add two more credit cards to one of the owners
```ruby
#<CreditCard:0x000000010bcbc800
  id: 3,
  owner_id: 3,
  created_at: Fri, 17 Mar 2023 18:41:50.420296000 UTC +00:00,
  updated_at: Fri, 17 Mar 2023 18:41:50.420296000 UTC +00:00,
  expiration_date: "01/25",
  number: "98765432">,
 #<CreditCard:0x000000010bcbc6c0
  id: 5,
  owner_id: 3,
  created_at: Fri, 17 Mar 2023 18:45:18.336368000 UTC +00:00,
  updated_at: Fri, 17 Mar 2023 18:45:18.336368000 UTC +00:00,
  expiration_date: "04/26",
  number: "24679864">,
 #<CreditCard:0x000000010bcbc580
  id: 4,
  owner_id: 3,
  created_at: Fri, 17 Mar 2023 18:43:51.568528000 UTC +00:00,
  updated_at: Fri, 17 Mar 2023 18:47:50.603775000 UTC +00:00,
  expiration_date: "08/28",
  number: "95175368">]
``` 
Stretch Challenge
Add a credit limit to each card
```ruby
CreditCard.all
  CreditCard Load (0.4ms)  SELECT "credit_cards".* FROM "credit_cards"
 =>                                                               
[#<CreditCard:0x000000010a458980                                  
  id: 1,                                                          
  owner_id: 1,                                                    
  created_at: Fri, 17 Mar 2023 18:38:39.524921000 UTC +00:00,     
  updated_at: Fri, 17 Mar 2023 18:54:45.751926000 UTC +00:00,     
  expiration_date: "04/27",                                       
  number: "12345678",                                             
  credit_limit: "500">,                                           
 #<CreditCard:0x000000010a458840                                  
  id: 2,                                                          
  owner_id: 2,                                                    
  created_at: Fri, 17 Mar 2023 18:40:33.557619000 UTC +00:00,     
  updated_at: Fri, 17 Mar 2023 18:55:38.654866000 UTC +00:00,     
  expiration_date: "02/28",
  number: "45678912",
  credit_limit: "1000">,
 #<CreditCard:0x000000010a458700
  id: 3,
  owner_id: 3,
  created_at: Fri, 17 Mar 2023 18:41:50.420296000 UTC +00:00,
  updated_at: Fri, 17 Mar 2023 18:56:06.496907000 UTC +00:00,
  expiration_date: "01/25",
  number: "98765432",
  credit_limit: "250">,
 #<CreditCard:0x000000010a4585c0
  id: 4,
  owner_id: 3,
  created_at: Fri, 17 Mar 2023 18:43:51.568528000 UTC +00:00,
  updated_at: Fri, 17 Mar 2023 18:57:01.246453000 UTC +00:00,
  expiration_date: "08/28",
  number: "95175368",
  credit_limit: "750">,
 #<CreditCard:0x000000010a458480
  id: 5,
  owner_id: 3,
  created_at: Fri, 17 Mar 2023 18:45:18.336368000 UTC +00:00,
  updated_at: Fri, 17 Mar 2023 18:57:32.094205000 UTC +00:00,
  expiration_date: "04/26",
  number: "24679864",
  credit_limit: "1000">] 
```

Find the total credit extended to the owner with multiple credit cards