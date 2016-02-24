Rails.application.routes.draw do
  resources :companies do
    get '/users/new_employee' , to: 'users#new_employee'
    get '/users/:id/new_pw', to: 'users#new_pw', :as => 'user_new_pw'
    resources :users
  end

  resources :users do
    resources :shifts
  end

  resources :sessions, only: [:new, :create, :destroy]
  get '/login', to: 'sessions#new'

  root "companies#index"
end
