Rails.application.routes.draw do
  resources :admin_users
  root 'public#home'
  get 'public/contact'  
  resources :projects do
    resources :tasks do
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
