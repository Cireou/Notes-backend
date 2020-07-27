Rails.application.routes.draw do
  resources :user_shared_topics
  resources :sections
  #Custom routing for users based on JSON token submitted.
  post 'users', to: 'users#create'
  get 'users', to: 'users#show'
  patch 'users', to: 'users#update'
  delete 'users', to: 'users#destroy'

  resources :topics, except: :index
  post 'authenticate', to: 'authentication#authenticate'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
