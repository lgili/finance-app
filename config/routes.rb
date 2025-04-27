Rails.application.routes.draw do
  devise_for :users
  resources :transactions, only: [:index, :new, :create]
  resource :setup, only: [:show, :update]
  get 'dashboard', to: 'dashboard#index'
  root to: "home#index"
end
