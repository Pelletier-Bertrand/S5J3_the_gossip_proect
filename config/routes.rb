Rails.application.routes.draw do
  #get 'user/new'
  #get 'user/show'
  #get 'registration/new'
  post 'registrations/new', to: 'registrations#create'
  root :to => 'static_pages#home'
  resources :registrations, only: [:new, :create]
  resources :users, only: [:new, :create]
  resources :gossips do
    resources :comments
  
  end
end
