Rails.application.routes.draw do

  get '/landing' => 'main#landing'
  root to: 'main#landing'
  get '/simon' => 'main#simon'
  get '/josh' => 'main#josh'
end
