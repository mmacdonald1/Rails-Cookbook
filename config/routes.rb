Rails.application.routes.draw do
  get '/login', to: 'users#index'
  post '/login', to: 'users#login'
  get '/logout', to: 'users#logout'
  resources :recipes
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
