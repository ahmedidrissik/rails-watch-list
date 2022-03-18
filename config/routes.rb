Rails.application.routes.draw do
  root to: "movies#index"
  resources :movies
  resources :lists
  resources :bookmarks

  #get "lists", to: "lists#index"
  #get "lists/new", to: "lists#new"
  #get "lists/:id", to: "lists#show", as: :list
  #post "lists", to: "lists#create"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
