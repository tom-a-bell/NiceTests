Nicetests::Application.routes.draw do

  resources :tests

  get 'results/' => 'tests#results'

  root :to => redirect('/tests')

end
