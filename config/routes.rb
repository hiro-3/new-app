Rails.application.routes.draw do
  get 'topics/new'
  get 'topics/index'
  get 'sessions/new'
  get 'users/new'
  delete 'topics/destroy'
  
 resources :pages
 resources :users 
 resources :topics
 resources :comments
 
  post '/comments', to: 'comments#create'
 
 
 get 'favorites/index'
 post '/favorites', to: 'favorites#create'
 get 'favorites/new', to: 'favorites#new'
 
 root 'pages#index'
 
 get    '/login', to: 'sessions#new'
 post   '/login', to: 'sessions#create'
 delete '/logout',to: 'sessions#destroy'
 
end

