Rails.application.routes.draw do
  root to: 'sessions#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  destroy '/login', to: 'sessions#destroy'

  get '/secrets', to: 'secrets#show'
end
