Rails.application.routes.draw do
  get 'participants/new'
  devise_for :users
  root to: 'pages#home'
  resources :usersearch, only: [:index]
  get "/startdating", to: "pages#startdating", as: "startdating"
  resources :datings, only: [ :index, :new, :create, :show ] do
    resources :participants, only: [ :new, :create ]
  end
end
