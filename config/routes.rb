Nicetests::Application.routes.draw do

  resources :tests

  post 'results/' => 'tests#results'

  root :to => redirect('/tests')

end
