Favorite Movies Challenge
Setup
Create a new Rails application called 'favorite_movies'.
Create the database
Generate a Movie model with a title attribute and a category attribute


Challenges
Add five entries to the database via the Rails console
```ruby
[#<Movie:0x0000000113c5e4c8                                  
  id: 1,                                                     
  title: "Creed III",                                        
  category: "Action",                                        
  created_at: Thu, 16 Mar 2023 22:25:07.075303000 UTC +00:00,
  updated_at: Thu, 16 Mar 2023 22:25:07.075303000 UTC +00:00>,
 #<Movie:0x0000000113c5e388                                  
  id: 2,                                                     
  title: "Avengers",                                         
  category: "Action",                                        
  created_at: Thu, 16 Mar 2023 22:28:35.842594000 UTC +00:00,
  updated_at: Thu, 16 Mar 2023 22:28:35.842594000 UTC +00:00>,
 #<Movie:0x0000000113c5e248                                  
  id: 3,
  title: "Luther",
  category: "Drama",
  created_at: Thu, 16 Mar 2023 22:29:09.870530000 UTC +00:00,
  updated_at: Thu, 16 Mar 2023 22:29:09.870530000 UTC +00:00>,
 #<Movie:0x0000000113c5e108
  id: 4,
  title: "Jo Koy Coming In Hot",
  category: "Comedy",
  created_at: Thu, 16 Mar 2023 22:30:33.391015000 UTC +00:00,
  updated_at: Thu, 16 Mar 2023 22:30:33.391015000 UTC +00:00>,
 #<Movie:0x0000000113c5dfc8
  id: 5,
  title: "From Scratch",
  category: "Romance",
  created_at: Thu, 16 Mar 2023 22:31:07.713552000 UTC +00:00,
  updated_at: Thu, 16 Mar 2023 22:31:07.713552000 UTC +00:00>] 
```
Create a migration to add a new column to the database called movie_length
<!-- add_fieldname_to_tablename fieldname:string. -->
```ruby
rails g migration add_column_movie_length_to_movie
```

Update the values of the five existing attributes to include a movie_length value
```ruby
[#<Movie:0x00000001098089a0                                                                              
  id: 1,                                                                                                 
  title: "Creed III",                                                                                    
  category: "Action",                                                                                    
  created_at: Thu, 16 Mar 2023 22:25:07.075303000 UTC +00:00,                                            
  updated_at: Fri, 17 Mar 2023 16:31:23.188918000 UTC +00:00,                                            
  movie_length: "2 hours 12 min">,                                                                       
 #<Movie:0x0000000109808860                                  
  id: 2,                                                     
  title: "Avengers",                                         
  category: "Action",                                        
  created_at: Thu, 16 Mar 2023 22:28:35.842594000 UTC +00:00,
  updated_at: Fri, 17 Mar 2023 16:32:30.608522000 UTC +00:00,
  movie_length: "2 hours 30 min">,
 #<Movie:0x0000000109808720
  id: 3,
  title: "Luther",
  category: "Drama",
  created_at: Thu, 16 Mar 2023 22:29:09.870530000 UTC +00:00,
  updated_at: Fri, 17 Mar 2023 16:33:17.212229000 UTC +00:00,
  movie_length: "2 hour 10 min">,
 #<Movie:0x00000001098085e0
  id: 4,
  title: "Jo Koy Coming In Hot",
  category: "Comedy",
  created_at: Thu, 16 Mar 2023 22:30:33.391015000 UTC +00:00,
  updated_at: Fri, 17 Mar 2023 16:34:18.020173000 UTC +00:00,
  movie_length: "60min">,
 #<Movie:0x00000001098084a0
  id: 5,
  title: "From Scratch",
  category: "Romance",
  created_at: Thu, 16 Mar 2023 22:31:07.713552000 UTC +00:00,
  updated_at: Fri, 17 Mar 2023 16:34:59.097881000 UTC +00:00,
  movie_length: "50 min">] 
```

Generate a migration to rename the column 'category' to 'genre'
```ruby
`$ rails g migration 
`$ change_name_of_category_to_genre

class ChangeNameOfCategoryToGenre < ActiveRecord::Migration[7.0]
  def change
    rename_column :movies, :category, :genre 
  end
end
```

