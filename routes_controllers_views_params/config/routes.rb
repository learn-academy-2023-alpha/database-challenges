Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

get '/ira' => 'home#ira'
get '/cj' => 'home#cj'
get '/landing' => 'home#landing'
get '/cubed/:number' => 'home#cubed'
get '/evenly/:number1/:number2' => 'home#evenly'
get '/palindrome/:word' => 'home#palindrome'
get '/madlib/:noun/:verb/:adjective/:adverb' => 'home#madlib'
root to: 'home#landing'
end
