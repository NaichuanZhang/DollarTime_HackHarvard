Rails.application.routes.draw do
  resources :income_logs
  root 'greetings#hello'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#	get '/welcome'
  match 'auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  match 'auth/failure', to: redirect('/'), via: [:get, :post]
  match 'signout', to: 'sessions#destroy', as: 'signout', via: [:get, :post]
end
