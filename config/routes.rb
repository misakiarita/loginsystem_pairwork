Rails.application.routes.draw do
  resources :sessions, only: [:new, :create, :destroy]
  resources :blogs
  root to: 'blogs#index'
  resources :users, only: [:new, :create, :show]
  resources :favorites, only: [:create, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
