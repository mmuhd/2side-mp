Rails.application.routes.draw do
  devise_for :users
  root to: 'app#index'
  get 'user/dashboard', to: 'user#dashboard', as: 'user_dashboard'
  get 'app/about', to: 'app#about', as: 'about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
