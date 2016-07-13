Rails.application.routes.draw do
  resources :tickets
  resources :comments
  resources :company_requests
  resources :login_requests
  resources :companies
  resources :users, only: [:index, :create]
  get 'users/me', controller: :users, action: :me

  devise_for :users, controllers: { sessions: 'sessions' }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
