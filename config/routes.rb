Rails.application.routes.draw do
  resources :locations
  resources :rooms
  resources :fotos
  resources :indexpages
  root 'indexpages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
