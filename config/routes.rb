Rails.application.routes.draw do
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # NEW
  get '/posts/new', to: "posts#new", as: "new_post"
  # INDEX
  get '/posts', to: "posts#index"
  #CREATE
  post '/posts', to: "posts#create"
  #SHOW
  get '/posts/:id', to: "posts#show"
end
