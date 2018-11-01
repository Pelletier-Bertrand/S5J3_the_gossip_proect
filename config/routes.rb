Rails.application.routes.draw do
  root :to => 'static_pages#home'
  #resources :gossips
  resources :gossips do
    resources :comments
  end
end
