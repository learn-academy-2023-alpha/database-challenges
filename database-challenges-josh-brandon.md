As a developer, I have been tasked with creating a database model that will be used in a rolodex application. I want to ensure that the database behaves as expected and the necessary actions can be performed on the database instances.

Set Up

✅ Create a new Rails app named 'rolodex_challenge'.

✅ Create the database. The output in the terminal should look like this:

✅  Created database 'rolodex_development'

✅  Created database 'rolodex_test'

✅ Generate a model called Person with a first_name, last_name, and phone. All fields should be strings.

✅ Run a migration to set up the database.

✅ Open up Rails console.

Actions

✅ Add five family members into the Person table in the Rails console.

✅  Retrieve all the items in the database.

✅ Add yourself to the Person table.

✅ Retrieve all the entries that have the same last_name as you.
<!-- Person.where last_name:'Ray' -->


✅Update the phone number of the last entry in the database.
<!-- Brandon = Person.last
<!-- Brandon.phone = '4179590334' -->
<!-- Brandon.save --> -
✅ Retrieve the first_name of the third Person in the database.
<!-- Third = Person.find 3
Third.first_name -->
Stretch Challenges

✅ Update all the family members with the same last_name as you, to have the same phone number as you.
Smiths = Person.where last_name: 'Smith'
Smiths.update(phone: '8675309')

✅ Remove all family members that do not have your last_name.
<!-- Person.where.not(last_name: 'Smith').destroy_all -->
DATA






Person.all
  Person Load (0.7ms)  SELECT "people".* FROM "people"
 =>                                                           
[#<Person:0x000000012817de90                                  
  id: 1,                                                      
  first_name: "Tom",                                          
  last_name: "Johnson",                                       
  phone: "3563210865",                                        
  created_at: Thu, 16 Mar 2023 18:52:18.608912000 UTC +00:00, 
  updated_at: Thu, 16 Mar 2023 18:52:18.608912000 UTC +00:00>,
 #<Person:0x000000012817dd50                                  
  id: 2,                                                      
  first_name: "Kevin",                                        
  last_name: "Hansen",                                        
  phone: "3563210856",                                        
  created_at: Thu, 16 Mar 2023 18:53:41.374217000 UTC +00:00, 
  updated_at: Thu, 16 Mar 2023 18:53:41.374217000 UTC +00:00>,
 #<Person:0x000000012817dc10
  id: 3,
  first_name: "Bob",
  last_name: "Smith",
  phone: "3563210833",
  created_at: Thu, 16 Mar 2023 18:54:24.322539000 UTC +00:00,
  updated_at: Thu, 16 Mar 2023 18:54:24.322539000 UTC +00:00>,
 #<Person:0x000000012817dad0
  id: 4,
  first_name: "Tom",
  last_name: "Frederick",
  phone: "3563210800",
  created_at: Thu, 16 Mar 2023 18:55:01.675671000 UTC +00:00,
  updated_at: Thu, 16 Mar 2023 18:55:01.675671000 UTC +00:00>,
 #<Person:0x000000012817d990
  id: 5,
  first_name: "Samuel",
  last_name: "Smith",
  phone: "3563212265",
  created_at: Thu, 16 Mar 2023 18:56:23.069528000 UTC +00:00,
  updated_at: Thu, 16 Mar 2023 18:56:23.069528000 UTC +00:00>] 