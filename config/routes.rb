Rails.application.routes.draw do
  # get 'orders/index'
  # get 'orders/new'
  # get 'orders/create'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :restaurants, only: [:index, :show, :new, :create] do
    resources :dishes, only:[:create, :new]
    resources :orders, only: [:new, :create, :show]
    
  end
  resources :orders, only: [:index, :show]
  resources :dishes, only: :show do 
    resources :wines, only: [:new, :create]
  end
end
