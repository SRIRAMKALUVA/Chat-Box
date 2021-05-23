Rails.application.routes.draw do
  get 'urls/index'
  get 'urls/new'
  devise_for :users
  resources :urls, only: [:index, :new, :create, :show]
  root controller: :rooms, action: :index

  resources :room_messages
  resources :rooms

  devise_scope :user do
    match 'users/signout', to: 'devise/sessions#destroy',  via: 'get'
  end
end
