Rails.application.routes.draw do
  get 'participants/new'
  devise_for :users
  root to: 'pages#home'
  resources :datings, only: [ :index, :new, :create] do
    resources :participants, only: [ :new, :create ]
  end
end
