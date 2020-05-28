Rails.application.routes.draw do
  root 'words#home'
  get '/new', to: 'words#new'
  post '/new', to: 'words#create'
  get '/index', to:'words#index'
  get '/edit', to: 'words#edit'
  put '/edit', to: 'words#update'
  resources :words
end
