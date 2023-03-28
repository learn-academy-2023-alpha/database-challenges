Rails.application.routes.draw do
  root to: 'landing#landing'
  get '/landing' => 'landing#landing'
  get '/marilyn' => 'landing#marilyn'
  get '/chris' => 'landing#chris'
end
