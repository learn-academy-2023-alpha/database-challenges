Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/cubed/:number' => 'numbers#cubed' 
  get '/divisible/:number1/:number2' => 'numbers#is_divisible_by'
  get '/palindrome/:word_string' => 'numbers#palindrome'
  get '/madlib/:noun/:verb/:adjective/:adverb' => 'numbers#madlib'
end




