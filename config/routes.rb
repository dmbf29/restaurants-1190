Rails.application.routes.draw do
  # verb '/path', to: 'controller#action', as: :prefix
  resources :restaurants do
    resources :reviews, only: [:new, :create]
  end
  resources :reviews, only: [:destroy]
end
# get '/restaurants/top', to: 'restaurants#top', as: :top_restaurants
# get '/restaurants/:id/chef', to: 'restaurants#chef', as: :chef_restaurant
# get '/books', to: 'books#index', as: :books
# get '/games', to: 'games#index', as: :games


# collection -> has to do with ALL restaurants (aka no ID)
# member -> has to do with ONE specific restaurant (aka need ID)
# do
# collection do
#   get :top
# end
# member do
#   get :chef
# end
# end
