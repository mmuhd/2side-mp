Rails.application.routes.draw do
  # Root/index
  root to: 'app#index'

  # User
  get 'dashboard/dashboard', to: 'dashboard#dashboard', as: 'user_dashboard'
  get 'dashboard/new_listing', to: 'dashboard#new_listing', as: 'new_listing'
  post 'dashboard/create_listing', to: 'dashboard#create_listing', as: 'create_listing'
  post 'dashboard/hide_listing/:id/:s', to: 'dashboard#hide_listing', as: 'hide_listing'
  delete 'dashboard/delete_listing/:id', to: 'dashboard#delete_listing', as: 'delete_listing'
  get 'app/profile/:id', to: 'app#profile', as: 'profile'

  # Listings
  get 'listing/show/:id', to: 'listing#show', as: 'show_id'
  get 'listing/show', to: 'listing#show', as: 'show'
  post 'listing/show', to: 'listing#show', as: 'show_search'


  # payments route
  get 'orders', to: 'orders#new', as: 'new_order'
  get 'orders/complete/:id', to: 'orders#complete', as: 'order_complete'
  get 'orders/cancel', to: 'orders#cancel', as: 'order_cancel'
  get 'orders/new'
  get 'orders/history', to: 'orders#history', as: 'orders_history'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
