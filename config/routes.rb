Rails.application.routes.draw do
  root 'words#home'
  get '/new', to: 'words#new'
  get '/index', to:'words#index'

end
