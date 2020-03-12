Rails.application.routes.draw do
  get 'users/new'
 resources :pages
  
 root 'pages#index'
 
end

