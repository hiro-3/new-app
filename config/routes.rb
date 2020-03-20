Rails.application.routes.draw do
  get 'topics/new'
  get 'topics/index'
  get 'sessions/new'
  get 'users/new'
  delete 'topics/destroy'
  
 resources :pages
 resources :users 
 resources :topics

 
 root 'pages#index'
 
 get    '/login', to: 'sessions#new'
 post   '/login', to: 'sessions#create'
 delete '/logout',to: 'sessions#destroy'
 
end

