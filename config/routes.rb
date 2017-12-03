Rails.application.routes.draw do
  devise_for :users
devise_scope :user do
get "/login" => "devise/sessions#new"
get "/logout" => "devise/sessions#destroy"
get "/signup" => "devise/registrations#new"
end


  resources :locations
  resources :rooms
  resources :fotos
  resources :indexpages
  root 'indexpages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
