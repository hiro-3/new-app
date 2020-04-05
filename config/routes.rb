Rails.application.routes.draw do
  get 'sessions/new'
  get 'users/new'
  get '/topics/index', to: 'topics#index'
  get '/topics/new'
  delete 'topics/destroy'
  
  
 resources :pages
 resources :users
 resources :comments
 resources :votes
 resources :favorites
 
 post '/comments', to: 'comments#create'
 post '/topics', to: 'topics#create'
 
 
 
 root 'pages#index'
 
 get    '/login', to: 'sessions#new'
 post   '/login', to: 'sessions#create'
 delete '/logout',to: 'sessions#destroy'
 
 

end

