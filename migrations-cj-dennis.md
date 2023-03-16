Setup
Create a new Rails application called 'favorite_movies'.

$ rails new favorite_movies -d postgresql -T

Create the database

$ cd favorite_movies
rails db:create

Generate a Movie model with a title attribute and a category attribute

$ rails generate model Movie title:string category:string
$ rails db:migrate

Challenges

Add five entries to the database via the Rails console
$ rails c
3.2.0 :002 > Movie.create(title:'Hacksaw Ridge', category:'War')
3.2.0 :003 > Movie.create(title:'Finding Nemo', category:'family')
3.2.0 :004 > Movie.create(title:'Star Wars: Episode 3: Revenge of the Sith', category:'Science Fiction')
3.2.0 :005 > Movie.create(title:'Babadook',category:'Horror')
3.2.0 :006 > Movie.create(title:'Happy Gilmore', category:'Comedy')

Create a migration to add a new column to the database called movie_length

$ rails g migration movie_length

Update the values of the five existing attributes to include a movie_length value
hacksaw = Movie.find(1)
hacksaw.movie_length = '120 Minutes'
hacksaw.save

nemo = Movie.find(2)
nemo.movie_length = '139 Minutes'
nemo.save

star = Movie.find(3)
star.movie_length = '146 Minutes'
star.save

baba = Movie.find(4)
baba.movie_length = '127 Minutes'
baba.save

happy = Movie.find(5)
happy.movie_length = '119 Minutes'
happy.save

Generate a migration to rename the column 'category' to 'genre'

$ rails g migration change_category_to_genre
