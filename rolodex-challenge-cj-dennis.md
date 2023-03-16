Challenge: Rolodex
As a developer, I have been tasked with creating a database model that will be used in a rolodex

application. I want to ensure that the database behaves as expected and the necessary actions can be performed on the database instances.

Set Up

Create a new Rails app named 'rolodex_challenge'.

rails db:create
Created database 'rolodex_challenge_development'
Created database 'rolodex_challenge_test'

Create the database. The output in the terminal should look like this:
Created database 'rolodex_development'
Created database 'rolodex_test'

Generate a model called Person with a first_name, last_name, and phone. All fields should be strings.

rails generate model Person first_name:string last_name:string phone:string

Run a migration to set up the database.

rails db:migrate

Open up Rails console.

rails c

Actions

Add five family members into the Person table in the Rails console.
Add yourself to the Person table.

Person.create(first_name: 'Dennis', last_name:'Tran', phone:'911')
Person.create(first_name: 'Dennis', last_name:'Tran', phone:'911')
Person.create(first_name: 'CJ', last_name:'Norris', phone:'911')
Person.create(first_name: 'Elizabeth', last_name:'Queen', phone:'911')
Person.create(first_name: 'James', last_name:'Bond', phone:'007')

Retrieve all the items in the database.
Person.all

Retrieve all the entries that have the same last_name as you.
3.2.0 :008 > Person.where(last_name:'Tran')

Update the phone number of the last entry in the database.
3.2.0 :009 > last_number=Person.find(5)
3.2.0 :011 > last_number.update(phone:'876530')
Retrieve the first_name of the third Person in the database.
3.2.0 :013 > Person.third(first_name)
Stretch Challenges

Update all the family members with the same last_name as you, to have the same phone number as you.
3.2.0 :017 > same_last_name=Person.where last_name:'Tran'
3.2.0 :018 > same_last_name.update(phone:'12345')

Remove all family members that do not have your last_name.

3.2.0 :003 > not_last_name=Person.where.not(last_name:'Tran')
3.2.0 :006 > not_last_name.destroy_all
