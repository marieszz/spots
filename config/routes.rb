Rails.application.routes.draw do
  get 'participants/new'
  devise_for :users
  root to: 'pages#home'
  get "/startdating", to: "pages#startdating", as: "startdating"
  resources :datings, only: [ :index, :new, :create] do
    resources :participants, only: [ :new, :create ]
  end
end
