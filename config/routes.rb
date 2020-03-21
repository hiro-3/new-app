Rails.application.routes.draw do
  get 'topics/new'
  get 'topics/index'
  get 'sessions/new'
  get 'users/new'
  delete 'topics/destroy'
  
 resources :pages
 resources :users 
 resources :topics
 
 get 'favorites/index'
 post '/favorites', to: 'favorites#create'
 get 'favorites/new', to: 'favorites#new'
 
 get 'favorites1/index'
 post '/favorites1', to: 'favorites1#create'
 get 'favorites1/new', to: 'favorites1#new'
 
 get 'favorites2/index'
 post '/favorites2', to: 'favorites2#create'
 get 'favorites2/new', to: 'favorites2#new'
 
 
 root 'pages#index'
 
 get    '/login', to: 'sessions#new'
 post   '/login', to: 'sessions#create'
 delete '/logout',to: 'sessions#destroy'
 
end

