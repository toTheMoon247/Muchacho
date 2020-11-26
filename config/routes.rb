Rails.application.routes.draw do
  get 'orders/index'
  get 'orders/new'
  get 'orders/create'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :restaurants, only: [:index, :show, :new, :create] do
    resources :orders, only: [:new, :create, :show]
    resources :wines, only: [:new, :create]
  end
  resources :orders, only: :index
end
