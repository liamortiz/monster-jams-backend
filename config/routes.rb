Rails.application.routes.draw do
  resources :bands
  resources :sounds
  resources :playlists
  resources :users
  resources :monsters
  
  resources :auth, only: [:create]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
