Rails.application.routes.draw do
  root to: 'app#index'
  get 'user/dashboard', to: 'user#dashboard', as: 'user_dashboard'
  get 'app/about', to: 'app#about', as: 'about'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
