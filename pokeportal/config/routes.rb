Rails.application.routes.draw do
  devise_for :trainers
  root to: "home#index"
  resources :trainers
  patch '/capture', to: 'pokemons#capture'
  patch '/damage', to: 'pokemons#damage'
  patch '/heal', to: 'pokemons#heal'
  get '/new', to: 'pokemons#new'
  post '/create', to: 'pokemons#create'
end
