Rails.application.routes.draw do
  resources :companies do
    resources :users
  end

  resources :sessions, only: [:new, :create, :destroy]
  get '/login', to: 'sessions#new'

  root "companies#index"
end
