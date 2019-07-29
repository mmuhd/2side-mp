Rails.application.routes.draw do
  get 'orders/new'
  root to: 'app#index'
  get 'dashboard/dashboard', to: 'dashboard#dashboard', as: 'user_dashboard'
  get 'app/about', to: 'app#about', as: 'about'
  get 'app/show', to: 'app#show', as: 'show'
  post 'app/show', to: 'app#show', as: 'show_search'
  get 'app/listing/:id', to: 'app#listing', as: 'listing'
  get 'dashboard/new_listing', to: 'dashboard#new_listing', as: 'new_listing'
  post 'dashboard/create_listing', to: 'dashboard#create_listing', as: 'create_listing'
  delete 'dashboard/delete_listing/:id', to: 'dashboard#delete_listing', as: 'delete_listing'
  devise_for :users
  # payments route
  get "orders", to: "orders#new", as: "new_order"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
