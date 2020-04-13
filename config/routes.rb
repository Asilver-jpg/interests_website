Rails.application.routes.draw do
  resources :tposts
  resources :ttopic_threads
  resources :sub_categories
  resources :categories
  resources :profiles
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
