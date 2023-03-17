As a developer, I have been tasked with creating a database model that will be used in a rolodex application. I want to ensure that the database behaves as expected and the necessary actions can be performed on the database instances.

Set Up

Create a new Rails app named 'rolodex_challenge'.
Create the database. The output in the terminal should look like this:
Created database 'rolodex_development'
Created database 'rolodex_test'

Generate a model called Person with a first_name, last_name, and phone. All fields should be strings.
Run a migration to set up the database.
Open up Rails console.


Actions

Add five family members into the Person table in the Rails console.
> Person.create()

Retrieve all the items in the database.
> Person.all
```ruby
[#<Person:0x00000001069fe398                                  
  id: 1,                                                      
  first_name: "Tien",                                         
  last_name: "Tran",                                          
  phone: "6190294736",                                        
  created_at: Thu, 16 Mar 2023 18:47:36.038776000 UTC +00:00, 
  updated_at: Thu, 16 Mar 2023 18:47:36.038776000 UTC +00:00>,
 #<Person:0x00000001069fe258                                  
  id: 2,                                                      
  first_name: "Jacob",                                        
  last_name: "Alexander",                                     
  phone: "6190294736",                                        
  created_at: Thu, 16 Mar 2023 18:48:13.359410000 UTC +00:00, 
  updated_at: Thu, 16 Mar 2023 18:48:13.359410000 UTC +00:00>,
 #<Person:0x00000001069fe118
  id: 3,
  first_name: "Tuan",
  last_name: "Tran",
  phone: "6190294736",
  created_at: Thu, 16 Mar 2023 18:48:27.755744000 UTC +00:00,
  updated_at: Thu, 16 Mar 2023 18:48:27.755744000 UTC +00:00>,
 #<Person:0x00000001069fdfd8
  id: 4,
  first_name: "Amy",
  last_name: "Alexander",
  phone: "6190294736",
  created_at: Thu, 16 Mar 2023 18:48:43.360757000 UTC +00:00,
  updated_at: Thu, 16 Mar 2023 18:48:43.360757000 UTC +00:00>,
 #<Person:0x00000001069fde98
  id: 5,
  first_name: "CC",
  last_name: "Maynard",
  phone: "6190294736",
  created_at: Thu, 16 Mar 2023 18:49:05.329849000 UTC +00:00,
  updated_at: Thu, 16 Mar 2023 18:49:05.329849000 UTC +00:00>] 
  ```


Add yourself to the Person table.
```ruby
#<Person:0x0000000106996400                                                                 
 id: 6,                                                                                     
 first_name: "Tammy",                                                                       
 last_name: "Tran",                                                                         
 phone: "7194729284",                                                                       
 created_at: Thu, 16 Mar 2023 18:51:36.447904000 UTC +00:00,                                
 updated_at: Thu, 16 Mar 2023 18:51:36.447904000 UTC +00:00>                                
3.2.0 :009 >
```

Retrieve all the entries that have the same last_name as you.
> Person.where(last_name: 'Tran')
``` ruby
[#<Person:0x0000000106afd208                                  
  id: 1,                                                      
  first_name: "Tien",                                         
  last_name: "Tran",                                          
  phone: "6190294736",                                        
  created_at: Thu, 16 Mar 2023 18:47:36.038776000 UTC +00:00, 
  updated_at: Thu, 16 Mar 2023 18:47:36.038776000 UTC +00:00>,
 #<Person:0x0000000106afd0c8                                  
  id: 3,                                                      
  first_name: "Tuan",                                         
  last_name: "Tran",                                          
  phone: "6190294736",                                        
  created_at: Thu, 16 Mar 2023 18:48:27.755744000 UTC +00:00,
  updated_at: Thu, 16 Mar 2023 18:48:27.755744000 UTC +00:00>,
 #<Person:0x0000000106afcf88
  id: 6,
  first_name: "Tammy",
  last_name: "Tran",
  phone: "7194729284",
  created_at: Thu, 16 Mar 2023 18:51:36.447904000 UTC +00:00,
  updated_at: Thu, 16 Mar 2023 18:51:36.447904000 UTC +00:00>]
```

Update the phone number of the last entry in the database.
> phone_number = Person.last
> phone_number.update(phone: '7291740182')
``` ruby
BEGIN
  Person Update (0.8ms)  UPDATE "people" SET "phone" = $1, "updated_at" = $2 WHERE "people"."id" = $3  [["phone", "7291740182"], ["updated_at", "2023-03-16 18:57:08.792919"], ["id", 6]]                                                                            
  TRANSACTION (0.7ms)  COMMIT
```


Retrieve the first_name of the third Person in the database.
> Person.find(3).first_name
    > "Tuan" 


Stretch Challenges

Update all the family members with the same last_name as you, to have the same phone number as you.
> same_last_name = Person.where(last_name: 'Alexander')
> same_last_name.update(phone: '12345')
``` ruby
[#<Person:0x00000001069fa518                                       
  id: 2,                                                           
  first_name: "Jacob",                                             
  last_name: "Alexander",                                          
  phone: "12345",                                                  
  created_at: Thu, 16 Mar 2023 18:48:13.359410000 UTC +00:00,      
  updated_at: Thu, 16 Mar 2023 20:07:35.962043000 UTC +00:00>,
 #<Person:0x00000001069fa3d8
  id: 4,
  first_name: "Amy",
  last_name: "Alexander",
  phone: "12345",
  created_at: Thu, 16 Mar 2023 18:48:43.360757000 UTC +00:00,
  updated_at: Thu, 16 Mar 2023 20:07:35.967193000 UTC +00:00>] 
```


Remove all family members that do not have your last_name.
> Person.where(last_name: 'Tran').destroy_all