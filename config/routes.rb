Rails.application.routes.draw do
  get 'users/new'
 resources :pages
 resources :users 
 root 'pages#index'
 
end

