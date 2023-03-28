Rails.application.routes.draw do
  get '/names' => 'home#names'
  get '/tran' => 'home#tran'
  get '/landing' => 'home#landing'
  get '/flores' => 'home#flores'
  root to: 'home#landing'
  
end



