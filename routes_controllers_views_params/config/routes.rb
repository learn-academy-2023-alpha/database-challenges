Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

get '/ira' => 'home#ira'
get '/cj' => 'home#cj'
get '/landing' => 'home#landing'
root to: 'home#landing'
end
