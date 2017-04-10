Rails.application.routes.draw do
  get 'private/login'
  
  post 'private/login', :to => 'private#attempt_login'
  post 'private/logout'
  
  get 'private/main'

  get 'private/projects'

  get 'private/public'

  root 'public#home'
  get 'public/contact'  

  
  resources :admin_users  
  resources :projects do
    resources :tasks
  end
  resources :articles
  resources :messages

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
