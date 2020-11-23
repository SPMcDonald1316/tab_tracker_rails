Rails.application.routes.draw do
  namespace :api do
    post "/users" => "users#create"

    post "/sessions" => "sessions#create"

    get "/songs" => "songs#index"
    get "/songs/:id" => "songs#show"
    post "/songs" => "songs#create"
    patch "/songs/:id" => "songs#update"
    delete "/songs/:id" => "songs#destroy"
  end
end
