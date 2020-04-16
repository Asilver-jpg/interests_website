Rails.application.routes.draw do
  resources :posts
  resources :topic_threads
  resources :sub_categories
  resources :categories
  resources :profiles
  resources :interests, only:[:new]
  
  post '/interests', to: 'interests#create', as: 'create_interest'
  
  
  post '/posts', to: 'posts#create', as: 'create_post'
  post '/interests', to: 'interests#create', as: 'interests'
  
  get '/sessions/login', to: 'sessions#new', as: 'login'
  post '/sessions', to: 'sessions#create', as: 'sessions'
  delete '/sessions', to: 'sessions#destroy'

  
  post '/search/', to: 'search#create', as: 'create_search'
  get '/search/:search_term', to: 'search#show', as: 'search_results'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
