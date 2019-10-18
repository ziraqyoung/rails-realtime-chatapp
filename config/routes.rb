Rails.application.routes.draw do
  devise_for :users
  root to: 'rooms#index'
  resources :room_messages
  resources :rooms
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
