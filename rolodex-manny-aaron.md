learnacademy@LEARNs-MacBook-Air rolodex-challenge % rails db:create
Created database 'rolodex_challenge_development'
Created database 'rolodex_challenge_test'
learnacademy@LEARNs-MacBook-Air rolodex-challenge % rails generate model Person first_name:string last_name:string phone:string
      invoke  active_record
      create    db/migrate/20230316183730_create_people.rb
      create    app/models/person.rb
learnacademy@LEARNs-MacBook-Air rolodex-challenge % rails db:migrate
== 20230316183730 CreatePeople: migrating =====================================
-- create_table(:people)
   -> 0.0150s
== 20230316183730 CreatePeople: migrated (0.0152s) ============================

learnacademy@LEARNs-MacBook-Air rolodex-challenge % rails c
Loading development environment (Rails 7.0.4.3)
3.2.0 :001 > Person.create first_name: 'Manny', last_name: 'Flores', phone: '121
2221212'
  TRANSACTION (20.5ms)  BEGIN
  Person Create (2.6ms)  INSERT INTO "people" ("first_name", "last_name", "phone", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["first_name", "Manny"], ["last_name", "Flores"], ["phone", "1212221212"], ["created_at", "2023-03-16 18:42:05.924876"], ["updated_at", "2023-03-16 18:42:05.924876"]]                                                                              
  TRANSACTION (0.8ms)  COMMIT                                                   
 =>                                                                             
#<Person:0x000000010ca99130                                                     
 id: 1,                                                                         
 first_name: "Manny",                                                           
 last_name: "Flores",                                                           
 phone: "1212221212",                                                           
 created_at: Thu, 16 Mar 2023 18:42:05.924876000 UTC +00:00,                    
 updated_at: Thu, 16 Mar 2023 18:42:05.924876000 UTC +00:00> 
3.2.0 :002 > Person.create first_name: 'Billy', last_name: 'Jones', phone: '1234
567'
  TRANSACTION (11.5ms)  BEGIN
  Person Create (0.6ms)  INSERT INTO "people" ("first_name", "last_name", "phone", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["first_name", "Billy"], ["last_name", "Jones"], ["phone", "1234567"], ["created_at", "2023-03-16 18:43:01.483772"], ["updated_at", "2023-03-16 18:43:01.483772"]]
  TRANSACTION (3.6ms)  COMMIT
 => 
#<Person:0x000000010d071a58
 id: 2,
 first_name: "Billy",
 last_name: "Jones",
 phone: "1234567",
 created_at: Thu, 16 Mar 2023 18:43:01.483772000 UTC +00:00,
 updated_at: Thu, 16 Mar 2023 18:43:01.483772000 UTC +00:00> 
3.2.0 :003 > Person.create first_name: 'Aj', last_name: 'Smith', phone: '2345678
'
  TRANSACTION (9.0ms)  BEGIN
  Person Create (0.3ms)  INSERT INTO "people" ("first_name", "last_name", "phone", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["first_name", "Aj"], ["last_name", "Smith"], ["phone", "2345678"], ["created_at", "2023-03-16 18:43:47.635273"], ["updated_at", "2023-03-16 18:43:47.635273"]]
  TRANSACTION (0.7ms)  COMMIT
 => 
#<Person:0x00000001073f2bd8
 id: 3,
 first_name: "Aj",
 last_name: "Smith",
 phone: "2345678",
 created_at: Thu, 16 Mar 2023 18:43:47.635273000 UTC +00:00,
 updated_at: Thu, 16 Mar 2023 18:43:47.635273000 UTC +00:00> 
3.2.0 :004 > Person.create first_name:' Bob', last_name: 'Ace', phone: '3456789'

  TRANSACTION (14.9ms)  BEGIN
  Person Create (0.3ms)  INSERT INTO "people" ("first_name", "last_name", "phone", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["first_name", " Bob"], ["last_name", "Ace"], ["phone", "3456789"], ["created_at", "2023-03-16 18:45:20.327656"], ["updated_at", "2023-03-16 18:45:20.327656"]]
  TRANSACTION (0.4ms)  COMMIT                     
 =>                                               
#<Person:0x000000010c1bcd00                       
 id: 4,                                           
 first_name: " Bob",                              
 last_name: "Ace",
 phone: "3456789",
 created_at: Thu, 16 Mar 2023 18:45:20.327656000 UTC +00:00,
 updated_at: Thu, 16 Mar 2023 18:45:20.327656000 UTC +00:00> 
3.2.0 :005 > Person.create first_name:'Aaron', last_name: 'Criner', phone:'No'
  TRANSACTION (18.2ms)  BEGIN
  Person Create (0.4ms)  INSERT INTO "people" ("first_name", "last_name", "phone", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["first_name", "Aaron"], ["last_name", "Criner"], ["phone", "No"], ["created_at", "2023-03-16 18:46:03.773939"], ["updated_at", "2023-03-16 18:46:03.773939"]]      
  TRANSACTION (1.2ms)  COMMIT                                                   
 =>                                                                             
#<Person:0x000000010d1b6198                                                     
 id: 5,                                                                         
 first_name: "Aaron",                                                           
 last_name: "Criner",                              
 phone: "No",
 created_at: Thu, 16 Mar 2023 18:46:03.773939000 UTC +00:00,
 updated_at: Thu, 16 Mar 2023 18:46:03.773939000 UTC +00:00> 
3.2.0 :006 > Person.all
  Person Load (0.6ms)  SELECT "people".* FROM "people"
 =>                                                           
[#<Person:0x000000010d29dd40                                  
  id: 1,                                                      
  first_name: "Manny",                                        
  last_name: "Flores",                                        
  phone: "1212221212",                                        
  created_at: Thu, 16 Mar 2023 18:42:05.924876000 UTC +00:00, 
  updated_at: Thu, 16 Mar 2023 18:42:05.924876000 UTC +00:00>,
 #<Person:0x000000010d29dc00                                  
  id: 2,                                                      
  first_name: "Billy",                                        
  last_name: "Jones",                                         
  phone: "1234567",                                           
  created_at: Thu, 16 Mar 2023 18:43:01.483772000 UTC +00:00, 
  updated_at: Thu, 16 Mar 2023 18:43:01.483772000 UTC +00:00>,
 #<Person:0x000000010d29dac0
  id: 3,
  first_name: "Aj",
  last_name: "Smith",
  phone: "2345678",
  created_at: Thu, 16 Mar 2023 18:43:47.635273000 UTC +00:00,
  updated_at: Thu, 16 Mar 2023 18:43:47.635273000 UTC +00:00>,
 #<Person:0x000000010d29d980
  id: 4,
  first_name: " Bob",
  last_name: "Ace",
  phone: "3456789",
  created_at: Thu, 16 Mar 2023 18:45:20.327656000 UTC +00:00,
  updated_at: Thu, 16 Mar 2023 18:45:20.327656000 UTC +00:00>,
 #<Person:0x000000010d29d840
  id: 5,
  first_name: "Aaron",
  last_name: "Criner",
  phone: "No",
  created_at: Thu, 16 Mar 2023 18:46:03.773939000 UTC +00:00,
  updated_at: Thu, 16 Mar 2023 18:46:03.773939000 UTC +00:00>] 
3.2.0 :007 > Person.create first_name:'John', last_name:'Drake',phone:'no'
  TRANSACTION (0.2ms)  BEGIN
  Person Create (0.6ms)  INSERT INTO "people" ("first_name", "last_name", "phone", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["first_name", "John"], ["last_name", "Drake"], ["phone", "no"], ["created_at", "2023-03-16 18:48:07.997409"], ["updated_at", "2023-03-16 18:48:07.997409"]]
  TRANSACTION (0.7ms)  COMMIT                                 
 =>                                                           
#<Person:0x000000010d1bbe18                                   
 id: 6,                                                       
 first_name: "John",                                          
 last_name: "Drake",                                          
 phone: "no",                                                 
 created_at: Thu, 16 Mar 2023 18:48:07.997409000 UTC +00:00,  
 updated_at: Thu, 16 Mar 2023 18:48:07.997409000 UTC +00:00>  
3.2.0 :008 > Person.where last_name:'Flores'
  Person Load (0.3ms)  SELECT "people".* FROM "people" WHERE "people"."last_name" = $1  [["last_name", "Flores"]]                             
 =>                                                           
[#<Person:0x000000010d13f520                                  
  id: 1,                                                      
  first_name: "Manny",                                        
  last_name: "Flores",                                        
  phone: "1212221212",                                        
  created_at: Thu, 16 Mar 2023 18:42:05.924876000 UTC +00:00, 
  updated_at: Thu, 16 Mar 2023 18:42:05.924876000 UTC +00:00>] 
3.2.0 :009 > last= Person.find 6
  Person Load (0.5ms)  SELECT "people".* FROM "people" WHERE "people"."id" = $1 LIMIT $2  [["id", 6], ["LIMIT", 1]]                                             
 =>                                                                             
#<Person:0x000000010d298ac0                                                     
...                                                                             
3.2.0 :010 > last
 => 
#<Person:0x000000010d298ac0                                                     
 id: 6,                                                                         
 first_name: "John",                                                            
 last_name: "Drake",                                                            
 phone: "no",                                                                   
 created_at: Thu, 16 Mar 2023 18:48:07.997409000 UTC +00:00,                    
 updated_at: Thu, 16 Mar 2023 18:48:07.997409000 UTC +00:00>                    
3.2.0 :011 > last.phone = '99999999'
 => "99999999" 
3.2.0 :012 > last.save
  TRANSACTION (0.2ms)  BEGIN
  Person Update (0.3ms)  UPDATE "people" SET "phone" = $1, "updated_at" = $2 WHERE "people"."id" = $3  [["phone", "99999999"], ["updated_at", "2023-03-16 18:51:57.898124"], ["id", 6]]                                                         
  TRANSACTION (0.5ms)  COMMIT                                                   
 => true                                                                        
3.2.0 :013 > last
 => 
#<Person:0x000000010d298ac0                                                     
 id: 6,                                                                         
 first_name: "John",                                                            
 last_name: "Drake",                                                            
 phone: "99999999",                                                             
 created_at: Thu, 16 Mar 2023 18:48:07.997409000 UTC +00:00,
 updated_at: Thu, 16 Mar 2023 18:51:57.898124000 UTC +00:00> 

Person.where(last_name:Person.find(1).last_name).update_all(phone:'I love Rails')
  Person Load (0.6ms)  SELECT "people".* FROM "people" WHERE "people"."id" = $1 LIMIT $2  [["id", 1], ["LIMIT", 1]]
  Person Update All (1.2ms)  UPDATE "people" SET "phone" = $1 WHERE "people"."last_name" = $2  [["phone", "I love Rails"], ["last_name", "Criner"]]
 => 4                                                                                                               
3.2.0 :017 > Person.all
  Person Load (18.8ms)  SELECT "people".* FROM "people"
 =>                                                                                                                 
[#<Person:0x000000010adce118                                                                                        
  id: 4,                                                                                                            
  first_name: "Bill",                                                                                               
  last_name: "Pool",                                                                                                
  phone: "5309688584",                                                                                              
  created_at: Thu, 16 Mar 2023 20:31:39.231087000 UTC +00:00,                                                       
  updated_at: Thu, 16 Mar 2023 20:31:39.231087000 UTC +00:00>,                                                      
 #<Person:0x000000010adcdfd8                                                                                        
  id: 5,                                                                                                            
  first_name: "Mary",                                         
  last_name: "Pool",                                          
  phone: "5309698847",                                        
  created_at: Thu, 16 Mar 2023 20:31:50.732795000 UTC +00:00, 
  updated_at: Thu, 16 Mar 2023 20:31:50.732795000 UTC +00:00>,
 #<Person:0x000000010adcde98
  id: 1,
  first_name: "Aaron",
  last_name: "Criner",
  phone: "I love Rails",
  created_at: Thu, 16 Mar 2023 20:30:23.539615000 UTC +00:00,
  updated_at: Thu, 16 Mar 2023 20:30:23.539615000 UTC +00:00>,
 #<Person:0x000000010adcdd58
  id: 2,
  first_name: "Ashley",
  last_name: "Criner",
  phone: "I love Rails",
  created_at: Thu, 16 Mar 2023 20:30:41.775033000 UTC +00:00,
  updated_at: Thu, 16 Mar 2023 20:30:41.775033000 UTC +00:00>,
 #<Person:0x000000010adcdc18
  id: 3,
  first_name: "Robin",
  last_name: "Criner",
  phone: "I love Rails",
  created_at: Thu, 16 Mar 2023 20:31:01.505690000 UTC +00:00,
  updated_at: Thu, 16 Mar 2023 20:31:01.505690000 UTC +00:00>,
 #<Person:0x000000010adcdad8
  id: 6,
  first_name: "Sarah",
  last_name: "Criner",
  phone: "I love Rails",
  created_at: Thu, 16 Mar 2023 20:32:37.288911000 UTC +00:00,
  updated_at: Thu, 16 Mar 2023 20:33:48.013086000 UTC +00:00>] 