Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: 'main#lander'
  get '/lander' => 'main#lander'
  get '/yahya' => 'main#yahya'
  get '/aaron' => 'main#aaron'
  get '/cubed' => 'main#cubed'
  get '/evenly' => 'main#evenly'
  get '/palindrome' => 'main#palindrome'
  get '/madlib' => 'main#madlib'
  get '/evenly_button' => 'main#evenly_button'
end
