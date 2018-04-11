Rails.application.routes.draw do

  resources :feedbacks
  resources :courses

  resources :courses do
    resources :posts
  end
  resources :users
  resources :messages, only: [:new, :create]
  resources :conversations, only: [:index, :new, :show, :destroy]

  root to: 'users#new'
  get '/feedbacks', to: 'feedbacks#index'
  get '/courses', to: 'courses#index'
  get '/posts', to: 'posts#index'
  get '/users', to: 'users#index'
  get '/conversations', to: 'conversations#index'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/logout', to: 'sessions#destroy'
  get '/signup', to: 'users#new'
  get'/courses', to: 'courses#index'
  get 'course/post' => 'course#post'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
