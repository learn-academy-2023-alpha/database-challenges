Set Up

Create a new Rails app named 'rolodex_challenge'.
 rails new rolodex_challenge -d postgresql -T
 cd rolodex_challenge     
Create the database. The output in the terminal should look like this:
rails db:create
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
```ruby
Person.create(first_name: 'Bart', last_name: 'Simpson', phone: '111')
Person.create(first_name: 'Marg', last_name: 'Simpson', phone: '112')
Person.create(first_name: 'Homer', last_name: 'Simpson', phone: '113')
Person.create(first_name: 'Lisa', last_name: 'Simpson', phone: '114')
 Person.create(first_name: 'Maggi', last_name: 'Simpson', phone: '115')
```
Retrieve all the items in the database.
```ruby
 Person.all
```
Add yourself to the Person table.
```ruby
Person.create(first_name: 'Yahya', last_name: 'Simpson', phone: '619-536-6964'
Person.create(first_name: 'Mike', last_name: 'Simpson', phone: '116')
```
Retrieve all the entries that have the same last_name as you.
```ruby
Person.where last_name: 'Simpson'
```
Update the phone number of the last entry in the database.
```ruby
mike = Person.find(7)
mike.update(phone:'117')
```
Retrieve the first_name of the third Person in the database.
```ruby
 Person.where(:id => 3).pluck(:first_name)
```

Stretch Challenges
Update all the family members with the same last_name as you, to have the same phone number as you.
```ruby
all = Person.all
all.update(phone: '222')
```
Remove all family members that do not have your last_name.
```ruby
Person.create(first_name: 'Borris', last_name: 'Dolittle', phone: '111')
borris = Person.find(8)
borris.destroy
```