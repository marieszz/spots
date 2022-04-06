Rails.application.routes.draw do
  get 'users/index'
  get 'participants/new'
  devise_for :users
  root to: 'pages#home'
  get "/startdating", to: "pages#startdating", as: "startdating"
  match '/users', to: 'users#index', via: 'get'
  resources :datings, only: [ :index, :new, :create, :show ] do
    resources :participants, only: [ :new, :create ]
  end
end
