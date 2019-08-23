Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :islands, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
    resources :reservations, only: [:new, :create]
  end
  resources :reservations, only: [:index, :show, :destroy]
end
