Rails.application.routes.draw do
  devise_for :users
devise_scope :user do
get "/login" => "devise/sessions#new"
get "/logout" => "devise/sessions#destroy"
get "/signup" => "devise/registrations#new"
end


  resources :locations, :rooms, :fotos, :indexpages#, add: :description_of_payment
  root 'indexpages#index'
  get "description_of_payment" => "indexpages#description_of_payment"
  # get "description_of_payment", :to => redirect('layouts/description-of-payment.html')
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
