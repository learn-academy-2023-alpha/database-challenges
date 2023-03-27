# Set Up

* Create a new Rails app named 'rolodex_challenge'.
* Create the database. The output in the terminal should look like this:
* Created database 'rolodex_development'
* Created database 'rolodex_test'
* Generate a model called Person with a first_name, last_name, and phone. All fields should be strings.
* Run a migration to set up the database.
* Open up Rails console.

# Actions

* Add five family members into the Person table in the Rails console.

```console
Person.create first_name: 'John', last_name: 'Doe', phone: '555-1111'
Person.create first_name: 'John', last_name: 'Eel', phone: '555-2222'
Person.create first_name: 'Jane', last_name: 'Doe', phone: '555-3333'
Person.create first_name: 'Hancock', last_name: 'Hammer', phone: '555-4444'
Person.create first_name: 'Willa', last_name: 'Hammer', phone: '555-5555'
```

* Retrieve all the items in the database.

```console
entries = Person.all
```

* Add yourself to the Person table.

```console
Person.create first_name: 'Jacob', last_name: 'Ross', phone: '804-244-8407'
Person.create first_name: 'Chris', last_name: 'Aument', phone: '847-309-8458'
```

* Retrieve all the entries that have the same last_name as you.

```console
anon = Person.where(last_name: 'Doe')
```

* Update the phone number of the last entry in the database.

```console
anon = Person.last
anon.phone = '555-0000'
anon.save
```

* Retrieve the first_name of the third Person in the database.

```console
anon = Person.id(3).first_name
```

# Stretch Challenges

* Update all the family members with the same last_name as you, to have the same phone number as you.

```console
doe_family = Person.where(last_name: 'Doe')
doe_family.map{|person| person[:phone] = '555-1111'}
doe_family.map{|person| person.save}
```

* Remove all family members that do not have your last_name.
    * Originally attempted to use .map with a nested conditional statement to call .destroy where last_name was not 'Ross' or 'Aument'. This was failing due to a syntax error, so instead we used the .selet method on the array.

```console
slate_removal = Person.all
delete_these = slate_removal.select{|person| person[:last_name] != 'Ross' && person[:last_name] != 'Aument'}
delete_these.map{|person| person.destroy}
```



Fav movies---------

Create a new Rails application called 'favorite_movies'.
<!-- rails new favorite_movie -d postgresql -T -->
Create the database

<!-- favorite_movie % rails db: create   -->

Generate a Movie model with a title attribute and a category attribute
<!-- favorite_movie % rails db:migrate -->

Challenges


Add five entries to the database via the Rails console

Movie.create title:"name of movie", catagory:"Type of movie" do this five times 

Create a migration to add a new column to the database called movie_length
favorite_movie % rails g migration add_movie_length_string


Update the values of the five existing attributes to include a movie_length value
entries= Movie.all 
entries.map{|movie|movie.movie_length = '2:00' }
entries.map{|movie|movie.save}

Generate a migration to rename the column 'category' to 'genre'
rails g migration change_catagory_to_genre
updated the migration ruby file 
using thsi (rename_column :movies, :catagory, :genre)
ran db:migrate