Rails.application.routes.draw do
  root "main#index"
  get '/cities/view'
  get '/cities/new', to: 'cities#create'
  get '/cities/update'
  post '/cities/create', to: 'cities#view'
  post '/cities/update', to: 'cities#view'
end
