Rails.application.routes.draw do
  get '/login', to: 'users#index'
  post '/login', to: 'users#login'
  get '/logout', to: 'users#logout'
  get "/recipes/:id/add_recipe", to: 'recipes#add_recipe'
  get "/recipes/:id/delete_recipe", to: 'recipes#delete_recipe'
  resources :recipes
  resources :users
  resources :lists
  resources :list_recipes

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
