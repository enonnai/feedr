Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'events#index'
  resources :events
  resources :profiles
  resources :users do
    resources :profiles
  end
  match :like, to: 'likes#create', as: :likes, via: [:get, :post]
end
