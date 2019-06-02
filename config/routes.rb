Rails.application.routes.draw do
  post '/auth/login', to: 'authentication#login'
  resources :users, only: [:new, :create, :index, :show]
end
