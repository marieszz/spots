Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :usersearch, only: [:index]
  get "/startdating", to: "pages#startdating", as: "startdating"

  resources :datings, only: [ :index, :new, :create, :show ] do
    resources :participants, only: [ :new, :create ]
    resources :suggestions, only: [ :index ]
  end

  resources :bars, only: [ :index ]

  get "/storytime", to: "pages#storytime", as: "storytime"
  get "/about-us", to: "pages#aboutus", as: "aboutus"
  get "/contact-us", to: "pages#contactus", as: "contactus"
  get "/comingsoon", to: "pages#comingsoon", as: "comingsoon"

  resources :contacts, only: [ :new, :create ]

end
