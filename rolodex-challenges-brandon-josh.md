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
<!-- Person.where.not(last_name: 'Smith').delete_all -->