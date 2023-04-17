Rails.application.routes.draw do
  root to: 'landing#landing'
  get '/landing' => 'landing#landing'
  get '/marilyn' => 'landing#marilyn'
  get '/chris' => 'landing#chris'

  get '/cubed/:num' => 'cubed#cubed'
  get '/evenly' => 'evenly#check_numbers'
  get '/palindrome/:string' => 'palindrome#palindrome'
  get '/madlib' => 'madlib#madlib'
end
