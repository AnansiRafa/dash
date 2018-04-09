Rails.application.routes.draw do
  resources :posts
  resources :courses
  resources :users
  resources :conversations
  resources :messages
  resources :comments


  root to: 'users#index'
  get '/posts', to: 'posts#index'
  get '/conversations', to: 'conversations#index'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/logout', to: 'sessions#destroy'
  get '/signup', to: 'users#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
