Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/landing' => 'main#landing'
  root to: 'main#landing'
  get '/brandon' => 'main#brandon'
  get '/michael' => 'main#michael'
  get '/cubed/:number'  => 'main#cubed'
  get '/evenly/:number1/:number2' => 'main#evenly'
  get '/palindrome/:string' => 'main#palindrome'
  get '/madlib/:string1/:string2/:string3/:string4' => 'main#madlib'
end
