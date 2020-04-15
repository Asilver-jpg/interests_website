Rails.application.routes.draw do
  resources :interests
  resources :posts
  resources :topic_threads
  resources :sub_categories
  resources :categories
  
  
  post 'interests', to: 'interests#create', as: 'interests'
  get '/sessions/login', to: 'sessions#new', as: 'login'
  post '/sessions', to: 'sessions#create', as: 'sessions'
  delete '/sessions', to: 'sessions#destroy'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
