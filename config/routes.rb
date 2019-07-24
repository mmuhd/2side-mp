Rails.application.routes.draw do
  root to: 'app#index'
  get 'user/dashboard', to: 'user#dashboard', as: 'user_dashboard'
  get 'app/about', to: 'app#about', as: 'about'
  get 'app/show', to: 'app#show', as: 'show'
  post 'app/show', to: 'app#show', as: 'show_with_filters'
  get 'app/listing/:id', to: 'app#listing', as: 'listing'
  get 'user/new_listing', to: 'user#new_listing', as: 'new_listing'
  post 'user/create_listing', to: 'user#create_listing', as: 'create_listing'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
