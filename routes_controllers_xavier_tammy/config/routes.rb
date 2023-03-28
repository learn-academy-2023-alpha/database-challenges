Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/landing' => 'home#landing'
  root to: 'home#landing'
  get '/xavier' => 'home#xavier'
  get '/tammy' => 'home#tammy'
  get '/cubed/:number' => 'home#cubed'
  get '/evenly/:number1/:number2' => 'home#evenly'
  get '/palindrome/:string' => 'home#palindrome'
  get '/madlib/:noun/:verb/:adjective/:adverb' => 'home#madlib'
end
