Rails.application.routes.draw do
  resources :categories
  resources :articles
  
  root 'home#index'
end
