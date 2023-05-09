Rails.application.routes.draw do
  # verb '/path', to: 'controller#action', as: :prefix
  # prefix ONLY refers to the path (not the http verb)
  # restaurants_path
  # restaurants_path, method: :post

  # CRUD
  # Create
  # we need a page for the form
  get '/restaurants/new', to: 'restaurants#new', as: :new_restaurant
  post '/restaurants', to: 'restaurants#create', as: :restaurants

  # Read all
  get '/restaurants', to: 'restaurants#index'

  # Read one (need the id)
  # add :id inside of our params
  get '/restaurants/:id', to: 'restaurants#show', as: :restaurant

  # Update
  get '/restaurants/:id/edit', to: 'restaurants#edit', as: :edit_restaurant
  patch '/restaurants/:id', to: 'restaurants#update'

  # Destroy
  delete '/restaurants/:id', to: 'restaurants#destroy'

  # To build all 7 routes (CANT USE TODAY)
  # resources :restaurants
end
# get '/books', to: 'books#index', as: :books
# get '/games', to: 'games#index', as: :games
