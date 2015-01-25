Nicetests::Application.routes.draw do

  resources :tests, :operations

  get 'specialties/' => 'operations#specialties'

  post 'results/' => 'tests#results'

  root :to => redirect('/tests')

end
