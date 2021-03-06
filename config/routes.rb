Rails.application.routes.draw do
  post 'user_token' => 'user_token#create'
  get 'auth' => 'users#current'
  get 'auth/:provider/callback', to: 'sessions#create'
  delete 'sign_out', to: "sessions#destroy", as: 'sign_out'
  post '/validation/', to: 'users#validation', as: 'validation'

resources :ldap
resources :users
root 'users#index'

wash_out :wsusers


end
