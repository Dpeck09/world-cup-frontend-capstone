Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/users" => "users#index"
  get "/users/:id" => "users#show"
  post "/users" => "users#create"
  patch "/users/:id" => "users#update"
  delete "users/:id" => "users#destroy"

  post "/sessions" => "sessions#create"

  get "/games" => "games#index"


  post "/user_games" => "user_games#create"
  get "/user_games" => "user_games#index"
  get "/user_games/:id" => "user_games#show"
end
