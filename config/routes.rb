Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "public#homepage"

  devise_for :accounts
  get '/dashboard', to: "accounts#index"
  get '/profile/:username', to: "accounts#profile", as: :profile

  resources :posts, only: [:new, :create, :show]
end
