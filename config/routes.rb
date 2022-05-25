Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root to: 'pages#home'

  resources :users, only: [ :index ]

  resources :datings, only: [ :index, :new, :create, :show ] do
    resources :participants, only: [ :new, :create ]
    resources :suggestions, only: [ :index ]
  end

  resources :bars, only: [ :index, :show ]

  get "/startdating", to: "pages#startdating", as: "startdating"
  get "/storytime", to: "pages#storytime", as: "storytime"
  get "/about-us", to: "pages#aboutus", as: "aboutus"
  get "/comingsoon", to: "pages#comingsoon", as: "comingsoon"

  resources :contacts, only: [ :new, :create ]
end
