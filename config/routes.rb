Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end

  namespace :api do
    post "/users" => "users#create"
    post "/sessions" => "sessions#create"

    get "/songs" => "songs#index"
    get "/songs/:id" => "songs#show"
  end
end
