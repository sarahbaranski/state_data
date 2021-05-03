Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"
  namespace :api do
    get "/states", controller: "states", action: "get_states"
  end
end
