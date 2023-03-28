Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: 'main#lander'
  get '/lander' => 'main#lander'
  get '/yahya' => 'main#yahya'
  get '/aaron' => 'main#aaron'
end
