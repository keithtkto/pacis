Rails.application.routes.draw do
  resources :companies do
    resources :users
  end

  root "companies#index"
end
