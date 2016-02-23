Rails.application.routes.draw do
  resources :companies do
    get '/users/new_employee' , to: 'users#new_employee'
    resources :users
  end



  resources :sessions, only: [:new, :create, :destroy]
  get '/login', to: 'sessions#new'

  root "companies#index"
end
