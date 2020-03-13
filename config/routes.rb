Rails.application.routes.draw do
  get 'sessions/new'
  get 'users/new'
  
 resources :pages
 resources :users 
 
 root 'pages#index'
 
 get    '/login', to: 'sessions#new'
 post   '/login', to: 'sessions#create'
 delete '/logout',to: 'sessions#destroy'
 
end

