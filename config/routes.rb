Rails.application.routes.draw do
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
