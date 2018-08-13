Rails.application.routes.draw do
  devise_for :users
  resources :categories
  resources :articles do
    resources :histories
  end
  
  root 'home#index'
end
