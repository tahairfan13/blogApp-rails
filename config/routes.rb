Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "posts#index"
  resources :posts, except: [:index]

  get '/signup', to: 'users#new'
  resources :users, except: [:new]


  get    "/login"  ,to: "sessions#new" #session#new will send a POST request
  post   "/login"  ,to: "sessions#create"
  delete "/logout" ,to: "sessions#destroy"

  get    "category/:id"  ,to: "categories#show" ,as:"categories"

  resources :posts do # bcz we want comments to be created from posts
    resources :comments, only: [:create,:destroy]
  end

  get    "post/:id",to: "posts#like" ,as: "like"


end
