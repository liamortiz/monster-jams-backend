Rails.application.routes.draw do
  resources :playlists
  resources :users
  resources :auth, only: [:create]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
