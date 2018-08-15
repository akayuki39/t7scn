Rails.application.routes.draw do
  devise_for :users
  resources :categories
  resources :articles do
    resources :histories
  end
  # resources :users, only: [:index, :show]
  
  root 'home#index'
end
