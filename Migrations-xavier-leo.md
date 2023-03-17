<!-- Retrieve all the items in the database. -->

learnacademy@LEARNs-Air rolodex_challenge_app % rails generate model Person first_name:string last_name:string phone:string
      invoke  active_record
3.2.0 :004 > Person.create first_name:'Chris', last_name: 'Doe', phone: '860-486-8282'
  TRANSACTION (20.9ms)  BEGIN
  Person Create (0.7ms)  INSERT INTO "people" ("first_name", "last_name", "phone", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["first_name", "Chris"], ["last_name", "Doe"], ["phone", "860-486-8282"], ["created_at", "2023-03-16 20:10:21.243960"], ["updated_at", "2023-03-16 20:10:21.243960"]]            
  TRANSACTION (0.9ms)  COMMIT 
 =>                           
#<Person:0x000000010c315c88   
 id: 2,                       
 first_name: "Chris",         
 last_name: "Doe",            
 phone: "860-486-8282",       
 created_at: Thu, 16 Mar 2023 20:10:21.243960000 UTC +00:00,
3.2.0 :005 > Person.create first_name:'Jacob', last_name: 'Martinez', phone: '760-896-9232'
  TRANSACTION (0.2ms)  BEGIN
  Person Create (0.7ms)  INSERT INTO "people" ("first_name", "last_name", "phone", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["first_name", "Jacob"], ["last_name", "Martinez"], ["phone", "760-896-9232"], ["created_at", "2023-03-16 20:11:26.627815"], ["updated_at", "2023-03-16 20:11:26.627815"]]
  TRANSACTION (0.9ms)  COMMIT
 => 
#<Person:0x000000010c1cfc98
 id: 3,
 first_name: "Jacob",
 last_name: "Martinez",
 phone: "760-896-9232",
 created_at: Thu, 16 Mar 2023 20:11:26.627815000 UTC +00:00,
3.2.0 :006 > Person.create first_name:'Hector', last_name: 'Cuero', phone: '845-348-5562'
  TRANSACTION (25.3ms)  BEGIN
  Person Create (1.8ms)  INSERT INTO "people" ("first_name", "last_name", "phone", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["first_name", "Hector"], ["last_name", "Cuero"], ["phone", "845-348-5562"], ["created_at", "2023-03-16 20:12:32.790422"], ["updated_at", "2023-03-16 20:12:32.790422"]]
  TRANSACTION (2.1ms)  COMMIT
 => 
#<Person:0x00000001067e30e0
 id: 4,
 first_name: "Hector",
 last_name: "Cuero",
 phone: "845-348-5562",
 created_at: Thu, 16 Mar 2023 20:12:32.790422000 UTC +00:00,
 updated_at: Thu, 16 Mar 2023 20:13:29.690794000 UTC +00:00> 
3.2.0 :008 > Person.all 
  Person Load (0.7ms)  SELECT "people".* FROM "people"
 =>                                                                                         


<!-- Retrieve all the entries that have the same last_name as you. -->
<!-- > Person.where last_name: 'Cuero' -->
[#<Person:0x000000010c37cd20                                                                
  id: 1,                                                                                    
  first_name: "Johnny",                                                                     
  last_name: "Cuero",                                                                       
  phone: "9174502828",                                                                      
  created_at: Thu, 16 Mar 2023 20:09:11.596711000 UTC +00:00,                               
  updated_at: Thu, 16 Mar 2023 20:09:11.596711000 UTC +00:00>,                              
 #<Person:0x000000010c37cbe0                                                                
  id: 2,                                                                                    
  first_name: "Chris",                                                                      
  last_name: "Doe",                                                                         
  phone: "860-486-8282",                                                                    
  created_at: Thu, 16 Mar 2023 20:10:21.243960000 UTC +00:00,                               
  updated_at: Thu, 16 Mar 2023 20:10:21.243960000 UTC +00:00>,
 #<Person:0x000000010c37caa0
  id: 3,
  first_name: "Jacob",
  last_name: "Martinez",
  phone: "760-896-9232",
  created_at: Thu, 16 Mar 2023 20:11:26.627815000 UTC +00:00,
  updated_at: Thu, 16 Mar 2023 20:11:26.627815000 UTC +00:00>,
 #<Person:0x000000010c37c960
  id: 4,
  first_name: "Hector",
  last_name: "Cuero",
  phone: "845-348-5562",
  created_at: Thu, 16 Mar 2023 20:12:32.790422000 UTC +00:00,
  updated_at: Thu, 16 Mar 2023 20:12:32.790422000 UTC +00:00>,
 #<Person:0x000000010c37c820
  id: 5,
  first_name: "Xavier",
  last_name: "Barker",
  phone: "760-940-8777",
  created_at: Thu, 16 Mar 2023 20:13:29.690794000 UTC +00:00,
  updated_at: Thu, 16 Mar 2023 20:13:29.690794000 UTC +00:00>] 
3.2.0 :011 > Person.where last_name: 'Cuero' 
  Person Load (0.4ms)  SELECT "people".* FROM "people" WHERE "people"."last_name" = $1  [["last_name", "Cuero"]]                                                                                    
 =>                                                                                            
[#<Person:0x000000010c391180                                                                   
  id: 1,                                                                                       
  first_name: "Johnny",                                                                        
  last_name: "Cuero",                                                                          
  phone: "9174502828",                                                                         
  created_at: Thu, 16 Mar 2023 20:09:11.596711000 UTC +00:00,                                  
  updated_at: Thu, 16 Mar 2023 20:09:11.596711000 UTC +00:00>,                                 
 #<Person:0x000000010c391040                                                                   
  id: 4,                                                                                       
  first_name: "Hector",                                                                        
  last_name: "Cuero",                                                                          
  phone: "845-348-5562",                                                                       
  created_at: Thu, 16 Mar 2023 20:12:32.790422000 UTC +00:00,
  updated_at: Thu, 16 Mar 2023 20:12:32.790422000 UTC +00:00>,
 #<Person:0x000000010c390f00
  id: 6,
  first_name: "Leo",
  last_name: "Cuero",
  phone: "310-757-3871",
  created_at: Thu, 16 Mar 2023 20:16:11.254833000 UTC +00:00,
  updated_at: Thu, 16 Mar 2023 20:16:11.254833000 UTC +00:00>] 

<!-- Update the phone number of the last entry in the database. -->
 =>                                                           
#<Person:0x000000010c399380                                   
 id: 6,                                                       
 first_name: "Leo",                                           
 last_name: "Cuero",                                          
 phone: "512-737-5828",                                       
 created_at: Thu, 16 Mar 2023 20:16:11.254833000 UTC +00:00,  
 updated_at: Thu, 16 Mar 2023 20:25:38.760482000 UTC +00:00>  
3.2.0 :017 > 
                           
<!-- Retrieve the first_name of the third Person in the database. -->
 Person.find 3
  Person Load (1.1ms)  SELECT "people".* FROM "people" WHERE "people"."id" = $1 LIMIT $2  [["id", 3], ["LIMIT", 1]]                                                
 =>                                                           
#<Person:0x000000010c399740                                   
 id: 3,                                                       
 first_name: "Jacob",                                         
 last_name: "Martinez",                                       
 phone: "760-896-9232",                                       
 created_at: Thu, 16 Mar 2023 20:11:26.627815000 UTC +00:00,  
 updated_at: Thu, 16 Mar 2023 20:11:26.627815000 UTC +00:00>  
3.2.0 :018 > 
<!-- Update all the family members with the same last_name as you, to have the same phone number as you. -->
<!-- :027 > cueros.update(phone:'882-393-0098' ) -->
  TRANSACTION (8.0ms)  BEGIN
  Person Update (0.4ms)  UPDATE "people" SET "phone" = $1, "updated_at" = $2 WHERE "people"."id" = $3  [["phone", "882-393-0098"], ["updated_at", "2023-03-16 20:36:39.966841"], ["id", 1]]      
  TRANSACTION (1.2ms)  COMMIT                                                               
  TRANSACTION (0.2ms)  BEGIN                                                                
  Person Update (0.5ms)  UPDATE "people" SET "phone" = $1, "updated_at" = $2 WHERE "people"."id" = $3  [["phone", "882-393-0098"], ["updated_at", "2023-03-16 20:36:39.979861"], ["id", 4]]      
  TRANSACTION (0.6ms)  COMMIT                                                               
  TRANSACTION (0.5ms)  BEGIN                                                                
  Person Update (0.7ms)  UPDATE "people" SET "phone" = $1, "updated_at" = $2 WHERE "people"."id" = $3  [["phone", "882-393-0098"], ["updated_at", "2023-03-16 20:36:39.982868"], ["id", 6]]      
  TRANSACTION (0.4ms)  COMMIT                                                               
 =>                                                                                         
[#<Person:0x000000010c3967c0                                                                
  id: 1,                                                                                    
  first_name: "Johnny",
  last_name: "Cuero",
  phone: "882-393-0098",
  created_at: Thu, 16 Mar 2023 20:09:11.596711000 UTC +00:00,
  updated_at: Thu, 16 Mar 2023 20:36:39.966841000 UTC +00:00>,
 #<Person:0x000000010c396680
  id: 4,
  first_name: "Hector",
  last_name: "Cuero",
  phone: "882-393-0098",
  created_at: Thu, 16 Mar 2023 20:12:32.790422000 UTC +00:00,
  updated_at: Thu, 16 Mar 2023 20:36:39.979861000 UTC +00:00>,
 #<Person:0x000000010c396540
  id: 6,
  first_name: "Leo",
  last_name: "Cuero",
  phone: "882-393-0098",
  created_at: Thu, 16 Mar 2023 20:16:11.254833000 UTC +00:00,
  updated_at: Thu, 16 Mar 2023 20:36:39.982868000 UTC +00:00>] 
<!-- 3.2.0 :028 > 
Remove all family members that do not have your last_name. -->
everybody_else = Person.find 2,3,5 
<!-- :050 > chris.destroy -->
  <!-- TRANSACTION (14.3ms)  BEGIN
  Person Destroy (0.9ms)  DELETE FROM "people" WHERE "people"."id" = $1  [["id", 2]]
  TRANSACTION (2.1ms)  COMMIT                                         
 =>                                                                   
#<Person:0x000000010c394240                                           
 id: 2,                                                               
 first_name: "Chris",                                                 
 last_name: "Doe",                                                    
 phone: "860-486-8282",                                               
 created_at: Thu, 16 Mar 2023 20:10:21.243960000 UTC +00:00, 
 updated_at: Thu, 16 Mar 2023 20:10:21.243960000 UTC +00:00> 
3.2.0 :051 > 
                       -->
