Rails.application.routes.draw do
  devise_for :users

  root controller: :rooms, action: :index

  resources :room_messages
  resources :rooms

  devise_scope :user do
    match 'users/signout', to: 'devise/sessions#destroy',  via: 'get'
  end
end
