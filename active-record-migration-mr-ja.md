Favorite Movies Challenge
Setup
Create a new Rails application called 'favorite_movies'.
Create the database
Generate a Movie model with a title attribute and a category attribute

Challenges
Add five entries to the database via the Rails console
Movie.create(title: 'Interstellar', category: 'SciFi')
Movie.create(title: 'Gladiator', category: 'Action)
Movie.create(title: '300', category: 'Action')
Movie.create(title: 'Braveheart', category: 'Action')
Movie.create(title: 'Scream 6', category: 'Horror')

Create a migration to add a new column to the database called movie_length
rails g migration movie_length_to_movie
rails db:migrate

Update the values of the five existing attributes to include a movie_length value
movie1 = Movie.find(1)
movie1.update(movie_length: '1 hour')
movie2 = Movie.find(2)
movie2.update(movie_length: '1 hour 30 mins')
movie3 = Movie.find(3)
movie3.update(movie_length: '1 hour 50 mins')
movie4 = Movie.find(4)
movie4.update(movie_length: '2 hours')
movie5 = Movie.find(5)
movie5.update(movie_length: '2 hours 10 mins')

Generate a migration to rename the column 'category' to 'genre'
rails g migration change_column_name_to_movie
rails db:migrate