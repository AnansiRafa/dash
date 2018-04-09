Rails.application.routes.draw do
  resources :posts
  resources :courses
  resources :users
<<<<<<< HEAD
  resources :conversations
  resources :messages
  resources :comments


  root to: 'users#index'
  get '/posts', to: 'posts#index'
=======
  resources :messages, only: [:new, :create]
  resources :conversations, only: [:index, :new, :show, :destroy]

  root to: 'users#index'
  get '/users', to: 'users#index'
>>>>>>> bb566236d8354958534d58bd5e079a5729f16acf
  get '/conversations', to: 'conversations#index'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/logout', to: 'sessions#destroy'
  get '/signup', to: 'users#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
