Add five entries to the database via the Rails console

```ruby
[#<Movie:0x000000010f56e388                                      
  id: 1,                                                         
  title: "Tangled",                                              
  category: "adventure",                                         
  created_at: Fri, 17 Mar 2023 16:34:02.321357000 UTC +00:00,    
  updated_at: Fri, 17 Mar 2023 16:34:02.321357000 UTC +00:00>,   
 #<Movie:0x000000010f56e248                                      
  id: 2,                                                         
  title: "Get Out",                                              
  category: "thriller",                                          
  created_at: Fri, 17 Mar 2023 16:34:21.666107000 UTC +00:00,    
  updated_at: Fri, 17 Mar 2023 16:34:21.666107000 UTC +00:00>,
 #<Movie:0x000000010f56e108                                  
  id: 3,
  title: "Lord of the Rings",
  category: "fantasy",
  created_at: Fri, 17 Mar 2023 16:34:44.107864000 UTC +00:00,
  updated_at: Fri, 17 Mar 2023 16:34:44.107864000 UTC +00:00>,
 #<Movie:0x000000010f56dfc8
  id: 4,
  title: "Harry Potter",
  category: "fantasy",
  created_at: Fri, 17 Mar 2023 16:35:00.454782000 UTC +00:00,
  updated_at: Fri, 17 Mar 2023 16:35:00.454782000 UTC +00:00>,
 #<Movie:0x000000010f56de88
  id: 5,
  title: "Star Wars",
  category: "sci-fi",
  created_at: Fri, 17 Mar 2023 16:35:14.984393000 UTC +00:00,
  updated_at: Fri, 17 Mar 2023 16:35:14.984393000 UTC +00:00>] 
```

Create a migration to add a new column to the database called movie_length

Update the values of the five existing attributes to include a movie_length value

```ruby 
#<Movie:0x000000010a32b620                                                      
 id: 1,                                                                         
 title: "Tangled",                                                              
 category: "adventure",                                                         
 created_at: Fri, 17 Mar 2023 16:34:02.321357000 UTC +00:00,                    
 updated_at: Fri, 17 Mar 2023 16:44:40.736394000 UTC +00:00,                    
 movie_length: 2>  
```

Generate a migration to rename the column 'category' to 'genre'