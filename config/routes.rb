Rails.application.routes.draw do
  resources :categories
  resources :articles do
    resources :histories
  end
  
  root 'home#index'
end
